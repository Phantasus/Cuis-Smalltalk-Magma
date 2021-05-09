# What is meant by transparent access?

Transparency refers to the ability for the application to maintain a
pure domain code free from the concerns of presentation or
persistence, and is the primary purpose of Magma's existence. There is
no need for applications to mark objects dirty, no code-generation, no
attribute-column mapping.

Developers are free to implement complex object models with
impunity. Domain code remains pure, and independent of storage.


# Read Transparency

Beyond the initial request for the #root object of the repository from
a MagmaSession, your application program is free to explore that
persistent root object normally; e.g., by sending messages. Although
the size of the persistent root may be many times the size of
available RAM, Magma will page in requested portions and out portions
no longer referenced by the program (Magma uses weak collections for
its caching, so your program only consumes as much memory as the
objects it references).


# Proxies

Proxies are used to truncate the portions of the domain model that are
not currently in memory. When a proxy is sent a message, it's
#doesNotUnderstand: method is invoked to retrieve the real object from
the repository and convert the proxy to it (along with immediately
referenced sub-objects according to the current ReadStrategy)so that
all other references to the Proxy are also automatically updated.


# Write Transparency

Write-transparency is high in that Magma determines new and changed
portions of the model automatically. The only requirement is that the
application program commit changes to the model via atomic
transactions. Transactions are a common semantic in databases for
preserving integrity of changes. A number of commit-strategies allow
Magma to be suitable for a variety of programs and users.

# Benefits

This level of transparency allows existing objects which have never
been designed to reside in a database to reside in Magma. For example,
no Morph knows anything about Magma, but Morphs may be stored, shared
and collaborated via Magma.
