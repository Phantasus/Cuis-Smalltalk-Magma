# Authors

This file contains the authors of parts of this project.
It tries to document each code author as faithful as
possible.

# Initial reference import (5. May 2021)

Chris Muller (cmm) wrote the whole magma implementation.
This code was tailored towards Squeak. This code
was written over the years (2011 - 2021).

The affected reference files where extracted on 5th May 2021
by Josef Philip Bernhart (jpb) for later porting efforts
and put into the References directory. 

They were extracted by using the Squea5.2 version of the
SqueakMap configuration.

As mentioned in the Skwiki entry:
> https://wiki.squeak.org/squeak/2657

Which was this package source url (the tests version):
> http://map.squeak.org/accountbyid/c3993561-22fb-421f-b0be-c46b5487e105/files/install-Magma-1.62 tests.st

The squeak map catalogue description was:

> Package Name: Magma
> Version: 1.62 tests
> Entry for the Squeak5.2 tag in SqueakMap.  Nominal improvements.
>
> Categories: 
> 	Compatibility level/Only extensions, no changes - Code extensions but no changes in existing code.
>	Licenses/MIT - The MIT license is like BSD without the advertising
>	clause. As free as it gets, suitable for cross Smalltalk 100%
>	reuse.  The recommended license for Squeak since the 4.0 release.
>	Maturity level/Stable - Useable by all. Bugs are rare.
>	Squeak versions/Squeak5.2 - Released Q3/2018
>
> Created: 10 October 2018 9:08:47 pm
> Modified: 10 October 2018 9:08:47 pm
> Download:	http://map.squeak.org/accountbyid/c3993561-22fb-421f-b0be-c46b5487e105/files/install-Magma-1.62 tests.st

From this individual classes were filedout, as this was way easier than
following some different URL links. The extensions of classes by
magma packages were not yet filed out, as the required codesnippet
could not yet be found.

