# Getting Started

To use Magma, first download and install the code. Then you may decide
in what mode would your magma be running and follow these steps:

## If Running in Server/Client Mode

1. create a repository
2. start the server
2. open a session 


## Step 1: Creating a repository
To create a repository, you must provide two things:

    a path to the directory magma may use to keep and maintain its files
    the root object of the repository 


Magma maintains a single directory on the filesystem for each
repository. When creating or opening Magma repositories, specify a
directory in which it may create its various files.

You should also provide the root object of the repository. This is the
root of your domain object in the domain is referenced.

The code, thus:

```smalltalk
  MagmaRepositoryController
    create: 'c:\myMagmaFolder'
    root: MyGrandDomainObject new
```

## Step 2: Starting the server

Magma utilizes TCP/IP for its network communications. To enable
multi-user access to a Magma repository, you may start the Magma
server in its own image and inspect the following:

```smalltalk
  MagmaServerConsole new
    open: 'c:\myMagmaFolder' ;
    processOn: 51001
```

Be sure to inspect this so you will have access to console commands, such as `#shutdown`.

### Explanation: About MagmaLocations

Before opening a session, it is helpful to know about `MagmaLocation`
and its two subclasses, `MagmaRemoteLocation` and `MagmaLocalLocation`.

These are simply "bookmarks" to a Magma server. An actual `MagmaSession`
can be instantiated from them by sending `#newSession`. Therefore, to
create a session:

```smalltalk
  mySession := (MagmaRemoteLocation host: 'localhost' port: 51000) newSession.
  mySession connectAs: ...
```

`MagmaLocations` are the objects recommended to be used by applications
rather than hard-coded host names, ports or path names. That way the
scale of Magma can be switched from local to remote with no change in
the application code.


### Explanation: Open a MagmaSession

Once the server is running, a `MagmaSession` can be connected from the
same or another image to gain access and change objects in the
repository. Connecting a session requires the following information:

> a name to identify your session. When someone tries to overlay
> changes you've made to objects, they will be notified that those
> objects were changed by your session, identified by the name you
> provide.  the IP address of the machine hosting the Magma
> repository, and the port it is listening on.

```smalltalk
  | mySession |
  mySession := 
    (MagmaRemoteLocation
      host: 'localhost'
      port: 51001) newSession.
  mySession connectAs: 'chris'
```

If you run this from a Workspace, be sure to inspect the result so you
will be able to properly disconnect from the server.

Once connected, changes to the persistent model are committed through
transactions.

```smalltalk
  mySession commit: 
    [ mySession root
      at: 'persons'
      put: (OrderedCollection with: (Person name: 'Paula')) ]
```

While your session is connected, you may force a refresh of your view
of the persistent domain model with the #refresh message:

```smalltalk
  mySession refresh
```

With `#refresh`, your own changes are kept although you may discover an
object you are working on has already been changed by someone else. To
refresh all objects to the repository state, including your own
changes, the `#abort` message instead.

You can access the root of the repository later and navigate from there.

```smalltalk
  mySession root at: 'persons'
```

To minimize conflicts it is recommended that transactions begin just
before you make changes, and commit immediately after. A refresh just
before a commit may be helpful as well. But CommitConflicts can occur
nonetheless.

Once you're done using the session, you should disconnect it:

```smalltalk
  mySession disconnect
```

# Single-user mode

If you know will be operating in a single-user environment, starting a
second image to run the server may not always be
convenient.

Thankfully, Magma supports a "direct-connect" single-user
mode, where a single Magma session connects directly to the repository
in one image. This offers a performance benefit for a single-user
because requests and responses are not serialized over the network.

To run in single-user mode, you do not need to use `MagmaServerConsole`.

Instead, you must specify the name of the magma directory when opening
a `MagmaSession` instead of the IP and port.

```smalltalk
  myMagmaSession := MagmaSession openLocal: 'c:\myMagmaFolder\myRepository'.
  myMagmaSession connectAs: 'chris'
```

Additionally, when you're ready to disconnect your last session, you
also should use #disconnectAndClose instead of #disconnect:

```smalltalk
  myMagmaSession disconnectAndClose
```

The repository can then be opened again in _single_ or _multi-user_ mode.


# Explanation: Objects are persisted by reachability

With object databases, there is no notion of, "inserting objects into
the database".

Instead, you merely attach new objects to persistent
ones and commit. All directly or indirectly referenced objects from
any persistent object are automatically detected and saved into the
database.