The filedout classes sha256sum were:

    2a166e0ec918a5f2acd943bd258beceeac47a2f5c64500437c6083241b953e62  References/Behavior-*ma-core.st
    66c465bf677883899fea5ce199cdfbef6b41d1cf02092122cd5cc340146c4582  References/Behavior-*magma-client.st
    9904060ce4c77f70bad5d968e8595e50e2108b75ce1c0892ac812c6efabbd1b6  References/Behavior-*ma-search.st
    bac1005404c1254b0d8c2f04755534a1f0fcae9f302b36ac5b1dfcdbf669e3b3  References/Behavior-*ma-serializer-core.st
    c223afa0e5c4997adfc16617cb720ddc7a4c9cca8f93001c8aaa2e934130e6d9  References/Behavior-*ma-serializer-tests.st
    9575b638af7616b9a813e94eec669c23eaad6cbfb7c812384f68187ab9bb4e0d  References/Behavior-*writebarrier.st
    e4d1be315c86ac95172ee8923b418f807aea8803c9417e3eddb3ac439632ebc8  References/ByteString-*ma-core.st
    9985929061d8857824b429b87f7355c11232e88802e21d4049145762fe26ede3  References/ByteString-*solhashtables.st
    e2e7475fcbc2c24850859f6137700da54bb2b53b5d9408c60eb125afbf24e0c0  References/Ma-Ascii-Report-Domain.st
    8e3574265b1e373d2f7759048b6506b8af4bc69d89b5f018ddbec7e765b15dc8  References/Ma-Ascii-Report-Info.st
    a323ba9956c5ec131af9c3780cb0a90ab3436956e934f3d9c20bcbb69d0269a4  References/Ma-Client-Server-Core-Client API.st
    a874001197f5006b94523c8e9a635bc1437460232799c994b4e9a500c67362f3  References/Ma-Client-Server-Core-Exceptions.st
    4ca4683e268b41decb2b41031c50033a1eba191e4a8ab5eac87e5ddded01fd20  References/Ma-Client-Server-Core-Orchestra API.st
    b8647a83f921a8e26489329be21ba299b3977f530ab60ea6a62f32674b05f27e  References/Ma-Client-Server-Core-Server API.st
    0b6b44cda56f985d73835d8c38d528b0b53cb6130485b796d1d7660541d9d039  References/Ma-Client-Server-Tester-SUnit extensions.st
    b48e99a8baea9289f42244855ebe753addb129b30be8aaf85f99b5e4cccd52f4  References/Ma-Client-Server-Tester-Tests.st
    6433009b65b5240981437660d07fe904744f306d86d2e731756dafbcdbdb0e5f  References/Ma-Collections-BTree.st
    c7b8c287abea3ec9846aba915dd56aaa78cd7dadaf27742ddb76793140c7f5cf  References/Ma-Collections-Canonicalization.st
    0cf46ddec5a76fc5f6431b7ca31ee01ce03237dbdd397aebcf561cc772fd841c  References/Ma-Collections-Collections.st
    a454401515de9614c02c2a6fd833b3ac3ba4691bbf5a18f04ff0fc259b25fe2b  References/Ma-Collections-Dictionarys-Auto.st
    9d51c88a5cd22bceb2797544509c5170f1ba959f5b713568c3d991d0a5ace265  References/Ma-Collections-Dictionarys-Auto-Tests.st
    2be1d82dfaef5f4d9fa2cca9c7c3c06ada36e4e26790c123499221eef862a647  References/Ma-Collections-Dictionarys.st
    9826a03c1e2b891aab6f52f30a79984f5f68c216e86b9af61d9fc2853fa88eb5  References/Ma-Collections-Exceptions.st
    f026bc2f0c055ff3bf4715864afa15438a3426dddc39658c1cc826eb0eb291e0  References/Ma-Collections-Info.st
    6685ffd67e10267ce38423597f4f7361a5814e13dc641d78f64ab5abe490a99d  References/Ma-Collections-Numbers collections.st
    9a9f18d53a45a3700a50ec06c829970d537001b1692121db721153e4b5a335cd  References/Ma-Collections-private.st
    754436da2e176c974571b635945e56ff7dde35b630e1136a93ec8515ede47002  References/Ma-Collections-Records.st
    22885d556419e5986a3412eecdb111c61db8b25328179fc12bab994653952ead  References/Ma-Collections-Sets.st
    c6ce85da96e7fd76202d703621427aa714d73f50faa64cc42fd7e2ebf5897fae  References/Ma-Collections-Tests.st
    4d555c56f818638aafd958a5eb222219739ff5be697162b814f0a15af145195a  References/Ma-Collections-Tree.st
    ab199d022f3b5460a89593f5810a80a77fef48b87ef2eb5ae4c92adbb3a45db7  References/Ma-Core-Abstractions.st
    854c7dd5a24ff71dd43afc14a20d896642e183635523e47399a7b6c9aeac8667  References/Ma-Core-Constants.st
    73bad6a60101fe883f5a29d53584c0b9452a1c69b1ac0ad5a7f528c0fca36a7a  References/MaCoreConstants.st
    e203496cd39e7ea39029361757b3e4795cb82db945ba62a5d1c6abb3a9c91ead  References/Ma-Core-Domain.st
    f027ea0d9b0519458190c14ab0baefcf3eee83f8d1281b0d5f944f84439db315  References/Ma-Core-Exceptions.st
    cb5be1b888c97e52c6cb15c7158ab8657f5981fcc2607c17fb8bdf49a0103674  References/Ma-Core-Requests.st
    47f427554cb56cae0f4cd783b95c93c91d3f955b06b68c8fb642bbb0aa080772  References/Ma-Core-SUnit extensions.st
    276297dda52e725d2d82f1d57969e0af0757ad896188b1a10297c55eae7d6513  References/Ma-Core-Utilities.st
    2ed004592361808e1a1976cc6c8937bde70855ef31ffaef836ab60bd51752a7e  References/Magma-Client-API.st
    3695f834a25641c07d2a63f64db2dc5722becd21e9466c3f1297e49789eb11e6  References/Magma-Client-Code management.st
    f1d2c5d5cb55f875f3874950db3a0fcd6dc9f11088827826c21ad13e50e6b214  References/Magma-Client-Counting.st
    f68c1267dc85b573ed8fb94caf1dc301847947a4fc0dc917567a46385866d982  References/Magma-Client-Data Repair.st
    d58085dc44e1866f7ca455f40ae609f276afa9d95b45f48fe489de79516e1c12  References/Magma-Client-Domain.st
    79a3bfead7cdcc37f6b9d2b057a2d5624f05d8710e5cbc00538f7b5b5abfdcc3  References/Magma-Client-Events.st
    9cf284c2bb1b67db4326018b06fd6b7f25ba6b16e58d1efaff3526355ce9a5c3  References/Magma-Client-Exceptions.st
    8e65d599c256a670ad3dd52ecc28fecb40fe518853b7ec147dfd16340cd240a1  References/Magma-Client-MagmaArray.st
    7997f05ae6bdc49353a40da9ebe74c5a838543b3c3eb7f0e09a96d990fec14c6  References/Magma-Client-MagmaCollections.st
    1f12c80abbb24956ef4de5e615fa7535fcc381de1a819745c4a61cce5fbd3033  References/Magma-Client-Notifications.st
    e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855  References/Magma-Client-Preferences.st
    d026f418501e21e2e828443330bd78107a2e86ef45586e5a1cf2fdc6a15df241  References/Magma-Client-private (MagmaCollections).st
    b095722cf72ab84e33532e20b71d762edc96e8a72426abaa2dc929d96085d55f  References/Magma-Client-private.st
    9f766c34be051e0797fc46ac7b8524280c42fde99fbc6508fe937a58aacaea37  References/Magma-Server-API.st
    812b9532609905b5fecc14f3168994cb341489b43e7fa517c272c29dd3c2377c  References/Magma-Server-Exceptions.st
    5b9a61b5a76fb2db8a5b3c4a2e2fd7e567c8478dbf09c249f11918bb3961e862  References/Magma-Server-File.st
    005344d108b881d0471d99e1b83acf252bcc2f9201cb70c95aeaf84046226d4a  References/Magma-Server-Info.st
    3adf05561bfecc342c24e1ebc6baa14b349c7f798f61b89b5bf9c4e438ef1191  References/Magma-Server-Preferences.st
    26df60878dfd98ad0fb56198f009de0ed92723223d4be05bc61ff572068d86cf  References/Magma-Server-private.st
    c177124217ea5229269cc4dc21d874169b2dc2abac2a991ed46864f572d55ef3  References/Magma-Server-Recovery.st
    42fbeb4fc0db4e43ba3658869870d5d5cba0d27f733aa54a2fc62e8b8838e9b0  References/Magma-Server-Utilities.st
    2e194c4ec60869748a95900568a5a340d4a8bef3f7895713588bd2b53e0218d3  References/Magma-Squeak-Client-Application.st
    fde841d0b90c6896c74362f5363c8bce4c9ab4e5ca7c046e40c1c8f307aef52d  References/Magma-Squeak-Client-UI.st
    705382f37e43746a875d5e4d0be8a2b0146a9f34ced206a34e51c5c95826b3ea  References/Magma-Tester-SUnit tests.st
    352f123c4487639c928259e26f4d94d18a8aa94f53dc0d898aa6749fabbe1f2a  References/Magma-Tester-Test domains.st
    293a2085bf805dd186d0dcf9b904c2420de49ecd52d00aa36958838ebf043e91  References/Magma-Tools-Buffer Editor.st
    e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855  References/Magma-Tools-Data Repair.st
    9cde1a5f389b9c2051b8b589b1357338edbcfe9703462dcd538bd0169d15c0a2  References/Magma-Tools-Exceptions.st
    c28f5ef211f43a8c257b980369f9f7297da158976ed950a9c8e88d054eca2718  References/Magma-Tools-Health.st
    2b9e8049438e0e93279350e73b975d5819f684735f3c5b6204eed9a3d81dd382  References/Magma-Tools-Info.st
    b75cf365a8010463875caf139a216310c5265836fa937ad5edfd6b57fa58da7f  References/Magma-Tools-Performance.st
    b5f8af65894b7f7c13026ea3d1de3ce8e177804ff88f62ea8bc7585977d87261  References/Magma-Tools-Stress Tester.st
    c3e9e35370fb2d081e39217d9847a746cc316bb7afd3fdf851a3f5b6434e33b3  References/Magma-Tools-Upgrade.st
    455065be3974118395d44cb5d2954eb53c8b0be29d9f02321630f300974125e1  References/Ma-Installer-Core.st
    d0baa8baa7576d1ffce5e1a562e007796737c9c06e294ee6f2b562a3f0dce347  References/Ma-Search-Domain.st
    cced7f4ca3ce87ccd11667690209dc699b9693f53eb701056a934bde6701034e  References/Ma-Search-Info.st
    d26b37e200b45da58f828d3d0064355da57fb4a7b03942e40b8aa4c537538d05  References/Ma-Search-Utilities.st
    74f639f62baffba857e5d5d71c8a7cc5268ff1cbf463b0c860ed67abdfbc1794  References/Ma-Serializer-Core-API.st
    1009fa2e18a771e0e8fdda9367716c0366228a3f5c8d2a4c30864cc30a6e35d3  References/Ma-Serializer-Core-Buffers.st
    0aa0d35e8555698e52d77760fb4d2d0b86363866b85cd6167a9ec52f884e0ff3  References/Ma-Serializer-Core-Exceptions.st
    a7e1dc7f0fa82c33450548eba9e44c0471edce9e508def511ad3685597a2dd4a  References/Ma-Serializer-Core-Info.st
    e3dbd2b59f58022fc1aefc9490551d866ec10f90a231dbd8d72d2bc46f7f6e84  References/Ma-Serializer-Core-private.st
    4c99cbb55d9ba8c1327b278a17c455bf4cb62024629d3bb518f0f733f8b40476  References/Ma-Serializer-Core-Proxy.st
    19ca85169edb8837ab865fcc348c4c0f801c5e0c1d046b1926d5940d6db557e3  References/Ma-Serializer-Tests-Info.st
    e6e5c7533fcd5c13fc0a57a462354c8cd2002c59cab0b613f73ac31e4d6d5122  References/Ma-Serializer-Tests-SUnit tests.st
    b9dc2feccb06b8b03405fcfdf98f983512ab54c5b7d775db81641fd670b28415  References/Ma-Serializer-Tests-Test domains.st
    a38d8b3629634dec249edecd0140c4646f3b2c3755979564487cb5d950e82a46  References/Ma-Statistics-Domain.st
    dfe34a56cefe788eafd2265d578dc9a5bcad35d8f40ff6a9b150df305c4aae46  References/Ma-Statistics-Info.st
    667fa27894072209edf410c3d878b827acbc8829ddb8863c2781d350ba58819c  References/Object-*ma-client-server-core.st
    25c107b24a2e03f8679a204097fde8b4a50cff0d2a8a7b40606a74382da3f837  References/Object-*ma-collections-btree.st
    3577f52f98a0d34c72851f62fcc6f51df7829b3c0ee9da11737ef6651397d063  References/Object-*ma-core.st
    b78648e4bc6b0a11733704c3a3d35ff3fc997bc1c8a849b619f01abad8409180  References/Object-*magma-client.st
    0acb9e1dac2b98d4d0a7123b62e48e84c5ef0ee401d0725ac2e33c0b074b5e90  References/Object-*magma-server.st
    8b65372e8a0698af710c82a67f3e6b1d6700be8579c4c735af31b90af17fa3de  References/Object-*magma-squeak-client.st
    18e49e126fa71965a07220c9da5d3c01ab6a33a9382e552b6e878e5318f4bd72  References/Object-*ma-search.st
    3c0f0c23d46a72e141c9b805510b6b90fddb111aef8e2e09a841d423f682731b  References/Object-*ma-serializer-core.st
    0a608f1b44b344a1ab604145b67ffe08b94c223f6e2470118cd8f21c8cc9dccc  References/Object-*ma-serializer-tests.st
    20a2c7725db65e4a653463d73a74aca88ff316900aea6c5a671756dc2ad48fde  References/Object-*writebarrier.st
    af72504841e15c839f835f2cd16d3b3ddf5fe6b2c2c754ce0d8fc38195f206d0  References/SOLHashTables-Info.st
    4b6ce83cdb9df2b18e35bb8011d1c0f4bad99073efc7bd50b1fb4d89015edf0f  References/SOLHashTables-Private.st
    ee2e1d38653ff65349ae1bdf996245691d7fbac983e47ab53763277d51937229  References/SOLHashTables.st
    f53310ce570bf9ad990c3f1499420dede18f91cd35de945c7aea0f585be64066  References/Symbol-*ma-core.st
    dad0549453c3567ea109533bc3bccb57d354faea9dca1ccd83b8a84c0e257a69  References/Symbol-*magma-client.st
    f12ac63c19269dd6b92de9f66a4ec0f2b7b6c81634589b2078382d0734b87c55  References/Symbol-*ma-serializer-tests.st
    98e88894227b47250c8498a46ee3cdcb48d9e4714b22cdbfe40c2262d8bf6ea6  References/Symbol-*writebarrier.st
    e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855  References/WriteBarrier-Collections.st
    8e6d83f245a195fd85d3feb0f25fef0d90b33b9d5955e3e77bd790d738efb591  References/WriteBarrier-Core.st
    0f634b39063e29ac32cb90682e5031c986acd5b4ebcca66715493dac3efee491  References/WriteBarrier-Tests.st

# Copying of monticello packages 6. May 2021

As the extensions were not exported by the by hand approach, I today copied over the
monticello packages into `References/packages` the previous fileouts were moved into
`References/by-hand-fileout_20210505`. 

The below monticello packages were copied onto which further porting efforts
by Josef Philip Bernhart (jpb) or others will continue.

The `sha256sum`s are:

    95e01ffe3265c971be5215d39edb96793ad5f922cbc44fd7d410262764962409  References/packages/BrpExtensions-cmm.15.mcz
    c2044e8f7a9c6638faa2ae0a821f92537b3c75a8ff55c78483acc19cd0abef7b  References/packages/Ma-Ascii-Report-cmm.10.mcz
    dcfd7297e2a749a825a06388214da4288f4df31dcee7bcbcce8275b5b9ea926a  References/packages/Ma-Client-Server-Core-cmm.286.mcz
    d34a7e429dda670d8eb9c415e6266e8a48f18be958d5ac4328d8e86552741f14  References/packages/Ma-Client-Server-Tester-cmm.171.mcz
    3090af1c2b8909bd6a112c43873bba85cd1ea7253203a14bfb6c5410d2b30870  References/packages/Ma-Collections-cmm.163.mcz
    777598924f203c9f23ce9e4ba13a92d278e2b500d594bb37f14efb672d0097cb  References/packages/Ma-Core-cmm.311.mcz
    56d97b1f87d44e8b95e48dcfd4b64e706028e988a60be2da32d6ff54915443be  References/packages/Magma-Client-cmm.737.mcz
    f6579b1041051281aa54d07d9e3e992f237e081840d0e786bf28be0dd5effa9f  References/packages/Magma-Server-cmm.516.mcz
    a0a2922e8d371fd085985f2987d5cf9f203b1559fcebc9a8fa64b418b91b2206  References/packages/Magma-Squeak-Client-cmm.15.mcz
    e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855  References/packages/Magma-Squeak-Tester-cmm.3.mcz
    3369d530142fb5ac65443c85cf2dd238932a64dd77389f0d04e80edbda903667  References/packages/Magma-Tester-cmm.428.mcz
    dfaf05af9d7c105ff3cc98c00e9971c2e0b513cff23f78f4bbdf57eba8b0f9bd  References/packages/Magma-Tools-cmm.76.mcz
    8e9f5c0e64f48ac924e51f1c0f4ce913c4b5826be4e82f4cc7eee68cf7210915  References/packages/Ma-Installer-Core-cmm.104.mcz
    5fda81bcad7c0cf7e34a14f0b9c76811b4a9e74e60b53b769dd7f8b9e3dcb657  References/packages/Ma-Search-cmm.58.mcz
    f3dbc39fc048b36a9b4a1c5158f00fcdd449a07daee0e4e65e90da243359b056  References/packages/Ma-Serializer-Core-cmm.338.mcz
    b27820f8693619130b65f29c8fdef0062c5613956f995a4be59b2d8665fd2af8  References/packages/Ma-Serializer-Squeak-Core-cmm.2.mcz
    90f24dfb936eaa73b922e7adfc4feb25bc529127f3a4087d18e0965b69411c81  References/packages/Ma-Serializer-Tests-cmm.45.mcz
    316efcb06d3afe98fbbdd9e9eecc86e16d3a8c2b00f3822e1325db77c236fd69  References/packages/Ma-Squeak-Core-cmm.1.mcz
    e714dda34b7196a19d7c5edc680cdaf3e0e8147739c61742e17f94fc90e64475  References/packages/Ma-Statistics-cmm.36.mcz
    8d2370aa14236b2975a878b0ef7b582c26a192458905f08ad432d51f70d852a4  References/packages/PlotMorph-cmm.33.mcz
    804482021f85744a93a41b80d900f3a086865187cc1130f4445c485ceca2d6d0  References/packages/SOLHashTables-cmm.17.mcz
    52c43488c9fe271aeb0e5d468f38cf65585b8806b7295a7e91b2ca497a466a0b  References/packages/WriteBarrier-cmm.49.mcz

# Authors of SOLHashtables (6. May 2021)

The original authors of the `SOLHashTables` package where 
Chris Muller (cmm) and Tom Rushworth (tbr). As written above
the sha256sum was:

> 804482021f85744a93a41b80d900f3a086865187cc1130f4445c485ceca2d6d0
