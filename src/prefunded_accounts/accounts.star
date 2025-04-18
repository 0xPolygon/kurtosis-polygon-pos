account = import_module("../account/account.star")

PREFUNDED_ACCOUNTS = [
    # m/44'/60'/0'/0/0
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x97538585a02A3f1B1297EB9979cE1b34ff953f1E",
            "0x93e8717f46b146ebfb99159eb13a5d044c191998656c8b79007b16051bb1ff762d09884e43783d898dd47f6220af040206cabbd45c9a26bb278a522c3d538a1f",
            "2a4ae8c4c250917781d38d95dafbb0abe87ae2c9aea02ed7c7524685358e49c2",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x97538585a02A3f1B1297EB9979cE1b34ff953f1E",
            "BJPocX9GsUbr+5kVnrE6XQRMGRmYZWyLeQB7FgUbsf92LQmITkN4PYmN1H9iIK8EAgbKu9Rcmia7J4pSLD1Tih8=",
            "KkroxMJQkXeB042V2vuwq+h64smuoC7Xx1JGhTWOScI=",
        ),
    ),
    # m/44'/60'/0'/0/1
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xeeE6f79486542f85290920073947bc9672C6ACE5",
            "0x0f554daf002c359281a9c5c3cb6639cab12259f570d6d10cb15e3f82a79e75aa4924f01f530068b4a0113f77e69ba5434ca01100a182fbca2609e29c4a9de91f",
            "f92738db8be69a9694b08acfc8e8fa843578da5adfcf4de77482c5a2b15681ad",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xeeE6f79486542f85290920073947bc9672C6ACE5",
            "BA9VTa8ALDWSganFw8tmOcqxIln1cNbRDLFeP4KnnnWqSSTwH1MAaLSgET935pulQ0ygEQChgvvKJgninEqd6R8=",
            "+Sc424vmmpaUsIrPyOj6hDV42lrfz03ndILForFWga0=",
        ),
    ),
    # m/44'/60'/0'/0/2
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xA831F4E702F374aBf14d8005e21DC6d17d84DfCc",
            "0xcc0eeb4abe520999ee310aa0a9a485527edd584c1fd9e9981144ff2c574e5bf87b5549902afd05ab2b5c50bd8b1f2c6f648da71723fdf5721afe39c6fe491a45",
            "8f723ed84785cbb3202643d986c4ec6052ec9c55af8cbb84046eab7104ad0e75",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xA831F4E702F374aBf14d8005e21DC6d17d84DfCc",
            "BMwO60q+UgmZ7jEKoKmkhVJ+3VhMH9npmBFE/yxXTlv4e1VJkCr9BasrXFC9ix8sb2SNpxcj/fVyGv45xv5JGkU=",
            "j3I+2EeFy7MgJkPZhsTsYFLsnFWvjLuEBG6rcQStDnU=",
        ),
    ),
    # m/44'/60'/0'/0/3
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xd3cc855bDb41498920792b77aBCB7431617fA9a4",
            "0x79e9c953100c624ffc7f32f61fb378f28141bebc00d51376fd96d5c1b31517cb13182f489b0e4578430d9d8e72de1be51c0c624f7aea86e650bf86d3d5da063a",
            "0b8a62723fa93e4da7b3f09845d0c2c23d2807bd9f6b15ffb9037768e45ceca1",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xd3cc855bDb41498920792b77aBCB7431617fA9a4",
            "BHnpyVMQDGJP/H8y9h+zePKBQb68ANUTdv2W1cGzFRfLExgvSJsORXhDDZ2Oct4b5RwMYk966obmUL+G09XaBjo=",
            "C4picj+pPk2ns/CYRdDCwj0oB72faxX/uQN3aORc7KE=",
        ),
    ),
    # m/44'/60'/0'/0/4
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xF2dBc05C1f99b6E3442Dbd5524d1fAB7959Fc939",
            "0x22997e0dc45b54926a12b5e668347979df3abc8c1d2bc2cec388e40c569b35be3cb907d15e5eb616afcf3279e8d0901373e81e1b25149e497036c7646542f492",
            "d160c2a27d6724c946082baeee53fd12d3053d95ddcea692db7ab24eaeee668c",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xF2dBc05C1f99b6E3442Dbd5524d1fAB7959Fc939",
            "BCKZfg3EW1SSahK15mg0eXnfOryMHSvCzsOI5AxWmzW+PLkH0V5ethavzzJ56NCQE3PoHhslFJ5JcDbHZGVC9JI=",
            "0WDCon1nJMlGCCuu7lP9EtMFPZXdzqaS23qyTq7uZow=",
        ),
    ),
    # m/44'/60'/0'/0/5
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x9bDc763175f3506dEdb5F139854730E23cA82F69",
            "0x72aff4b816c1ab1a2b58f2b22ae6f2547197f06419dd82b1aa7ebf9bc4cd6c679b8f616fa6669dc236c212b2c5894dec62516239fd33788dc24f8cdaed9bf0fa",
            "bca5312c2a0d4cd192d6ed46dadeeb04df40de4e08b1c1757b07fff42b4b951b",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x9bDc763175f3506dEdb5F139854730E23cA82F69",
            "BHKv9LgWwasaK1jysirm8lRxl/BkGd2Csap+v5vEzWxnm49hb6ZmncI2whKyxYlN7GJRYjn9M3iNwk+M2u2b8Po=",
            "vKUxLCoNTNGS1u1G2t7rBN9A3k4IscF1ewf/9CtLlRs=",
        ),
    ),
    # m/44'/60'/0'/0/6
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x307f0aA1456F0B3EDec56D6bA7ebC817D09483cC",
            "0x5499522100dd63e08eadb19aa547ec775b21d8de43e127973a65404224343dd8086c266e651ea9553c2b9db633b74754198c9b233adf7faa1c7f42613d0d18cd",
            "c76fcf0d1a590a60e619a92929848d836975eb9270daf91baeb06449211d62cb",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x307f0aA1456F0B3EDec56D6bA7ebC817D09483cC",
            "BFSZUiEA3WPgjq2xmqVH7HdbIdjeQ+EnlzplQEIkND3YCGwmbmUeqVU8K522M7dHVBmMmyM633+qHH9CYT0NGM0=",
            "x2/PDRpZCmDmGakpKYSNg2l165Jw2vkbrrBkSSEdYss=",
        ),
    ),
    # m/44'/60'/0'/0/7
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x2c64Cab78F2A9AAb96514c5151Afa571301D45d9",
            "0x98050375761d6e2dd76d7dee10fa6eb7c6c2ff50870983eddb939b7d21ed000001e419bd73619c77ce049b9511fb3df85e4965d7365cc783f5f48f41071d09c2",
            "ab2e777a68e3976dfd099114ca296ea21c14562ae662cc2f093917a842b1d2d3",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x2c64Cab78F2A9AAb96514c5151Afa571301D45d9",
            "BJgFA3V2HW4t12197hD6brfGwv9QhwmD7duTm30h7QAAAeQZvXNhnHfOBJuVEfs9+F5JZdc2XMeD9fSPQQcdCcI=",
            "qy53emjjl239CZEUyiluohwUVirmYswvCTkXqEKx0tM=",
        ),
    ),
    # m/44'/60'/0'/0/8
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xB14908C693fb97dd65bFf82161c2Bdf442B0C952",
            "0x48cc364c82d72238fd94b3a02deaefb05ac8be2da1f8e28d79f7a04a48a656de84abd0f4a03dcb18802f8b8887c649dad0493956a4e947b29f79da29830f038c",
            "92a496c090beb90eac20b8436717f8943e05aff216dbfd3ddcab5463cf2a937f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xB14908C693fb97dd65bFf82161c2Bdf442B0C952",
            "BEjMNkyC1yI4/ZSzoC3q77BayL4tofjijXn3oEpIplbehKvQ9KA9yxiAL4uIh8ZJ2tBJOVak6Ueyn3naKYMPA4w=",
            "kqSWwJC+uQ6sILhDZxf4lD4Fr/IW2/093KtUY88qk38=",
        ),
    ),
    # m/44'/60'/0'/0/9
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x3d3e0AdB250437A85013EdD735Af309D29FC6b09",
            "0xa9cd729e66235cc5b32379d24eef7db703b1e552854c02f3abd2bf6633279bc81d5619163d252b8ed718a3080f5b093370fb6135ae6ddde9f7b9a8a0a548328b",
            "0dd4644d7ac1c3a4b210132e694ef6e5121e79bdc75e5eb2383f85af3f9b8c22",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x3d3e0AdB250437A85013EdD735Af309D29FC6b09",
            "BKnNcp5mI1zFsyN50k7vfbcDseVShUwC86vSv2YzJ5vIHVYZFj0lK47XGKMID1sJM3D7YTWubd3p97mooKVIMos=",
            "DdRkTXrBw6SyEBMuaU725RIeeb3HXl6yOD+Frz+bjCI=",
        ),
    ),
    # m/44'/60'/0'/0/10
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x3857C1b962cd62f2c45196b319493cEd7bB2b580",
            "0xa9182f349f6696c9409244a0c68b366ff0242550dfcf42c0ed2fbb6f4d7576addb6d744910ec6fbd59f529933b0c93a54e04de4f20eb1e2db32d3be96442b839",
            "c4189cdedadb8a4e191f190de6f056eed3cf9aa7c003d146558a9e9979e7dd99",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x3857C1b962cd62f2c45196b319493cEd7bB2b580",
            "BKkYLzSfZpbJQJJEoMaLNm/wJCVQ389CwO0vu29NdXat2210SRDsb71Z9SmTOwyTpU4E3k8g6x4tsy076WRCuDk=",
            "xBic3trbik4ZHxkN5vBW7tPPmqfAA9FGVYqemXnn3Zk=",
        ),
    ),
    # m/44'/60'/0'/0/11
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x37B6d1C512ffD61242c69863da2CADDBA89f06a1",
            "0x75911c34f7f0d4032e7b90a8fb8f8dec6e5639c3c58ac0e50634fe5350a3a7b1906620b6e12a513d71b0d665a462521602d56a8ac3320777c896223ff85aced1",
            "fe991dc58ae456b7e44eabddd475dace31dbbcc709c0dd26c73f1bf9efe9e6ef",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x37B6d1C512ffD61242c69863da2CADDBA89f06a1",
            "BHWRHDT38NQDLnuQqPuPjexuVjnDxYrA5QY0/lNQo6exkGYgtuEqUT1xsNZlpGJSFgLVaorDMgd3yJYiP/haztE=",
            "/pkdxYrkVrfkTqvd1HXazjHbvMcJwN0mxz8b+e/p5u8=",
        ),
    ),
    # m/44'/60'/0'/0/12
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x230fbC3D831bADa13df3F91ac6143FaFf595367A",
            "0x1c5cd9439d8ad6f72bc4a4e0623f1521c5a2634f2afd51454f44b045581910aab8c3eed7fdfa9764c2ece1527b83ac580f9e83201d81ffdabe9c5ad37c5b4b34",
            "4560a7941500b694f880f73de5e85886f90a4a59264aeec5dc74e6468fb6e7c3",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x230fbC3D831bADa13df3F91ac6143FaFf595367A",
            "BBxc2UOditb3K8Sk4GI/FSHFomNPKv1RRU9EsEVYGRCquMPu1/36l2TC7OFSe4OsWA+egyAdgf/avpxa03xbSzQ=",
            "RWCnlBUAtpT4gPc95ehYhvkKSlkmSu7F3HTmRo+258M=",
        ),
    ),
    # m/44'/60'/0'/0/13
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x22b15948E0925214E959Fca360ffdfA74780dF93",
            "0x52ee83dc0ba83f0c12cd8061a7174666f7b1718ac011adc1b2e742f6ec3d2e0a99a33c170b0202c29381611ef2254186808667385384aa927760167043e6f486",
            "2cdae5202d2fcee6ff93ad695e5046ebd89d95d75cddee7f89e1306b0c841eba",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x22b15948E0925214E959Fca360ffdfA74780dF93",
            "BFLug9wLqD8MEs2AYacXRmb3sXGKwBGtwbLnQvbsPS4KmaM8FwsCAsKTgWEe8iVBhoCGZzhThKqSd2AWcEPm9IY=",
            "LNrlIC0vzub/k61pXlBG69idlddc3e5/ieEwawyEHro=",
        ),
    ),
    # m/44'/60'/0'/0/14
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xf3DB09Faf87062b10e4e65000897d0e06e7BECd4",
            "0x8115ba7ae42a0b4427ef598ab3b7adca32549783b6b4317ceaf53fb51dc0b543200c8935ddf85816252857b3cef2ccab2768d92ecf3a2c162769096fd8d06aff",
            "5d3af80cb644f2e3323cc9ae274acc471c63977ebd1bbb9c0f52a8607b8cdf5a",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xf3DB09Faf87062b10e4e65000897d0e06e7BECd4",
            "BIEVunrkKgtEJ+9ZirO3rcoyVJeDtrQxfOr1P7UdwLVDIAyJNd34WBYlKFezzvLMqydo2S7POiwWJ2kJb9jQav8=",
            "XTr4DLZE8uMyPMmuJ0rMRxxjl369G7ucD1KoYHuM31o=",
        ),
    ),
    # m/44'/60'/0'/0/15
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x67f6074cd99d55a3587dCF745bC72AA64585C927",
            "0xd828760cc874e8c2ed91af9ffc5d06892b8441fbc4538978cd0764c5137e25455913ef5a39947ac7dfe7bc7134738017842a178d6fe1c50d593253f77c49d4e0",
            "95eb7846413fb242606bd4ecc05f327ed0548bde68077f746c201a3f94caf025",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x67f6074cd99d55a3587dCF745bC72AA64585C927",
            "BNgodgzIdOjC7ZGvn/xdBokrhEH7xFOJeM0HZMUTfiVFWRPvWjmUesff57xxNHOAF4QqF41v4cUNWTJT93xJ1OA=",
            "let4RkE/skJga9TswF8yftBUi95oB390bCAaP5TK8CU=",
        ),
    ),
    # m/44'/60'/0'/0/16
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xe06dcDdcf4eC8932FeeD78A6f0170Ca1F783927C",
            "0x9e393f7aba401b52f923864c741586d8a2e0baab346a53f1f8a730a5b06cdab38a942608cdb685f9b489aa175299f9e72e093045f80bffba500e9d75623ab546",
            "e179a53c5d09f522b0fa627c8f4aa62d5f9191cb187cf498d151d4f1ebd3bca2",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xe06dcDdcf4eC8932FeeD78A6f0170Ca1F783927C",
            "BJ45P3q6QBtS+SOGTHQVhtii4LqrNGpT8finMKWwbNqzipQmCM22hfm0iaoXUpn55y4JMEX4C/+6UA6ddWI6tUY=",
            "4XmlPF0J9SKw+mJ8j0qmLV+RkcsYfPSY0VHU8evTvKI=",
        ),
    ),
    # m/44'/60'/0'/0/17
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x0dC6e87ac93c46fB6724220e9DF084Ffbd02c2a9",
            "0xbbf5fd6e7591d868178354b5bf2caf1254ebf6efd6b89255d27a6cec0f4e5b10689fec08200077903c2d44ce1cc8f8525a962b4c1880a352ab1147d0fa865839",
            "24115bec2c77044f7a3fdf5fd690bb102a7f4ee091b1ec3570818c763a749905",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x0dC6e87ac93c46fB6724220e9DF084Ffbd02c2a9",
            "BLv1/W51kdhoF4NUtb8srxJU6/bv1riSVdJ6bOwPTlsQaJ/sCCAAd5A8LUTOHMj4UlqWK0wYgKNSqxFH0PqGWDk=",
            "JBFb7Cx3BE96P99f1pC7ECp/TuCRsew1cIGMdjp0mQU=",
        ),
    ),
    # m/44'/60'/0'/0/18
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x56aBACAB4Bc41B6f8FA15b49B244C59FCc152D09",
            "0x1db327a8bc8bea06a84ed55786ab894c154f4856739bf65d26db013e40ddf9f8ed96c0a8d14ca8d3e63341303b07504c331fb1900480edbda98d47558413c27a",
            "5a3ac29a7ffaedc8dcc2a00c09c43271d116572d18fd66a6b05b4e0c65180ecb",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x56aBACAB4Bc41B6f8FA15b49B244C59FCc152D09",
            "BB2zJ6i8i+oGqE7VV4ariUwVT0hWc5v2XSbbAT5A3fn47ZbAqNFMqNPmM0EwOwdQTDMfsZAEgO29qY1HVYQTwno=",
            "WjrCmn/67cjcwqAMCcQycdEWVy0Y/WamsFtODGUYDss=",
        ),
    ),
    # m/44'/60'/0'/0/19
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xa4ce59D3d8687938cdcAc9Fd73b74e43a6405fB5",
            "0x02643ae6ac8e86e956288476a9aa6e085578229856e5c041270e255163656907c50ed45c59568c20abd2c1a4f28cba8a98699612d52fd554267100cc84cd0441",
            "b86c932e205594b7bda97488ee43a2d1c7acc99837640644976c8690a4b5ddb2",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xa4ce59D3d8687938cdcAc9Fd73b74e43a6405fB5",
            "BAJkOuasjobpViiEdqmqbghVeCKYVuXAQScOJVFjZWkHxQ7UXFlWjCCr0sGk8oy6iphplhLVL9VUJnEAzITNBEE=",
            "uGyTLiBVlLe9qXSI7kOi0cesyZg3ZAZEl2yGkKS13bI=",
        ),
    ),
    # m/44'/60'/0'/0/20
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xD8141868ccaD89D50D1338AaC7bD0D23C60dB6d9",
            "0x27fd66893472e32bb3914d9ced304fd198d830c1bd471a7dfd0dd5d680658950bb80cd0b03985d4f235d7b37c8243d9f24ff3971a72a3427073710ece196f018",
            "09c2b3eb3e6fbf268b2481eed8e84fad986bc0c6fd7bbb346e7345ac1436638d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xD8141868ccaD89D50D1338AaC7bD0D23C60dB6d9",
            "BCf9Zok0cuMrs5FNnO0wT9GY2DDBvUcaff0N1daAZYlQu4DNCwOYXU8jXXs3yCQ9nyT/OXGnKjQnBzcQ7OGW8Bg=",
            "CcKz6z5vvyaLJIHu2OhPrZhrwMb9e7s0bnNFrBQ2Y40=",
        ),
    ),
    # m/44'/60'/0'/0/21
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x77EDa8182bA4e9F4913da08AE006756Ba0FffBa6",
            "0xbb509fa90e5bf61b4ddf25e36b7a5b704b7885d89690664ed63141b3ba1b0c88dc158c5fdf0e6a1e6e508ecfca4518459c0ae754e31730bb86845c5c57a810d1",
            "aa6b5e1f2d32be87b1e2af8ce419e4ea9a4bdfcb70d3c69ddf51d23f7c766a99",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x77EDa8182bA4e9F4913da08AE006756Ba0FffBa6",
            "BLtQn6kOW/YbTd8l42t6W3BLeIXYlpBmTtYxQbO6GwyI3BWMX98Oah5uUI7PykUYRZwK51TjFzC7hoRcXFeoENE=",
            "qmteHy0yvoex4q+M5Bnk6ppL38tw08ad31HSP3x2apk=",
        ),
    ),
    # m/44'/60'/0'/0/22
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x605574FcF17A28B66Ac896283CB5Dd581E808788",
            "0x38e5c89feb751777e37739d98fd71b73c2d512cd639b5a215a2ba760b266c5bfa7213c5f537e1e8c4490b37e4fa0bc18dfb090d48e1ccc2fbb2acdf23d785641",
            "150eb652947f1c892b9c5fbedce69c01b996ac326a3c2938245a25729c5487cf",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x605574FcF17A28B66Ac896283CB5Dd581E808788",
            "BDjlyJ/rdRd343c52Y/XG3PC1RLNY5taIVorp2CyZsW/pyE8X1N+HoxEkLN+T6C8GN+wkNSOHMwvuyrN8j14VkE=",
            "FQ62UpR/HIkrnF++3OacAbmWrDJqPCk4JFolcpxUh88=",
        ),
    ),
    # m/44'/60'/0'/0/23
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x3103E3fEf7791587d9DcAc8B8049D77B0aF0441a",
            "0x0d037aad357fcb0816bafaa3c73ac3ad5e57f02dbdeef53b93d27c2996183c8d8bdc18ad2eaae0bd388b96e1252b987b32127f2c1d7a76eb0c619f2c4aae2b6a",
            "fd5aea9401551e108d9bf781f1a4b4a6c883dcf00c1f8798cd465833e26816ec",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x3103E3fEf7791587d9DcAc8B8049D77B0aF0441a",
            "BA0Deq01f8sIFrr6o8c6w61eV/Atve71O5PSfCmWGDyNi9wYrS6q4L04i5bhJSuYezISfywdenbrDGGfLEquK2o=",
            "/VrqlAFVHhCNm/eB8aS0psiD3PAMH4eYzUZYM+JoFuw=",
        ),
    ),
    # m/44'/60'/0'/0/24
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x58Bada522AD1036B3300BfaaCCC4f03E973211ef",
            "0xfe2756d52905b6f17abfe72e4dc56cbae5e65cb18fc19174a484cbdc145df350876cd810c1667d1a48d786cd4097ee3c583fbd5ce043613b99adb92590a51da0",
            "8c173b74ba5f658c8cbcfa42123487e9144b51d2aaeb4117cd4865ef2c0d31a4",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x58Bada522AD1036B3300BfaaCCC4f03E973211ef",
            "BP4nVtUpBbbxer/nLk3FbLrl5lyxj8GRdKSEy9wUXfNQh2zYEMFmfRpI14bNQJfuPFg/vVzgQ2E7ma25JZClHaA=",
            "jBc7dLpfZYyMvPpCEjSH6RRLUdKq60EXzUhl7ywNMaQ=",
        ),
    ),
    # m/44'/60'/0'/0/25
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xbC885aeB83089F7782505024fc14eC77D32350d1",
            "0xc2a0cddcaf78075d71db36f472fc356c2a9c04a9cd9874e5383af8f0b3ca84e8f66f46f9ac9ae25333b242161850fb8da5517b22a86bd77aa61f6d4b4d29dae3",
            "7c47eb50afb9622238f305ceb90473086b4971f102f9b6042a4fcce73f7d5f3f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xbC885aeB83089F7782505024fc14eC77D32350d1",
            "BMKgzdyveAddcds29HL8NWwqnASpzZh05Tg6+PCzyoTo9m9G+aya4lMzskIWGFD7jaVReyKoa9d6ph9tS00p2uM=",
            "fEfrUK+5YiI48wXOuQRzCGtJcfEC+bYEKk/M5z99Xz8=",
        ),
    ),
    # m/44'/60'/0'/0/26
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x574333025c78616B443A14b58C02800C808f0f6e",
            "0x012f220e7faeb6f2af82ff562ac2a57b5f1eef906bf99c50802514ae800620c0c7ca64b28c03fd8b07053b17d1a68fd7672d71bc9934efaf2d10f2397383cc41",
            "fb96e051978f85792171b701563d94548134d76216d6c620e87abbb3141b6263",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x574333025c78616B443A14b58C02800C808f0f6e",
            "BAEvIg5/rrbyr4L/VirCpXtfHu+Qa/mcUIAlFK6ABiDAx8pksowD/YsHBTsX0aaP12ctcbyZNO+vLRDyOXODzEE=",
            "+5bgUZePhXkhcbcBVj2UVIE012IW1sYg6Hq7sxQbYmM=",
        ),
    ),
    # m/44'/60'/0'/0/27
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x6c45934659cEF46a1e5ADBEdEEF28a28a0ccadCD",
            "0x40699c95684110a1dc72daf6b8fac67aaf63ce53d9f65718b45665ed69b995125d2d387644b454461fbbbbbc364795a05c9ef3005afc391e5340cf171f5ab86a",
            "e3c104df19c787665e3425549b7c4b45d318720a068cedda19a0969a0d5be4b1",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x6c45934659cEF46a1e5ADBEdEEF28a28a0ccadCD",
            "BEBpnJVoQRCh3HLa9rj6xnqvY85T2fZXGLRWZe1puZUSXS04dkS0VEYfu7u8NkeVoFye8wBa/DkeU0DPFx9auGo=",
            "48EE3xnHh2ZeNCVUm3xLRdMYcgoGjO3aGaCWmg1b5LE=",
        ),
    ),
    # m/44'/60'/0'/0/28
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x986fBFacA286a41A9797660b9007cedA0d8b5544",
            "0x6a46fcc3cf8864c59c3697bcdee8ae366d58d9ff15de0b0eb54631dd5042efe25971ce877c60f05958615610d9fc297061c3e1610c0ae84a0a310ea5eae72a7d",
            "66a3a2e5feeca58b838e10f7603e01dd39592ea7ceb074bcf92378265b7f3d5f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x986fBFacA286a41A9797660b9007cedA0d8b5544",
            "BGpG/MPPiGTFnDaXvN7orjZtWNn/Fd4LDrVGMd1QQu/iWXHOh3xg8FlYYVYQ2fwpcGHD4WEMCuhKCjEOpernKn0=",
            "ZqOi5f7spYuDjhD3YD4B3TlZLqfOsHS8+SN4Jlt/PV8=",
        ),
    ),
    # m/44'/60'/0'/0/29
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x03CB13fC1AdaFbC58271aE17B82de6baD79eDC81",
            "0x843e79d8d9846dd92d14a1ba4fdae79ccf05989b6c670fb8f89c75bc9ad76a990d9172d677c972f8b6dad2864d42fd22bd8ed3c0229e8096b06ffb350a15570c",
            "f0fc8092126b0f27b4ec9f0beac91be1f273dd710a407d7b767baaefc14b0864",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x03CB13fC1AdaFbC58271aE17B82de6baD79eDC81",
            "BIQ+edjZhG3ZLRShuk/a55zPBZibbGcPuPicdbya12qZDZFy1nfJcvi22tKGTUL9Ir2O08AinoCWsG/7NQoVVww=",
            "8PyAkhJrDye07J8L6skb4fJz3XEKQH17dnuq78FLCGQ=",
        ),
    ),
    # m/44'/60'/0'/0/30
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x6520A67d45AAb34B38CeFF8540bc96a3b02cf1C8",
            "0x2d01d5780fc99ee798138a26da49ebbcc16fb7aafbd0d5a349367d789ae399d3eaf6fc38dab85f448939aacd6470ec7f3e696f3326e33e11996c92378f8701c1",
            "a03fe24ce0285e4598f3baa47bce499a19b1e6dcbcf7fa52671c5b3c2d09d9ac",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x6520A67d45AAb34B38CeFF8540bc96a3b02cf1C8",
            "BC0B1XgPyZ7nmBOKJtpJ67zBb7eq+9DVo0k2fXia45nT6vb8ONq4X0SJOarNZHDsfz5pbzMm4z4RmWySN4+HAcE=",
            "oD/iTOAoXkWY87qke85Jmhmx5ty89/pSZxxbPC0J2aw=",
        ),
    ),
    # m/44'/60'/0'/0/31
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x437b736B390790Efd8D736cF97470d4197dd27d8",
            "0x7a91c382202e9c2616c32d649aa326cf4e1aea670294a1f4073c97d2d43be8044cc3617ac3da48d64118f4e305e76a0f9c79ab83b2fe775f494e20feb76ecaa1",
            "49f7182d63fa2d36fa640bba8b4c64b286080e26cbe59df7b610777dd9b108f3",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x437b736B390790Efd8D736cF97470d4197dd27d8",
            "BHqRw4IgLpwmFsMtZJqjJs9OGupnApSh9Ac8l9LUO+gETMNhesPaSNZBGPTjBedqD5x5q4Oy/ndfSU4g/rduyqE=",
            "SfcYLWP6LTb6ZAu6i0xksoYIDibL5Z33thB3fdmxCPM=",
        ),
    ),
    # m/44'/60'/0'/0/32
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xFd67f44B8c1a6F81C214452C87Ab17A05A944D08",
            "0x191f19ad9468ac9ff5038941cedc1d6571f3f11c2f263ba6d85ee76d761ae62c56ce5554ada4c4bb98e9b10423b43de6a1584880c870821e09688cc982864ec2",
            "a7a07eaccd85c0e3dedd6aecbb3e03c9313f3535d9bc0db2e63c4f7f894b6d4e",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xFd67f44B8c1a6F81C214452C87Ab17A05A944D08",
            "BBkfGa2UaKyf9QOJQc7cHWVx8/EcLyY7pthe5212GuYsVs5VVK2kxLuY6bEEI7Q95qFYSIDIcIIeCWiMyYKGTsI=",
            "p6B+rM2FwOPe3Wrsuz4DyTE/NTXZvA2y5jxPf4lLbU4=",
        ),
    ),
    # m/44'/60'/0'/0/33
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xbd6D0Cb5046dA0c7a13083C9C8E6A591dA92C8F0",
            "0x296675020a7ebfdb2cd5216c0d795b7764780399c3fbf53335237581e65be31a224b6319120b8af98ade1e2404edb0a132e37b429b3415ee8ea0e0536576068b",
            "84e09989f74708bcf68b730517ffcf6a62ed300150f705ed0320eb9806f31b73",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xbd6D0Cb5046dA0c7a13083C9C8E6A591dA92C8F0",
            "BClmdQIKfr/bLNUhbA15W3dkeAOZw/v1MzUjdYHmW+MaIktjGRILivmK3h4kBO2woTLje0KbNBXujqDgU2V2Bos=",
            "hOCZifdHCLz2i3MFF//PamLtMAFQ9wXtAyDrmAbzG3M=",
        ),
    ),
    # m/44'/60'/0'/0/34
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xc6f46EC9F3Da34B6E21010D7C8b8eC858B0e42B7",
            "0x47bda454318af11b3c5aec038318c19edbc0ae0b948cca103767e953c1ebb44e0dfb563c3ed9d138f86b98daa6795ec56079fee54d647f7812312c8fd4a1446c",
            "5533cc2ae89b66846c8d6fb783be1cee793182a89eae4665567c4b765516de6c",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xc6f46EC9F3Da34B6E21010D7C8b8eC858B0e42B7",
            "BEe9pFQxivEbPFrsA4MYwZ7bwK4LlIzKEDdn6VPB67RODftWPD7Z0Tj4a5japnlexWB5/uVNZH94EjEsj9ShRGw=",
            "VTPMKuibZoRsjW+3g74c7nkxgqierkZlVnxLdlUW3mw=",
        ),
    ),
    # m/44'/60'/0'/0/35
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x90fC94FdF632CdfaCcDcAe50ADb9bfF40Ea8e7b7",
            "0x72c26efdcc38ffd73620bd6b0c6ccfe9fefc2b8ea371e2434c7b01dcf85c968e6692ecdc7e6ae45a02e4df7679d17cf07f0eb768f876fe46ff0edc64773ea188",
            "4c02bb317bb069f726d07baf22b138c9e393c8417c3be3c166b5c8b838be2c5b",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x90fC94FdF632CdfaCcDcAe50ADb9bfF40Ea8e7b7",
            "BHLCbv3MOP/XNiC9awxsz+n+/CuOo3HiQ0x7Adz4XJaOZpLs3H5q5FoC5N92edF88H8Ot2j4dv5G/w7cZHc+oYg=",
            "TAK7MXuwafcm0HuvIrE4yeOTyEF8O+PBZrXIuDi+LFs=",
        ),
    ),
    # m/44'/60'/0'/0/36
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xE4781bbe3b350C3956c73a2945E283B5bAF5cdfa",
            "0xa1b30764d8078268f17e837af0095ec02a67b001b3a2bd32da5799e6998166ab465bf6977c21947499a0ca0985796368a28db43b4c7882bdabbdf6a0fbdff4e3",
            "5ca5e60d980aef22656be2720eb4c4e0bc5b93c2402577de1c2d0602af484305",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xE4781bbe3b350C3956c73a2945E283B5bAF5cdfa",
            "BKGzB2TYB4Jo8X6DevAJXsAqZ7ABs6K9MtpXmeaZgWarRlv2l3whlHSZoMoJhXljaKKNtDtMeIK9q732oPvf9OM=",
            "XKXmDZgK7yJla+JyDrTE4Lxbk8JAJXfeHC0GAq9IQwU=",
        ),
    ),
    # m/44'/60'/0'/0/37
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x28067d88616e70d2C8b62A9E36f36D16A6829b00",
            "0xe82f76c206d70c90b4c7f5a004d6be7056314b0bfd16af8543ab7e5458330a7baf76655563d5c346674313514eacf39469c24bc53fa82cdc02966443529ce78b",
            "1192c1f35195f7dfe8ea7119e876b83a9d068edc47a243cb6eaaf4d20360cee6",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x28067d88616e70d2C8b62A9E36f36D16A6829b00",
            "BOgvdsIG1wyQtMf1oATWvnBWMUsL/RavhUOrflRYMwp7r3ZlVWPVw0ZnQxNRTqzzlGnCS8U/qCzcApZkQ1Kc54s=",
            "EZLB81GV99/o6nEZ6Ha4Op0GjtxHokPLbqr00gNgzuY=",
        ),
    ),
    # m/44'/60'/0'/0/38
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x5c48574194DCA0Ed50bcf24806fd532f2A5f8895",
            "0xc9b07c1b58bbfcf84f64f66db5d6362eac6c8f0ffa91d59fce8f50e24c4faf514af85e5e95d67ddf0822da64c1f9a5b0bd8453e48440b60a2d554c5f3ae44ec3",
            "67f8bb80688518e4cfa7e668dd4dff6991930c714b5a11ead2bd33180266bccd",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x5c48574194DCA0Ed50bcf24806fd532f2A5f8895",
            "BMmwfBtYu/z4T2T2bbXWNi6sbI8P+pHVn86PUOJMT69RSvheXpXWfd8IItpkwfmlsL2EU+SEQLYKLVVMXzrkTsM=",
            "Z/i7gGiFGOTPp+Zo3U3/aZGTDHFLWhHq0r0zGAJmvM0=",
        ),
    ),
    # m/44'/60'/0'/0/39
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x66C2ADf7F190E1D639a629dbCfdFE296FC3d6a6b",
            "0x25119e040073c43e4ab13108461e87b68a6b3f1e3c7e68394923aa43a2f3e06b4fc390295f5ec6c7c5ebda49ea29f07d88b9f6ee779fe2ca60655f892822a5f8",
            "afbe7a7cf694b92125156c6b34edf7a5e2a29eea25636ed990ca545838c6fba4",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x66C2ADf7F190E1D639a629dbCfdFE296FC3d6a6b",
            "BCURngQAc8Q+SrExCEYeh7aKaz8ePH5oOUkjqkOi8+BrT8OQKV9exsfF69pJ6inwfYi59u53n+LKYGVfiSgipfg=",
            "r756fPaUuSElFWxrNO33peKinuolY27ZkMpUWDjG+6Q=",
        ),
    ),
    # m/44'/60'/0'/0/40
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x892f73DeE8E8Be9bc4E0Fc590D72189Bb5E4391e",
            "0x5ac37dd0e32f623dce77ae4db1a97855fe4f116880ac49184b305a5613e60a1d11834f1ad926d2c6838fb6b9a03d369e06ffaabc37a21d45a6612eb09aed8f58",
            "42fc388c45431a894f688867758f7f9eca5bbaec51f8161d707f8f4dc0000e60",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x892f73DeE8E8Be9bc4E0Fc590D72189Bb5E4391e",
            "BFrDfdDjL2I9zneuTbGpeFX+TxFogKxJGEswWlYT5godEYNPGtkm0saDj7a5oD02ngb/qrw3oh1FpmEusJrtj1g=",
            "Qvw4jEVDGolPaIhndY9/nspbuuxR+BYdcH+PTcAADmA=",
        ),
    ),
    # m/44'/60'/0'/0/41
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xad351A57678111F6FB2D480B8625cAa1E36744F3",
            "0x10b1eda8af65ece322755c2392ae481c904f529691a506581519d857138475ac0b78f3abd00b0505fbf7af3b90efc03e62427bfe0c2dc4779907b92388b00957",
            "944d3c2f9f6033cc30655098bc0ea590b6edc3fffed6abc49d774cf0700d79f9",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xad351A57678111F6FB2D480B8625cAa1E36744F3",
            "BBCx7aivZezjInVcI5KuSByQT1KWkaUGWBUZ2FcThHWsC3jzq9ALBQX79687kO/APmJCe/4MLcR3mQe5I4iwCVc=",
            "lE08L59gM8wwZVCYvA6lkLbtw//+1qvEnXdM8HANefk=",
        ),
    ),
    # m/44'/60'/0'/0/42
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x636058Ec9432e994947c3A5BbC213BF46F57447b",
            "0x08fafb158353445c0b00383e30e536aa72771731d715fb0db43859d10d2d3609bd8f67d1c00f0be8fcf6af00c846a0de4d599bb7de644f276daf23a2f1ab61a4",
            "d9dbbd6ad76feeaf1866823757b2be7cb1da8ec0636113cf2c7d1a9e2401245c",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x636058Ec9432e994947c3A5BbC213BF46F57447b",
            "BAj6+xWDU0RcCwA4PjDlNqpydxcx1xX7DbQ4WdENLTYJvY9n0cAPC+j89q8AyEag3k1Zm7feZE8nba8jovGrYaQ=",
            "2du9atdv7q8YZoI3V7K+fLHajsBjYRPPLH0aniQBJFw=",
        ),
    ),
    # m/44'/60'/0'/0/43
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xB395D0c7BcB466776c1e543196b0cDaE03db9547",
            "0x75cff5e23688d9e182020dcf97d35e82f887b22dc70670693141582a1edd6842023ba89561146a44da9b9be935501da7857a5a2cf171fea8ff971f010c39ada7",
            "874cd6d629345c44a1bf6aea00d49178a8c27f1eedb407b1f6b68f928b65bcee",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xB395D0c7BcB466776c1e543196b0cDaE03db9547",
            "BHXP9eI2iNnhggINz5fTXoL4h7ItxwZwaTFBWCoe3WhCAjuolWEUakTam5vpNVAdp4V6Wizxcf6o/5cfAQw5rac=",
            "h0zW1ik0XEShv2rqANSReKjCfx7ttAex9raPkotlvO4=",
        ),
    ),
    # m/44'/60'/0'/0/44
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x0C55fd03705ef43030F1A7108Ba85E5D215ac8f1",
            "0x25d28f0716fd3f678c9d6709804fd1023e5b54fa3e891d04ae3ef638bf79e821b781f207844e3a03b24fa25151ac1143cf251a72c6fd28856f428dc7d536e1c1",
            "0c87522cb5864590804a9e36f5760e0bfce3c7ee977a909f671d9a7d43720eee",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x0C55fd03705ef43030F1A7108Ba85E5D215ac8f1",
            "BCXSjwcW/T9njJ1nCYBP0QI+W1T6PokdBK4+9ji/eeght4HyB4ROOgOyT6JRUawRQ88lGnLG/SiFb0KNx9U24cE=",
            "DIdSLLWGRZCASp429XYOC/zjx+6XepCfZx2afUNyDu4=",
        ),
    ),
    # m/44'/60'/0'/0/45
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xA99E0447509e96c98d88896AF2D22F0cD6dC9DE4",
            "0xd164a1f068c06b9c0157f5c16228d15aea78a4910e1f32e6d2a3cb981bab3cf8879b940e3ae35f31c135283fb0d6b8e6d7f9e9ebc42a56d4d8e5a16a6fb5bf24",
            "370703ea457ce7de71909034077da57f5473277306c60be809ccdf9092e3ce22",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xA99E0447509e96c98d88896AF2D22F0cD6dC9DE4",
            "BNFkofBowGucAVf1wWIo0VrqeKSRDh8y5tKjy5gbqzz4h5uUDjrjXzHBNSg/sNa45tf56evEKlbU2OWham+1vyQ=",
            "NwcD6kV8595xkJA0B32lf1RzJ3MGxgvoCczfkJLjziI=",
        ),
    ),
    # m/44'/60'/0'/0/46
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xB33Ab023B1e70211E848B8e079885aC5fE5A0F35",
            "0xa7c4bd3f71df07b448295f5c809e9befb89c0b61d50a7f3719e651d4644895f5e23da3745c100203d3e601307700fd726398875d47aac9c5eb73ef2934b718c9",
            "c0e0d05975e86ec15a90e2e1bb11a64435616a24d46deef9a9696d4bef78884d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xB33Ab023B1e70211E848B8e079885aC5fE5A0F35",
            "BKfEvT9x3we0SClfXICem++4nAth1Qp/NxnmUdRkSJX14j2jdFwQAgPT5gEwdwD9cmOYh11HqsnF63PvKTS3GMk=",
            "wODQWXXobsFakOLhuxGmRDVhaiTUbe75qWltS+94iE0=",
        ),
    ),
    # m/44'/60'/0'/0/47
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x57EC6EfC5906BFFC0c24708cA48898eDbD41D427",
            "0xb7b5f6113cee980970fea149fb44f486390fe1965bd200ec4b291a68d6e135d464ae74adddd180762bf12dfc9d98a2a7dfc152d38c589b30f6633b94a7862d41",
            "81d861fc56d7978a9d54547d469fa06de12da53ecbb8a2b3b6c3d1afe63f03d5",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x57EC6EfC5906BFFC0c24708cA48898eDbD41D427",
            "BLe19hE87pgJcP6hSftE9IY5D+GWW9IA7EspGmjW4TXUZK50rd3RgHYr8S38nZiip9/BUtOMWJsw9mM7lKeGLUE=",
            "gdhh/FbXl4qdVFR9Rp+gbeEtpT7LuKKztsPRr+Y/A9U=",
        ),
    ),
    # m/44'/60'/0'/0/48
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xdFD7a8aEeC072E7860645568d75Df27c16Ac80F4",
            "0x9056606168b365686d22898f3aaa1a9f1f2250a248d12125c01d176d38929a80c32db1aee92c728dbe8aae2c06b194808efbd5b00f6e22bedfc265d00bb126a9",
            "464563ac0504afb06668828426145cba4b18aff63b3a8551917f3edb60ae6888",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xdFD7a8aEeC072E7860645568d75Df27c16Ac80F4",
            "BJBWYGFos2VobSKJjzqqGp8fIlCiSNEhJcAdF204kpqAwy2xruksco2+iq4sBrGUgI771bAPbiK+38Jl0AuxJqk=",
            "RkVjrAUEr7BmaIKEJhRcuksYr/Y7OoVRkX8+22CuaIg=",
        ),
    ),
    # m/44'/60'/0'/0/49
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xFD0a733E3a6E1480E4934FBcB4c55FD8Dc5EacD1",
            "0x34c6ed79a5e6a0b8875b3165d3f511710c5da3fd328e7f7f2ada98e0ff0c743afdb546ebcf8840d92589fb36696458a65dace9909cee84e4e8724b1c3a03428b",
            "81dc4377d7d9143647a7fc438259b32477509c59862d1a1d6dd4202dd8fcb21a",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xFD0a733E3a6E1480E4934FBcB4c55FD8Dc5EacD1",
            "BDTG7Xml5qC4h1sxZdP1EXEMXaP9Mo5/fyramOD/DHQ6/bVG68+IQNklifs2aWRYpl2s6ZCc7oTk6HJLHDoDQos=",
            "gdxDd9fZFDZHp/xDglmzJHdQnFmGLRodbdQgLdj8sho=",
        ),
    ),
    # m/44'/60'/0'/0/50
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xF76FA1957C5c46203349A286577a07F9F8447d65",
            "0x9168946ab7e4a7855c21c28ec4fd6f50bb0ca4a237efc95e962f842f317f290d911ea84beed54ea111e4188f51b37a080ce1ea320b1278239adb13c6bd0eb60d",
            "c910784f9536645dfdd347311ce4a1e3394637c3c32230481b85fc6ebab012e6",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xF76FA1957C5c46203349A286577a07F9F8447d65",
            "BJFolGq35KeFXCHCjsT9b1C7DKSiN+/JXpYvhC8xfykNkR6oS+7VTqER5BiPUbN6CAzh6jILEngjmtsTxr0Otg0=",
            "yRB4T5U2ZF3900cxHOSh4zlGN8PDIjBIG4X8brqwEuY=",
        ),
    ),
    # m/44'/60'/0'/0/51
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xAd392Ce62D683209bD414D49167f65C8728B6e52",
            "0xc69f2b247e5408caaab8619f89f6aa1ae3ebcff801f2db04188cf4f7252333641445edd545b8e0b8a574d82c2c32e1c39de33d6ee451f0eb326dd395d629cfcb",
            "3ca642843759663d882f9db67a0789aa50425365437a0f64b0b07549ece6038d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xAd392Ce62D683209bD414D49167f65C8728B6e52",
            "BMafKyR+VAjKqrhhn4n2qhrj68/4AfLbBBiM9PclIzNkFEXt1UW44LildNgsLDLhw53jPW7kUfDrMm3TldYpz8s=",
            "PKZChDdZZj2IL522egeJqlBCU2VDeg9ksLB1SezmA40=",
        ),
    ),
    # m/44'/60'/0'/0/52
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xdB8f08eb207888FfE0e9d715e4909E7Bdb409035",
            "0x4b60a3a25851f61b0b986b167d34a5df9f02f55e39e456f5d7530c7c46008adacfe2def97e6685290e873e088e807f93edf3eba0ad01bbdc2cb29d05a4ac04ba",
            "1f20d96d1bd75d97e27e3c0e700c894ba4f29766aa798d260fe2f795226b25ce",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xdB8f08eb207888FfE0e9d715e4909E7Bdb409035",
            "BEtgo6JYUfYbC5hrFn00pd+fAvVeOeRW9ddTDHxGAIraz+Le+X5mhSkOhz4IjoB/k+3z66CtAbvcLLKdBaSsBLo=",
            "HyDZbRvXXZfifjwOcAyJS6Tyl2aqeY0mD+L3lSJrJc4=",
        ),
    ),
    # m/44'/60'/0'/0/53
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x91FDe64B7c4cE7248528B711E0Cac17240BE3c96",
            "0x3ff892dc042df433a34ab4df5f61e9014aeb32c6bdacf97306bcee7f34931f7a4cf6440ea79f80c0e5ee8b1b4b12987aad22bb89878e051d5b25e55d0dce8874",
            "218fabd2842014769e7efb5242415213efde59acdc14faec7758b94810020517",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x91FDe64B7c4cE7248528B711E0Cac17240BE3c96",
            "BD/4ktwELfQzo0q0319h6QFK6zLGvaz5cwa87n80kx96TPZEDqefgMDl7osbSxKYeq0iu4mHjgUdWyXlXQ3OiHQ=",
            "IY+r0oQgFHaefvtSQkFSE+/eWazcFPrsd1i5SBACBRc=",
        ),
    ),
    # m/44'/60'/0'/0/54
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xb1ac8A575FA33Fa176C1AE966c976c0F4dC3d8c3",
            "0x20da26b24ed461727586f92ae52f8a2b40c941025eedac7caa431e6237a8d498272b4b329eafe7ed830d78fa8b9a9adab91b993f8a9c214676595b22217b7931",
            "3277832a3b5d18a0a29124335cf40869f024cec40eda99c1cced493d3adb447b",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xb1ac8A575FA33Fa176C1AE966c976c0F4dC3d8c3",
            "BCDaJrJO1GFydYb5KuUviitAyUECXu2sfKpDHmI3qNSYJytLMp6v5+2DDXj6i5qa2rkbmT+KnCFGdllbIiF7eTE=",
            "MneDKjtdGKCikSQzXPQIafAkzsQO2pnBzO1JPTrbRHs=",
        ),
    ),
    # m/44'/60'/0'/0/55
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x53074b3553c63dF522C1881acCe05aF016b3c931",
            "0x916cabf0e43fd5bc4973ed342e1b3f99ff560340a3b942b50fdfac68659f9794903749d4b352f349599456a328d81a0356dde902c789dd4066daac46a77df90f",
            "2d4de2a32f5a9822f1e0c22cbaa34328c008e9379228c4995661c28ce724d610",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x53074b3553c63dF522C1881acCe05aF016b3c931",
            "BJFsq/DkP9W8SXPtNC4bP5n/VgNAo7lCtQ/frGhln5eUkDdJ1LNS80lZlFajKNgaA1bd6QLHid1AZtqsRqd9+Q8=",
            "LU3ioy9amCLx4MIsuqNDKMAI6TeSKMSZVmHCjOck1hA=",
        ),
    ),
    # m/44'/60'/0'/0/56
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x164090d53e2a42e07Bf0bfB4Ba61876a71b18859",
            "0xe62ca68974dc5aa5ceb820fdc9d08eba81877fd1516dd3cc2cce7daed350f6af4582fb3f80750b79ad2f46829a1123d2ab9cf11d46e0c63a549d3aefe65a98ba",
            "240560eaca11348c5f0a70b55d5d21218271b47eac8a8b75aaa9d99e018c0e44",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x164090d53e2a42e07Bf0bfB4Ba61876a71b18859",
            "BOYspol03Fqlzrgg/cnQjrqBh3/RUW3TzCzOfa7TUPavRYL7P4B1C3mtL0aCmhEj0quc8R1G4MY6VJ067+ZamLo=",
            "JAVg6soRNIxfCnC1XV0hIYJxtH6siot1qqnZngGMDkQ=",
        ),
    ),
    # m/44'/60'/0'/0/57
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xC3E1d84c8C97677F62A1e0cCbAd2466cfbDC004F",
            "0x5feb12fdfdf2db14fbc32ee597ac0d02acc07d530ede4a091533e54f17dd0e296b203cccc4673f28d20728908c30723f8a7e2c08d9fc7870b196a5c995e24a76",
            "2ef4241b13666cd0bf43e899b12eada30841857a008999222fe969c09f50a7e8",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xC3E1d84c8C97677F62A1e0cCbAd2466cfbDC004F",
            "BF/rEv398tsU+8Mu5ZesDQKswH1TDt5KCRUz5U8X3Q4payA8zMRnPyjSByiQjDByP4p+LAjZ/HhwsZalyZXiSnY=",
            "LvQkGxNmbNC/Q+iZsS6towhBhXoAiZkiL+lpwJ9Qp+g=",
        ),
    ),
    # m/44'/60'/0'/0/58
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x67959a19c1269C033A1cc029CaFE9ce65Fd66977",
            "0x4e914ad3139c041b13cf5b7d185afa9f190bbdab106fb3bc0f8ae80b949ceb99eea5a813ca712ae9cdb2cfdbaad9f3294aa91a5f200869a30b7e5435818692aa",
            "1cb9df2b4341a1501d9777cf75a7d29b0cae47ffcad23193abc9a37a6e631dd9",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x67959a19c1269C033A1cc029CaFE9ce65Fd66977",
            "BE6RStMTnAQbE89bfRha+p8ZC72rEG+zvA+K6AuUnOuZ7qWoE8pxKunNss/bqtnzKUqpGl8gCGmjC35UNYGGkqo=",
            "HLnfK0NBoVAdl3fPdafSmwyuR//K0jGTq8mjem5jHdk=",
        ),
    ),
    # m/44'/60'/0'/0/59
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xfb79574ec8510B054585ca6DF42E2532D69E4186",
            "0x39cea64565b1667c51afe3bf67bdcd1173f12181578ee6fe2a913a41923e902532ece593cac6135012f97545e972e4281dd7ab3273b69cd61301a234719be82d",
            "d6ed2a3569540f419337bae7b3c15d46a107ed80c27533d33521054b7e82bbb1",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xfb79574ec8510B054585ca6DF42E2532D69E4186",
            "BDnOpkVlsWZ8Ua/jv2e9zRFz8SGBV47m/iqROkGSPpAlMuzlk8rGE1AS+XVF6XLkKB3XqzJztpzWEwGiNHGb6C0=",
            "1u0qNWlUD0GTN7rns8FdRqEH7YDCdTPTNSEFS36Cu7E=",
        ),
    ),
    # m/44'/60'/0'/0/60
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xBc39041833DB3743167d68d0bA80CBa4901a2868",
            "0x3d5ce1afe77e0eacdcfef9757ed3d509d784d433c189a2fd329eb5a1dcbde43cd121811fbf1aa8c84cc6fef8e59c6bd72c712824a4a0bbec1479eeea3a2ef424",
            "87666e77a30f1c6e37a50df115ea96cec1157c1c1345b9cc1ebf04f9cf8f7c3e",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xBc39041833DB3743167d68d0bA80CBa4901a2868",
            "BD1c4a/nfg6s3P75dX7T1QnXhNQzwYmi/TKetaHcveQ80SGBH78aqMhMxv745Zxr1yxxKCSkoLvsFHnu6jou9CQ=",
            "h2Zud6MPHG43pQ3xFeqWzsEVfBwTRbnMHr8E+c+PfD4=",
        ),
    ),
    # m/44'/60'/0'/0/61
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xddfBF34d9637Ce86930B3379Ec1d386C3a35b95F",
            "0xa225ae6f75db25aae04fb00779856881cb5c7243ae81a5184c6c5208012651e3f44f63af6aad17d99c961f0ffc55026719d4102695fe5362e7e0b0c5678ca71a",
            "2f3553918197dbbd927b4f4a95ff99752a92b9687adc476af60796341cac2669",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xddfBF34d9637Ce86930B3379Ec1d386C3a35b95F",
            "BKIlrm912yWq4E+wB3mFaIHLXHJDroGlGExsUggBJlHj9E9jr2qtF9mclh8P/FUCZxnUECaV/lNi5+CwxWeMpxo=",
            "LzVTkYGX272Se09Klf+ZdSqSuWh63Edq9geWNBysJmk=",
        ),
    ),
    # m/44'/60'/0'/0/62
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x5e9f1Cb0Bd5943CD2D193cB8df2b587482A07E58",
            "0x7630daeedafa3004f92a7bdbc8a38a6ce7f30b5b90bc976e75bb3ab03ccbb030b0d7b3806ca720cdf77e6babf557928827ae1348b5a3796d9aaa0048a7fb38c7",
            "d7596918c4aa7e33daa3b5f30bb75e4b531755e8bd836051738761d40039e0a4",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x5e9f1Cb0Bd5943CD2D193cB8df2b587482A07E58",
            "BHYw2u7a+jAE+Sp728ijimzn8wtbkLyXbnW7OrA8y7AwsNezgGynIM33fmur9VeSiCeuE0i1o3ltmqoASKf7OMc=",
            "11lpGMSqfjPao7XzC7deS1MXVei9g2BRc4dh1AA54KQ=",
        ),
    ),
    # m/44'/60'/0'/0/63
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xf0a0F114d70eC023ac7e1c043a5f9bDDE691fC9c",
            "0x7adb750b34e6d93bb148e96b9077d5eca9c34101b20cab1ce11ae7121f19c5e966c795c3fd35d1dcf4cce378ae577956fbbd14dfa677d16698af019b532b5b5d",
            "b880ed840c77f1e324eacf6963a790e204974aca433099e911941d8ac41760a6",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xf0a0F114d70eC023ac7e1c043a5f9bDDE691fC9c",
            "BHrbdQs05tk7sUjpa5B31eypw0EBsgyrHOEa5xIfGcXpZseVw/010dz0zON4rld5Vvu9FN+md9FmmK8Bm1MrW10=",
            "uIDthAx38eMk6s9pY6eQ4gSXSspDMJnpEZQdisQXYKY=",
        ),
    ),
    # m/44'/60'/0'/0/64
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xFB5aD3fE9cAf0C1d11a6E588e90d7AC8F2919F04",
            "0x4a2c321cd9e078007a0f865c4f92e74336800fcfde2951fb4663f87826f3fe2490c98c4787d4581fb7f163efa6a2718c647e82671718d12efacfebcf8553b0ea",
            "b839c66269afda55cee2b716c9e08fb8259128fb58871cb79dbb6b0b80056ca0",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xFB5aD3fE9cAf0C1d11a6E588e90d7AC8F2919F04",
            "BEosMhzZ4HgAeg+GXE+S50M2gA/P3ilR+0Zj+Hgm8/4kkMmMR4fUWB+38WPvpqJxjGR+gmcXGNEu+s/rz4VTsOo=",
            "uDnGYmmv2lXO4rcWyeCPuCWRKPtYhxy3nbtrC4AFbKA=",
        ),
    ),
    # m/44'/60'/0'/0/65
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x3E3A2C16F2FC6fDEc4Ea177f1DFa09d03cD3b5a2",
            "0x6b61132906d5d3287e6a8c109dd1e00e9d7d3b388d94be7881c04f7e9cb66b076cc7f20f5c74e465cc925ecdfc4bd21b09f82a603a776ea1aa5ef67cbc66402e",
            "0cb126b77b26d38c99bddcba899fa15b18c5b64f48d2a1075f4682ec0ae741c0",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x3E3A2C16F2FC6fDEc4Ea177f1DFa09d03cD3b5a2",
            "BGthEykG1dMofmqMEJ3R4A6dfTs4jZS+eIHAT36ctmsHbMfyD1x05GXMkl7N/EvSGwn4KmA6d26hql72fLxmQC4=",
            "DLEmt3sm04yZvdy6iZ+hWxjFtk9I0qEHX0aC7ArnQcA=",
        ),
    ),
    # m/44'/60'/0'/0/66
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x83F2D35b467b2104DBdfb6fFc355B249C44EA061",
            "0xe78b024f4c45c3d9bb0f25ef3de61439c13a892c0f89a8753c6edf101e243a34a88d4e9511fc1e0b90eb110386d3accb785179e734ac38620d56c8c2e3c2d0b6",
            "d4ae62cbf501347909d599d8c46ace38bdcb7f46ab69d76755af069a70b83817",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x83F2D35b467b2104DBdfb6fFc355B249C44EA061",
            "BOeLAk9MRcPZuw8l7z3mFDnBOoksD4modTxu3xAeJDo0qI1OlRH8HguQ6xEDhtOsy3hReec0rDhiDVbIwuPC0LY=",
            "1K5iy/UBNHkJ1ZnYxGrOOL3Lf0araddnVa8GmnC4OBc=",
        ),
    ),
    # m/44'/60'/0'/0/67
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x7B9a41F726729952f4DA24bC9d23C582Dc9b51Fe",
            "0x720c644c352dba8331d320c89bef2ab0fe949a26ca5aa7032d45ef3d4ffe727b8e4f3f8e834e73babeda015a97f9bc72e48d850c4b69d91d3c5a3be3bad29bba",
            "077234e31c368c6fdda5b04d7ea39105e65bd9e69e0239417f00aef48823255e",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x7B9a41F726729952f4DA24bC9d23C582Dc9b51Fe",
            "BHIMZEw1LbqDMdMgyJvvKrD+lJomylqnAy1F7z1P/nJ7jk8/joNOc7q+2gFal/m8cuSNhQxLadkdPFo747rSm7o=",
            "B3I04xw2jG/dpbBNfqORBeZb2eaeAjlBfwCu9IgjJV4=",
        ),
    ),
    # m/44'/60'/0'/0/68
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x0F28Ab680ebeCFBC003B9Cf2742881C86DA45514",
            "0x14c175026b4c5735630ad7a8a2db13dab3c74bdf58784b0452afb8d17560aabfe395c2dea87b83b9bfae7d03b3b1f71a76a0635183edda669d6a2cad6227ee98",
            "e119620994375721f9e3bcf8a27b45f007ecf238837baf561e26f9a30ff8d155",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x0F28Ab680ebeCFBC003B9Cf2742881C86DA45514",
            "BBTBdQJrTFc1YwrXqKLbE9qzx0vfWHhLBFKvuNF1YKq/45XC3qh7g7m/rn0Ds7H3GnagY1GD7dpmnWosrWIn7pg=",
            "4RliCZQ3VyH547z4ontF8Afs8jiDe69WHib5ow/40VU=",
        ),
    ),
    # m/44'/60'/0'/0/69
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xd86114705f4dbC7e3Fe620f3ef31EAb16c2CDf7C",
            "0xe3cad3079f475aca0cd817897c024dd54e90177a4c6c8af69c1738540714b34469e4c577bfd4f7ce0b8ba39512f6711f82b26a03bf0a8778ae2152061bbeed8a",
            "3361924d4334d4ed1d514bbcba5ad97d6e04296c981b8ca46a0ced236ea9b14f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xd86114705f4dbC7e3Fe620f3ef31EAb16c2CDf7C",
            "BOPK0wefR1rKDNgXiXwCTdVOkBd6TGyK9pwXOFQHFLNEaeTFd7/U984Li6OVEvZxH4KyagO/Cod4riFSBhu+7Yo=",
            "M2GSTUM01O0dUUu8ulrZfW4EKWyYG4ykagztI26psU8=",
        ),
    ),
    # m/44'/60'/0'/0/70
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x52a7a83E89De907e6d17F3979920a5dE76531391",
            "0x4c93f43f249f3824e8646266945eecf692212a0f83641452fdab965eaf15bd09475d43717ce878b7ddec2c40df4de6534c3702830fb6f0a49aa4ddc53be1aaf6",
            "877037b42809baf632e91e40fde3999347227ba851453544c5ddb2d005c83497",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x52a7a83E89De907e6d17F3979920a5dE76531391",
            "BEyT9D8knzgk6GRiZpRe7PaSISoPg2QUUv2rll6vFb0JR11DcXzoeLfd7CxA303mU0w3AoMPtvCkmqTdxTvhqvY=",
            "h3A3tCgJuvYy6R5A/eOZk0cie6hRRTVExd2y0AXINJc=",
        ),
    ),
    # m/44'/60'/0'/0/71
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x84762a992316995462C5A49429130042E21Feb24",
            "0x7df21d6d5f0eea86b2118b709d7605c300da3fd277f58cde9bb442c0bf0b7191db533fca3c08c9f3c3eb9e228be9921251a7bdfaef7b16e6ed0a0972c85199ca",
            "8c03e50b7f82518155ee0c2f0ac0ca41591f491170b2d32d5ef16dda84a2899d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x84762a992316995462C5A49429130042E21Feb24",
            "BH3yHW1fDuqGshGLcJ12BcMA2j/Sd/WM3pu0QsC/C3GR21M/yjwIyfPD654ii+mSElGnvfrvexbm7QoJcshRmco=",
            "jAPlC3+CUYFV7gwvCsDKQVkfSRFwstMtXvFt2oSiiZ0=",
        ),
    ),
    # m/44'/60'/0'/0/72
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x623b8Aed2828630c4f70f973aa5fDf16097a4626",
            "0xcbef4b1d2f2d646ef963eb3f45b94ed2e5f9f77f772658ec454869815889209da12f5bcb5ddc206aa4602edf6ca3595de3665e27fa45acbb463fae918c1c0a9b",
            "b5d04e50194f3ac01cada3077d9716b663eebe06a015122e7b0372e798954333",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x623b8Aed2828630c4f70f973aa5fDf16097a4626",
            "BMvvSx0vLWRu+WPrP0W5TtLl+fd/dyZY7EVIaYFYiSCdoS9by13cIGqkYC7fbKNZXeNmXif6Ray7Rj+ukYwcCps=",
            "tdBOUBlPOsAcraMHfZcWtmPuvgagFRIuewNy55iVQzM=",
        ),
    ),
    # m/44'/60'/0'/0/73
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x05b34aD8BA4F8c611cF43ffD051013bD3BE3af55",
            "0x290e65c9362f0d250347f7359f03136672fa4e3c2b853d33184752731b694205d509f29871026548c9c73280a8b10f252403452ea25118591010c1983315a95e",
            "9ff9171752fb749de81c75779406b2b0072cb1c88a86c3e170bc37dde84661c8",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x05b34aD8BA4F8c611cF43ffD051013bD3BE3af55",
            "BCkOZck2Lw0lA0f3NZ8DE2Zy+k48K4U9MxhHUnMbaUIF1QnymHECZUjJxzKAqLEPJSQDRS6iURhZEBDBmDMVqV4=",
            "n/kXF1L7dJ3oHHV3lAaysAcssciKhsPhcLw33ehGYcg=",
        ),
    ),
    # m/44'/60'/0'/0/74
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x956a76461c300E81f42dA53bA711F57b928E4E04",
            "0xd3a96ab5a3e30234b20fc99551012db3e15cc22e73f198695458e6229e2d40428660f444e03b60378daf8b42a6586a24f557cb65aabd26e6f8e5ed9a00bf0f57",
            "5b686790a8ee5589d6ef098c6e7659097185c6f43d813bad25f35da53024a36e",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x956a76461c300E81f42dA53bA711F57b928E4E04",
            "BNOparWj4wI0sg/JlVEBLbPhXMIuc/GYaVRY5iKeLUBChmD0ROA7YDeNr4tCplhqJPVXy2WqvSbm+OXtmgC/D1c=",
            "W2hnkKjuVYnW7wmMbnZZCXGFxvQ9gTutJfNdpTAko24=",
        ),
    ),
    # m/44'/60'/0'/0/75
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x51C55970Ce0ae13166fD16DE5F58be2309563364",
            "0x01e46292614e7b1b73474af451e539b7825e424245b27a28e249f0dd62938abbdf2df7bd4f38e3024decf480fa417d156aee67f8ae32918fd061cdc9b7e04439",
            "174e2a43af071dab614503eaf65e2741ead1718d7552fa7955fd4b1e1ed00aed",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x51C55970Ce0ae13166fD16DE5F58be2309563364",
            "BAHkYpJhTnsbc0dK9FHlObeCXkJCRbJ6KOJJ8N1ik4q73y33vU844wJN7PSA+kF9FWruZ/iuMpGP0GHNybfgRDk=",
            "F04qQ68HHathRQPq9l4nQerRcY11Uvp5Vf1LHh7QCu0=",
        ),
    ),
    # m/44'/60'/0'/0/76
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x945021CE5C876e153f2D5d7204C4486e125bb52B",
            "0xef2e4732bf96afe99d0c9b8150e5eb7c3fb73b9c87e0803bf83c0a7cc5f41dd761154b30468add4692560f2043dece442833a03cd50502235292f7b3c9ea5a95",
            "0de541c26ac014244ef72b7af559fa8c6d8f797b3c0983a72c7a7f8b31e00ffe",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x945021CE5C876e153f2D5d7204C4486e125bb52B",
            "BO8uRzK/lq/pnQybgVDl63w/tzuch+CAO/g8CnzF9B3XYRVLMEaK3UaSVg8gQ97ORCgzoDzVBQIjUpL3s8nqWpU=",
            "DeVBwmrAFCRO9yt69Vn6jG2PeXs8CYOnLHp/izHgD/4=",
        ),
    ),
    # m/44'/60'/0'/0/77
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x6552400848Bd54Af0e0B076803F9c9fb711fAE18",
            "0x5207cd026b848cf033df9c94aa280926ab09fe08b6474e57e0a936142d404ff009a9d797c935d47009d4dbb6ac71d07a75a8f521b8e2b7f50b4110aefc5c0681",
            "301934cd66566f0ea0de77ec7c6f6442d84b948a821bbcce3649e379bfcd99f3",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x6552400848Bd54Af0e0B076803F9c9fb711fAE18",
            "BFIHzQJrhIzwM9+clKooCSarCf4ItkdOV+CpNhQtQE/wCanXl8k11HAJ1Nu2rHHQenWo9SG44rf1C0EQrvxcBoE=",
            "MBk0zWZWbw6g3nfsfG9kQthLlIqCG7zONknjeb/NmfM=",
        ),
    ),
    # m/44'/60'/0'/0/78
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x764e4d64090B545bB884B9Fd26cE734e362042B7",
            "0x0cd2cfd8b889fdc06d865f644bb4f8e0e212d3769de994d77401a40b766f1836b974f5197094aa616283b48e571f309545d001f35843f5f43fd49e552eaa34b2",
            "a00b17e91eaa044b82441115b40233a0028f017d7f5c83c59cedff5c5b5c0fef",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x764e4d64090B545bB884B9Fd26cE734e362042B7",
            "BAzSz9i4if3AbYZfZEu0+ODiEtN2nemU13QBpAt2bxg2uXT1GXCUqmFig7SOVx8wlUXQAfNYQ/X0P9SeVS6qNLI=",
            "oAsX6R6qBEuCRBEVtAIzoAKPAX1/XIPFnO3/XFtcD+8=",
        ),
    ),
    # m/44'/60'/0'/0/79
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x429Fe9934A554EbB0d992f8dd0ef7CbbB8cdC48C",
            "0x77ed660914912e14c9b453e11d79bdcd63acdec0f906089af3a455773a73f46beb2300c1247c938b1f0d43e4c94d6029e7e1383a5691b4eaff322a57b6e876f4",
            "fdbe7f37c4e40d574469581f92210286a4a94f96f467b82d9358b20e55a9bd7f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x429Fe9934A554EbB0d992f8dd0ef7CbbB8cdC48C",
            "BHftZgkUkS4UybRT4R15vc1jrN7A+QYImvOkVXc6c/Rr6yMAwSR8k4sfDUPkyU1gKefhODpWkbTq/zIqV7bodvQ=",
            "/b5/N8TkDVdEaVgfkiEChqSpT5b0Z7gtk1iyDlWpvX8=",
        ),
    ),
    # m/44'/60'/0'/0/80
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xD8348cb61F78BF0BdaB6a6A224E8c939830CE7b3",
            "0x69a6e07da709837448b3e19fd021e45ac4e1894fd3b6ac30493545ed7eff6562d70ed0bcdd741f1de4dea1bd0bd0060dfe42709c05361faeb9b4954de3b41c8f",
            "1eed9aaec5e59e46b58bf7fccf3307b83b40aa6494cace4c3698eebbbec7af5f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xD8348cb61F78BF0BdaB6a6A224E8c939830CE7b3",
            "BGmm4H2nCYN0SLPhn9Ah5FrE4YlP07asMEk1Re1+/2Vi1w7QvN10Hx3k3qG9C9AGDf5CcJwFNh+uubSVTeO0HI8=",
            "Hu2arsXlnka1i/f8zzMHuDtAqmSUys5MNpjuu77Hr18=",
        ),
    ),
    # m/44'/60'/0'/0/81
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x66983f7EEb7346603Cd580a3c45EF3ceF1Ab58dd",
            "0x51134a2b844362af618876608baf7444e6d1bd310a395112f533d8e90a215b4df188fb822cfad80c53379f28452af609375a2b7c86aaa59f47faa2fcd7c9e2d8",
            "07634baeb12eb1dc1a4d15b346566f65c42d3eeac3099db93bce9c5d1b5d5577",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x66983f7EEb7346603Cd580a3c45EF3ceF1Ab58dd",
            "BFETSiuEQ2KvYYh2YIuvdETm0b0xCjlREvUz2OkKIVtN8Yj7giz62AxTN58oRSr2CTdaK3yGqqWfR/qi/NfJ4tg=",
            "B2NLrrEusdwaTRWzRlZvZcQtPurDCZ25O86cXRtdVXc=",
        ),
    ),
    # m/44'/60'/0'/0/82
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x96cb80Ea07acC199f95f73D330E5026E8FE31b99",
            "0x407ad8a1d0f4d5d488f0a47ae6e32363adafa47780e8bc594807620d03cc378619973c165d11272f8288c74733e8e0132c666366850856c3703e593106b0539b",
            "e8f0238ac9592c9d4aa8aa441cc94137d2c96e658b7055f33312d2ca232eeb48",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x96cb80Ea07acC199f95f73D330E5026E8FE31b99",
            "BEB62KHQ9NXUiPCkeubjI2Otr6R3gOi8WUgHYg0DzDeGGZc8Fl0RJy+CiMdHM+jgEyxmY2aFCFbDcD5ZMQawU5s=",
            "6PAjislZLJ1KqKpEHMlBN9LJbmWLcFXzMxLSyiMu60g=",
        ),
    ),
    # m/44'/60'/0'/0/83
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x83D72E0eD72dA5467D4ca996e6E47A25Efb2F4C1",
            "0x5b69f249d62109880039930dfbf955a3ba85e80d42a7a7dad7821efe84361d838f3f351bd5aa54c47173a1c82c78c12a64559c57470692dfc1e91bf69b828546",
            "32e0589a09995e139906553c11b50b184fe1b67916c58faf7570b5e89ed0eee1",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x83D72E0eD72dA5467D4ca996e6E47A25Efb2F4C1",
            "BFtp8knWIQmIADmTDfv5VaO6hegNQqen2teCHv6ENh2Djz81G9WqVMRxc6HILHjBKmRVnFdHBpLfwekb9puChUY=",
            "MuBYmgmZXhOZBlU8EbULGE/htnkWxY+vdXC16J7Q7uE=",
        ),
    ),
    # m/44'/60'/0'/0/84
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x76443cEBc18d86FFBA21bc26F537e2ba8a882555",
            "0x4b42f51d6f76e450d498e493cbfa3dbbb19a3d372bf684e551bddf989d51c7f7b9a5bc96530c32e2ac1277a0f4de06c1a4d02ac28ad0d72e264bd842e6b94d25",
            "214111817a78c53f6fd19c109e2a4ed61d316a9bfc60774bf73b477d68d466ac",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x76443cEBc18d86FFBA21bc26F537e2ba8a882555",
            "BEtC9R1vduRQ1Jjkk8v6Pbuxmj03K/aE5VG935idUcf3uaW8llMMMuKsEneg9N4GwaTQKsKK0NcuJkvYQua5TSU=",
            "IUERgXp4xT9v0ZwQnipO1h0xapv8YHdL9ztHfWjUZqw=",
        ),
    ),
    # m/44'/60'/0'/0/85
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xf2cC85782B44f7828BA2a4d9Ea87Bec508B33357",
            "0x358cbfb2770a768e29c07091d6db6159f2410557306b731949d58b74869b8b68b9681ebbf07550930e0b0148bd87d8a388598c61b1db680d0f4c09cf77316e2f",
            "a0835f1357a989e623292edc290d2936d1030f64f93384c08ed52de2ae379167",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xf2cC85782B44f7828BA2a4d9Ea87Bec508B33357",
            "BDWMv7J3CnaOKcBwkdbbYVnyQQVXMGtzGUnVi3SGm4touWgeu/B1UJMOCwFIvYfYo4hZjGGx22gND0wJz3cxbi8=",
            "oINfE1epieYjKS7cKQ0pNtEDD2T5M4TAjtUt4q43kWc=",
        ),
    ),
    # m/44'/60'/0'/0/86
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xA58EC24FC1eb389717FB63b6e39c2933c1cFF684",
            "0xa9054de1cafaeac6f54755542835edccb9f433691f58b65828a541aae0849e8763ea0d0f81176c41c143c7db9d126ccd97d630e8a71dcda45b66cf7622be183e",
            "4dcd8cbfff843b0741839ce9c69684e35063bda69800b9fecb622bace3212cc3",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xA58EC24FC1eb389717FB63b6e39c2933c1cFF684",
            "BKkFTeHK+urG9UdVVCg17cy59DNpH1i2WCilQarghJ6HY+oND4EXbEHBQ8fbnRJszZfWMOinHc2kW2bPdiK+GD4=",
            "Tc2Mv/+EOwdBg5zpxpaE41BjvaaYALn+y2IrrOMhLMM=",
        ),
    ),
    # m/44'/60'/0'/0/87
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x1E7C89De5bB8E6E020dA89E255ADa29b2fdd24b1",
            "0xe299041035390b575bc4ee4a992e8cb229f2353207c013a0e0dd8d02294e01b6104a41fb0faa7aef8a8dc821f2bcc98aadadf3203a22acb78b96048f18d6c21b",
            "f89e01678bbc6c922d27ba9e3a5da4985c99ce5d3ab73edd8a9aeca9f93a4804",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x1E7C89De5bB8E6E020dA89E255ADa29b2fdd24b1",
            "BOKZBBA1OQtXW8TuSpkujLIp8jUyB8AToODdjQIpTgG2EEpB+w+qeu+Kjcgh8rzJiq2t8yA6Iqy3i5YEjxjWwhs=",
            "+J4BZ4u8bJItJ7qeOl2kmFyZzl06tz7diprsqfk6SAQ=",
        ),
    ),
    # m/44'/60'/0'/0/88
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xE1a0CD85481F03a643Ef56DD45485C90bacA5Ed7",
            "0x49b41d091bb19a6261581329321d8b190c7c73f83667a49e3d86af60c7c32a3216c0e86c2be735e3384ec0a75ab68f7bb6fdcf6b7a87d060bd99b955f4862853",
            "af63aa22689bba7aa5f2a7079574e65d6847b3656ba9af464173b4d9b277b699",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xE1a0CD85481F03a643Ef56DD45485C90bacA5Ed7",
            "BEm0HQkbsZpiYVgTKTIdixkMfHP4Nmeknj2Gr2DHwyoyFsDobCvnNeM4TsCnWraPe7b9z2t6h9BgvZm5VfSGKFM=",
            "r2OqImibunql8qcHlXTmXWhHs2Vrqa9GQXO02bJ3tpk=",
        ),
    ),
    # m/44'/60'/0'/0/89
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x82CE251D4Db35b434CD246D0762dff4A85dB73D8",
            "0x8367f337ba111eef04fc3dbcde4238b3956ad26fb967cb2878a6936b5b4d32e620a82123de33989c1cd74dc5d5077d00dd1ebb562a73c8dc07416e6874635434",
            "06df08e8bf7fcaa88859d528dc91181c6d7eb3d9c36b7a4341ef1b61389238b7",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x82CE251D4Db35b434CD246D0762dff4A85dB73D8",
            "BINn8ze6ER7vBPw9vN5COLOVatJvuWfLKHimk2tbTTLmIKghI94zmJwc103F1Qd9AN0eu1Yqc8jcB0FuaHRjVDQ=",
            "Bt8I6L9/yqiIWdUo3JEYHG1+s9nDa3pDQe8bYTiSOLc=",
        ),
    ),
    # m/44'/60'/0'/0/90
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x9815f14De23a864D878F857D6A9c40E4b71c38c9",
            "0x1103c0412121228b2061e74315451d331df3149044ff9f025859393ad1c78823c2d429a4b7368ce8a4626a72923cfcde2d946bbabeca71eccd8ccad87772621c",
            "cc980bf3a46b4e109428782f8c1f7a395097dfeb1ab54d7d8342275f3d917c0c",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x9815f14De23a864D878F857D6A9c40E4b71c38c9",
            "BBEDwEEhISKLIGHnQxVFHTMd8xSQRP+fAlhZOTrRx4gjwtQppLc2jOikYmpykjz83i2Ua7q+ynHszYzK2HdyYhw=",
            "zJgL86RrThCUKHgvjB96OVCX3+satU19g0InXz2RfAw=",
        ),
    ),
    # m/44'/60'/0'/0/91
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x6bd9C38EA0d2D125Bb37EE8923077EB1311C0838",
            "0x1c59cca46d6eb30b22a68da76515c5b0112f372ab1f7979c7c090af721ad7d24f1132c643a70a59fb4fc79be966f794c3348c5e9a7586845e059e36afdc17623",
            "1fe682d437c1612353459833078d63402c03230ba34274cf04fd7fc6b266a5dc",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x6bd9C38EA0d2D125Bb37EE8923077EB1311C0838",
            "BBxZzKRtbrMLIqaNp2UVxbARLzcqsfeXnHwJCvchrX0k8RMsZDpwpZ+0/Hm+lm95TDNIxemnWGhF4Fnjav3BdiM=",
            "H+aC1DfBYSNTRZgzB41jQCwDIwujQnTPBP1/xrJmpdw=",
        ),
    ),
    # m/44'/60'/0'/0/92
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xf13a16B8CD06037E0edD7f17FE2f26cDAeF9F11a",
            "0xe8718504c5ca0db7acafa51bacb5cd775a9b542937647f9563e3505b55d201ffe44c17dfde600a5c359492322fd38c6ccb29def87a93db5ea501491438493b47",
            "dee279457e5f2b3c15457be9cf69ef4d02956d865ca8f02a6f00bbc1e744c76a",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xf13a16B8CD06037E0edD7f17FE2f26cDAeF9F11a",
            "BOhxhQTFyg23rK+lG6y1zXdam1QpN2R/lWPjUFtV0gH/5EwX395gClw1lJIyL9OMbMsp3vh6k9tepQFJFDhJO0c=",
            "3uJ5RX5fKzwVRXvpz2nvTQKVbYZcqPAqbwC7wedEx2o=",
        ),
    ),
    # m/44'/60'/0'/0/93
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x9da00a6A3a35Fc002a285de85Ac4083327A96a50",
            "0xd06df0be0864d2d8b34ab451f6a0f6a49d864975291e7c68725b0480d9355af625ecd078a7c03b3278656f729c005244d88be5bf8e4f3c18d728f55ca7cb95a8",
            "51faba73f416e48937b389f4c877ce63e3c3c7f2b8c690ec0700cfb978297996",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x9da00a6A3a35Fc002a285de85Ac4083327A96a50",
            "BNBt8L4IZNLYs0q0Ufag9qSdhkl1KR58aHJbBIDZNVr2JezQeKfAOzJ4ZW9ynABSRNiL5b+OTzwY1yj1XKfLlag=",
            "Ufq6c/QW5Ik3s4n0yHfOY+PDx/K4xpDsBwDPuXgpeZY=",
        ),
    ),
    # m/44'/60'/0'/0/94
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x53c3A99F6FA910461c2bbe1AD4dEd24bBc1F0047",
            "0x38cc8dc4bf279ac67f31a904a5bec2a86668e9878e0f6549bd5981ffa2fecc869b6a5ab35f39e7456a142f44d93a2454653b3758de10ebda13a2a86eeec24933",
            "57c605a240adf4d6b5ac73c08ef4fb35e32471ddb52a011020da96d03487e8e5",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x53c3A99F6FA910461c2bbe1AD4dEd24bBc1F0047",
            "BDjMjcS/J5rGfzGpBKW+wqhmaOmHjg9lSb1Zgf+i/syGm2pas18550VqFC9E2TokVGU7N1jeEOvaE6Kobu7CSTM=",
            "V8YFokCt9Na1rHPAjvT7NeMkcd21KgEQINqW0DSH6OU=",
        ),
    ),
    # m/44'/60'/0'/0/95
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xC82f246AE9AA5547eE5DDCC60C91A8e3C9254Ea5",
            "0x57367b4320ca1fe1b16be708784775f76ad10f2c9deb5162a557074075ce4fb24139c7c22d311687e1376fb8358c7374e3759d500832f163c1f5d2b966763452",
            "805782985e23872722bf9f0474a230735c4a960bcf22b9dfc2366b6ea890d2a1",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xC82f246AE9AA5547eE5DDCC60C91A8e3C9254Ea5",
            "BFc2e0Mgyh/hsWvnCHhHdfdq0Q8snetRYqVXB0B1zk+yQTnHwi0xFofhN2+4NYxzdON1nVAIMvFjwfXSuWZ2NFI=",
            "gFeCmF4jhyciv58EdKIwc1xKlgvPIrnfwjZrbqiQ0qE=",
        ),
    ),
    # m/44'/60'/0'/0/96
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x8fD4dd171eCc1E78444E192023E65965c9914Bc3",
            "0xf18e12e36c502e6fe183da97154e0d65f57a7e9fc596c3839ac31b0a70f270d5fba0b8789cf94839af7c850dfa8bf5477d6d1dd4db325e5374a312119fe48200",
            "825f1813feee6d2b6106b0a742a6830d3a75f4f35a22fa901ef3427fee9b7ad6",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x8fD4dd171eCc1E78444E192023E65965c9914Bc3",
            "BPGOEuNsUC5v4YPalxVODWX1en6fxZbDg5rDGwpw8nDV+6C4eJz5SDmvfIUN+ov1R31tHdTbMl5TdKMSEZ/kggA=",
            "gl8YE/7ubSthBrCnQqaDDTp19PNaIvqQHvNCf+6betY=",
        ),
    ),
    # m/44'/60'/0'/0/97
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x1F064F92cA6833FE86409D609527ACA5C8b5cB43",
            "0x347bbf53d0ba784d739e0a1e3704ba209322ee1b6dfbadcd4bc8e506cd1b6ae9c8054c585da6f554875fd0a3baf15ae292109cbcca812f643a21adfe7f9766",
            "099dc55eb9ccee41739d5889c9656cf263988c9c332e0c4250b1730ac974a2ed",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x1F064F92cA6833FE86409D609527ACA5C8b5cB43",
            "BDR7v1PQunhNc54KHjcEuiCTIu4bbfutzUvI5QbNG2rpyAVMWF2m9VSHX9CjuvFa4pIQnLzKgS9kOiGt/n+XZg==",
            "CZ3FXrnM7kFznViJyWVs8mOYjJwzLgxCULFzCsl0ou0=",
        ),
    ),
    # m/44'/60'/0'/0/98
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xcD8D5477Bc1557545F2673110ee200B34599ffd0",
            "0xd58c347e6361b135e190024f9e7fd45a22e74f827db9126734239a1e9f69cf9207ea7279538eb1cf7971d19201eb6a4090b143aba69ac62fcf9989e53ac86488",
            "dada460d6d9ad6d175c1ce5ff0f6ee60fbac5ead4c5a50022b56a41a5c46594d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xcD8D5477Bc1557545F2673110ee200B34599ffd0",
            "BNWMNH5jYbE14ZACT55/1Foi50+CfbkSZzQjmh6fac+SB+pyeVOOsc95cdGSAetqQJCxQ6ummsYvz5mJ5TrIZIg=",
            "2tpGDW2a1tF1wc5f8PbuYPusXq1MWlACK1akGlxGWU0=",
        ),
    ),
    # m/44'/60'/0'/0/99
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xf4095e845e78B0e0304b3E4c3D8708D8CF1FAAe0",
            "0x2198b3e65f7ab30351f0fe70f4364001e0f1a091523e404fa0733425109f967de128b7230a0a17c907b7fe50d368786e8f7b74acf65d7fc7b31b6d4339856835",
            "8990a165648f9c4f9eef05da826c7a7781b501fb48834d5c5b118928feefbef6",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xf4095e845e78B0e0304b3E4c3D8708D8CF1FAAe0",
            "BCGYs+ZferMDUfD+cPQ2QAHg8aCRUj5AT6BzNCUQn5Z94Si3IwoKF8kHt/5Q02h4bo97dKz2XX/HsxttQzmFaDU=",
            "iZChZWSPnE+e7wXagmx6d4G1AftIg01cWxGJKP7vvvY=",
        ),
    ),
    # m/44'/60'/0'/0/100
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x0065bb2c5832a6e956Dba45fb7AC0250321d75B6",
            "0x7f8bad276ac5b7662a5c7e40de907dc2f284fe9d14788807103bb08c1301a00b5a7c7442793cd81d86e41fff196a283dae63217c352ca1746cd1ff4ba97c0044",
            "e408e14cbd0f5a38fb830f4d64507bdf25f688647ef1a64b4323c4a9b0336926",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x0065bb2c5832a6e956Dba45fb7AC0250321d75B6",
            "BH+LrSdqxbdmKlx+QN6QfcLyhP6dFHiIBxA7sIwTAaALWnx0Qnk82B2G5B//GWooPa5jIXw1LKF0bNH/S6l8AEQ=",
            "5AjhTL0PWjj7gw9NZFB73yX2iGR+8aZLQyPEqbAzaSY=",
        ),
    ),
    # m/44'/60'/0'/0/101
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x000eB716cdDFa0e1BaA457b45Dd5326F7c9d6371",
            "0xce933b26c3dfd7f6b875fbc82f703e56e69e541251bbfd394e60c1607e24f775cf5992bd731284cf7a1a7150c9235167bce0b0854a2ed1f4fa88a55ddf78db47",
            "d743b8a689899d86fc5760f09ac68d9c98cd5e9df8cf613a2644b196a1f4da26",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x000eB716cdDFa0e1BaA457b45Dd5326F7c9d6371",
            "BM6TOybD39f2uHX7yC9wPlbmnlQSUbv9OU5gwWB+JPd1z1mSvXMShM96GnFQySNRZ7zgsIVKLtH0+oilXd9420c=",
            "10O4pomJnYb8V2DwmsaNnJjNXp34z2E6JkSxlqH02iY=",
        ),
    ),
    # m/44'/60'/0'/0/102
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x6c4e429b7b8FFF26a56b81e5945c69f2b2DC4FD3",
            "0x4132b0da553724cddbe0bf443405b757836afd4b5b48f3ff27266e46821230a8357562ad65363cd6f14b8027475db74b169b26fd116c92723316bd38ab5c1dd6",
            "4a5dd71454dfd9fe5882acbabcef157e386b827e78d4358ea6cb435688122cab",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x6c4e429b7b8FFF26a56b81e5945c69f2b2DC4FD3",
            "BEEysNpVNyTN2+C/RDQFt1eDav1LW0jz/ycmbkaCEjCoNXVirWU2PNbxS4AnR123SxabJv0RbJJyMxa9OKtcHdY=",
            "Sl3XFFTf2f5Ygqy6vO8Vfjhrgn541DWOpstDVogSLKs=",
        ),
    ),
    # m/44'/60'/0'/0/103
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x13d6742D75066622502515003d82929Cc09D9Ebf",
            "0x9765bb290f8446ca692a77be4eddcc3d72bb2e91327eb30c8ccaf69c7dee239777b4a83946b7d71354dbee55b0cd70a77251bcfa63f04ab2b3422eb7c50c56f0",
            "2137c502d0a2262c9bf6e74d01f60ff441b82a865e3ff6eb76785fdf7e7137b0",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x13d6742D75066622502515003d82929Cc09D9Ebf",
            "BJdluykPhEbKaSp3vk7dzD1yuy6RMn6zDIzK9px97iOXd7SoOUa31xNU2+5VsM1wp3JRvPpj8Eqys0Iut8UMVvA=",
            "ITfFAtCiJiyb9udNAfYP9EG4KoZeP/brdnhf335xN7A=",
        ),
    ),
    # m/44'/60'/0'/0/104
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x7A1Cb4196F4998A4dfEBf77cdb0E7EE57bD5369C",
            "0x74069c9d301ad4ffd81a71a2d934f5cd7271e461e8f9ed71cef7b230af23cb2786169a455a211bc661e0b8910cfa2156fb3dd9a38f9bad6d2534f964eca90a4f",
            "90e58b075605eb23cb8c3339c5022075f7600ff7d8516afc4676700069878ebe",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x7A1Cb4196F4998A4dfEBf77cdb0E7EE57bD5369C",
            "BHQGnJ0wGtT/2Bpxotk09c1yceRh6Pntcc73sjCvI8snhhaaRVohG8Zh4LiRDPohVvs92aOPm61tJTT5ZOypCk8=",
            "kOWLB1YF6yPLjDM5xQIgdfdgD/fYUWr8RnZwAGmHjr4=",
        ),
    ),
    # m/44'/60'/0'/0/105
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x7777eB5D67D770805bc991Bf8fDE6244F9281A3a",
            "0x4243a4a81bc7999f0475b09e068c18ec9cf07fa14ec96a8eea9f72a49d77a15a9732fbac72e023aa2b8aeea7b756a2557de55f58f27f2690e20211cd6e74ae80",
            "d4dc0dcd62b73bd33cad9bdba73c32121235c729166258b225bfc80c1326a196",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x7777eB5D67D770805bc991Bf8fDE6244F9281A3a",
            "BEJDpKgbx5mfBHWwngaMGOyc8H+hTslqjuqfcqSdd6FalzL7rHLgI6oriu6nt1aiVX3lX1jyfyaQ4gIRzW50roA=",
            "1NwNzWK3O9M8rZvbpzwyEhI1xykWYliyJb/IDBMmoZY=",
        ),
    ),
    # m/44'/60'/0'/0/106
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x34a4d7c460eE339f341CDE6C4883A42b7f8f3Ee9",
            "0x83d7c8f27fec7d12b1f9b7c8e15cb9fe3900883ae9cf4bbc5c18db153981aabb45101b8e20b2c621c2b150a69d3f0ff75f23c62c9b35d716eb7ae0b318b1b2ef",
            "adba2c84d03cdfdc877004da6152e6565c0cc7709a5c7e0f29518f89b76c3b71",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x34a4d7c460eE339f341CDE6C4883A42b7f8f3Ee9",
            "BIPXyPJ/7H0Ssfm3yOFcuf45AIg66c9LvFwY2xU5gaq7RRAbjiCyxiHCsVCmnT8P918jxiybNdcW63rgsxixsu8=",
            "rboshNA839yHcATaYVLmVlwMx3CaXH4PKVGPibdsO3E=",
        ),
    ),
    # m/44'/60'/0'/0/107
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xBbdE70F73Ea760689A3376290B12D5041CA9E38a",
            "0x560044e5e9efdf8ebe21a5ecdf72b7de593d9a110dd9bbe7f0e3ee0c0d22575b435ac700e63ee445578232c536f804091434a1b44af1527fd0264b3a1a75b4f4",
            "59812e005b0faf23e7923472a7b973277f602e1f645dc308a04333297912c5e0",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xBbdE70F73Ea760689A3376290B12D5041CA9E38a",
            "BFYAROXp79+OviGl7N9yt95ZPZoRDdm75/Dj7gwNIldbQ1rHAOY+5EVXgjLFNvgECRQ0obRK8VJ/0CZLOhp1tPQ=",
            "WYEuAFsPryPnkjRyp7lzJ39gLh9kXcMIoEMzKXkSxeA=",
        ),
    ),
    # m/44'/60'/0'/0/108
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x237E0d54Cfc4D61DBfcb05d2892cD9973f6Fae10",
            "0xccdc87de3c063d6ac4f0c04b0b1666d4d0565f8bed51763905bbf7f90baa3f3c2034c109cfaead9ca907bb2368f33ad6221ab9f8aaaceabfde5bcbf82b6c719d",
            "a8674bd603b56f61d2f770e63538fd982ff8cd7ae0db113c7b8fe535b0432478",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x237E0d54Cfc4D61DBfcb05d2892cD9973f6Fae10",
            "BMzch948Bj1qxPDASwsWZtTQVl+L7VF2OQW79/kLqj88IDTBCc+urZypB7sjaPM61iIaufiqrOq/3lvL+CtscZ0=",
            "qGdL1gO1b2HS93DmNTj9mC/4zXrg2xE8e4/lNbBDJHg=",
        ),
    ),
    # m/44'/60'/0'/0/109
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x8C84A76F109A2f3839c6F1B62e732fDED670935b",
            "0x9190e71cc4ee9b0e449a5b16408e9b8ac7f67423c274881604baab65e4a28120bb347eb4f9476e1789167ae788390707e43c51ca13572c79d24dfefc6c74e426",
            "d769cf4e41496864bedd50609b8810841a325a4f1f576f3feda59fc29c079369",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x8C84A76F109A2f3839c6F1B62e732fDED670935b",
            "BJGQ5xzE7psORJpbFkCOm4rH9nQjwnSIFgS6q2XkooEguzR+tPlHbheJFnrniDkHB+Q8UcoTVyx50k3+/Gx05CY=",
            "12nPTkFJaGS+3VBgm4gQhBoyWk8fV28/7aWfwpwHk2k=",
        ),
    ),
    # m/44'/60'/0'/0/110
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x68dcCE4ecF81684011fC5AE24Fa96eD49Da0b200",
            "0x9c41b9dac7828b983e66e25eae094409a4c4ac7480715d0c821d4732398bb2c29ac9765e9d20b0d86840afb1bd271081235e80b9cd5485be985a546de29d5de4",
            "d0511a8195c99d65f1637c4fc679f70add3b4dbe190d495f262f8587889f6ac6",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x68dcCE4ecF81684011fC5AE24Fa96eD49Da0b200",
            "BJxBudrHgouYPmbiXq4JRAmkxKx0gHFdDIIdRzI5i7LCmsl2Xp0gsNhoQK+xvScQgSNegLnNVIW+mFpUbeKdXeQ=",
            "0FEagZXJnWXxY3xPxnn3Ct07Tb4ZDUlfJi+Fh4ifasY=",
        ),
    ),
    # m/44'/60'/0'/0/111
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x5061cF400b8D1B0AFb2ccA9871802947a3AEbCe1",
            "0x796a88cc52771e60f6905dee88b86fa8f4835b7c4d8452a156342ed9ff79650fb01832a4b72b713967daaa3348d19a7741d5a7e7f7020f05c8e90056850ae2bb",
            "2fee0c84a1d4c8ad3bd01c4591a8cb61ed8f0e2d4462cb8ddf73244b1117d2c2",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x5061cF400b8D1B0AFb2ccA9871802947a3AEbCe1",
            "BHlqiMxSdx5g9pBd7oi4b6j0g1t8TYRSoVY0Ltn/eWUPsBgypLcrcTln2qozSNGad0HVp+f3Ag8FyOkAVoUK4rs=",
            "L+4MhKHUyK070BxFkajLYe2PDi1EYsuN33MkSxEX0sI=",
        ),
    ),
    # m/44'/60'/0'/0/112
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x4Fe31E1F98651AA18b5b5875782e11e02Fe81cEa",
            "0xa196feac7ad8bbd36c0d489722c2f8f75a347030cad391ced2b62004874e88f140d7dc98a28f17b4f18a31644a99498f79d1cdd666982b3c1aacc0235c2d5ad1",
            "b340416a1632afdba76f788556cee75d38c6cc7f902736e94b15fbaf2cc120f9",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x4Fe31E1F98651AA18b5b5875782e11e02Fe81cEa",
            "BKGW/qx62LvTbA1IlyLC+PdaNHAwytORztK2IASHTojxQNfcmKKPF7TxijFkSplJj3nRzdZmmCs8GqzAI1wtWtE=",
            "s0BBahYyr9unb3iFVs7nXTjGzH+QJzbpSxX7ryzBIPk=",
        ),
    ),
    # m/44'/60'/0'/0/113
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x380F3CAFb775D3c1bE9AE1C1247F890712717D7C",
            "0xa792472ff369d43f0d97ff29830db83720915b498b5a222e93763c49ed3935eaf9e670eb8c68975bfd2576005d50e8579e90aac5f6026fcddb830b044182db91",
            "1d2f2aea6c51ceb7c377944e0c894906eb97010c2a6d98a0ac99bcf708f1590b",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x380F3CAFb775D3c1bE9AE1C1247F890712717D7C",
            "BKeSRy/zadQ/DZf/KYMNuDcgkVtJi1oiLpN2PEntOTXq+eZw64xol1v9JXYAXVDoV56QqsX2Am/N24MLBEGC25E=",
            "HS8q6mxRzrfDd5RODIlJBuuXAQwqbZigrJm89wjxWQs=",
        ),
    ),
    # m/44'/60'/0'/0/114
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xeF863C1C5D9f69107fa4Dc95eAe2c1549BD61bcE",
            "0x05fc77de21188031ba6d8f83817e127bf7ad4ef3fb9afc46d1d37b86fdae08566ba8a96b2041a20a615ea57b55c080a86af8ac58b543bedfcc29c638588f86",
            "068d92e8d4b6d77b5841db89847ee9e00938f407950091b502d2149a46a0e621",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xeF863C1C5D9f69107fa4Dc95eAe2c1549BD61bcE",
            "BAX8d94hGIAxum2Pg4F+Env3rU7z+5r8RtHTe4b9rghWa6ipayBBogphXqV7VcCAqGr4rFi1Q77fzCnGOFiPhg==",
            "Bo2S6NS213tYQduJhH7p4Ak49AeVAJG1AtIUmkag5iE=",
        ),
    ),
    # m/44'/60'/0'/0/115
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x61a4a4993A40B74902fA722B16e1512E8B629EA4",
            "0xbd84555d15c838d39e90d95ee3139cdd3ddce06393a6d8ed58105f2d2e0ec816c0010a43f8e79d7e116be3b02113dcf26636aa6ec749f91cd9f760dd157f215f",
            "80e100cd3ed345ab65f63092cdb73da9dd695b3260addb635f38c83d3cba5367",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x61a4a4993A40B74902fA722B16e1512E8B629EA4",
            "BL2EVV0VyDjTnpDZXuMTnN093OBjk6bY7VgQXy0uDsgWwAEKQ/jnnX4Ra+OwIRPc8mY2qm7HSfkc2fdg3RV/IV8=",
            "gOEAzT7TRatl9jCSzbc9qd1pWzJgrdtjXzjIPTy6U2c=",
        ),
    ),
    # m/44'/60'/0'/0/116
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xdFcD0a432dCeAd7eF6140887cAfd9832A36DdB6B",
            "0xd35d52388bcd0c8fb655e210d6e78a207595c316352d230a360bd455edd897ba199a03d43613cfdce8599a668ffccabfb994d4a69ac988067420f763aadabc96",
            "0c4e6767fead9494194d584132a6fa4ffe6ddec0e5d4191276a0ff6fcafd45df",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xdFcD0a432dCeAd7eF6140887cAfd9832A36DdB6B",
            "BNNdUjiLzQyPtlXiENbniiB1lcMWNS0jCjYL1FXt2Je6GZoD1DYTz9zoWZpmj/zKv7mU1KaayYgGdCD3Y6ravJY=",
            "DE5nZ/6tlJQZTVhBMqb6T/5t3sDl1BkSdqD/b8r9Rd8=",
        ),
    ),
    # m/44'/60'/0'/0/117
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x2D6151092dEe7837982BDb7EB2Ec9ab6F200f93a",
            "0xd351d9998e07b25310008e522bdb5862d694359f3ec642cc7616ca45fcb3d6eff52ed248c852da9cf023400975c2a20bfc6fb853a8f4219a06e93fd7392da01a",
            "fe0fee812ef1462e051e1db63a261ec1ef5054687fccab0527bb213ebd5c2997",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x2D6151092dEe7837982BDb7EB2Ec9ab6F200f93a",
            "BNNR2ZmOB7JTEACOUivbWGLWlDWfPsZCzHYWykX8s9bv9S7SSMhS2pzwI0AJdcKiC/xvuFOo9CGaBuk/1zktoBo=",
            "/g/ugS7xRi4FHh22OiYewe9QVGh/zKsFJ7shPr1cKZc=",
        ),
    ),
    # m/44'/60'/0'/0/118
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xc8c35421C1FdE69C332d5fC6072179CC494c519B",
            "0xab074854e71c96e7ffea033514e8d15e5b6c228102c144922bf43e09a50ffbebe1b3d4b384f4783a9549755e000b94fc594d4195c2954fd602e971610783655a",
            "4b6a4583d2c0aac07cd7217f1644cc5ce9339057fe23a9033fde66d8558064ef",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xc8c35421C1FdE69C332d5fC6072179CC494c519B",
            "BKsHSFTnHJbn/+oDNRTo0V5bbCKBAsFEkiv0PgmlD/vr4bPUs4T0eDqVSXVeAAuU/FlNQZXClU/WAulxYQeDZVo=",
            "S2pFg9LAqsB81yF/FkTMXOkzkFf+I6kDP95m2FWAZO8=",
        ),
    ),
    # m/44'/60'/0'/0/119
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x8862296bbaFbbA6A9A0d1E630Fe24E880daFb38a",
            "0x11fcead4de4bd2704e044568950a30480aeab2a44664496854995e0cafc4fafb441ee918484061fbae29feba8b6ff3afcf3b9064d7a14d04446f3ef72c42825f",
            "9183cfc06bcc868a0bedff2f2013a1c672fc6509083955d2d7854de56bf383b9",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x8862296bbaFbbA6A9A0d1E630Fe24E880daFb38a",
            "BBH86tTeS9JwTgRFaJUKMEgK6rKkRmRJaFSZXgyvxPr7RB7pGEhAYfuuKf66i2/zr887kGTXoU0ERG8+9yxCgl8=",
            "kYPPwGvMhooL7f8vIBOhxnL8ZQkIOVXS14VN5Wvzg7k=",
        ),
    ),
    # m/44'/60'/0'/0/120
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x7570a507e30Ac871b39015dD16eDBF7F8972a3B8",
            "0xa7ea254757230aa453512a22badde58ee75f8b93c7c627897a22d385bddb222e29eb7025ecd897cc65f4e86cfd2d63adaa471489a3290a1697f356094e7d75e8",
            "b484636f91cfc449a5a9ec076e607ed10e0e9ecbb183dc55299865c3e4910002",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x7570a507e30Ac871b39015dD16eDBF7F8972a3B8",
            "BKfqJUdXIwqkU1EqIrrd5Y7nX4uTx8YniXoi04W92yIuKetwJezYl8xl9Ohs/S1jrapHFImjKQoWl/NWCU59deg=",
            "tIRjb5HPxEmlqewHbmB+0Q4Onsuxg9xVKZhlw+SRAAI=",
        ),
    ),
    # m/44'/60'/0'/0/121
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xb8784d062fD4D381c1f63CB9931455D197ab7B22",
            "0xeb036c9e919e0e8da79f858cce1086393e075e967d3a5b33dabc79a5a09cab1d8b8a748eea05b38f0f3f5d5e7c8cc16f9e866539525fbe0630551cd205295f60",
            "11213bda0917e1a53256614bd0e22122ba429f77b18321fc3253f896a08205fd",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xb8784d062fD4D381c1f63CB9931455D197ab7B22",
            "BOsDbJ6Rng6Np5+FjM4Qhjk+B16WfTpbM9q8eaWgnKsdi4p0juoFs48PP11efIzBb56GZTlSX74GMFUc0gUpX2A=",
            "ESE72gkX4aUyVmFL0OIhIrpCn3exgyH8MlP4lqCCBf0=",
        ),
    ),
    # m/44'/60'/0'/0/122
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x9160Da2E3a28F0DD8D0BA0e05f109706A2eE2539",
            "0x6e85365fd1a00922fb11df56cba34e8ab2fc8c088a64bb60e95909c3b1d94790313c9d017c2dbe5934f6acb08d94030f266986242ef6e8753e1f0dee94ef9a86",
            "4b14d3f8e55c64342ddefb92896e2588e871840041466fb86190717c34131db1",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x9160Da2E3a28F0DD8D0BA0e05f109706A2eE2539",
            "BG6FNl/RoAki+xHfVsujToqy/IwIimS7YOlZCcOx2UeQMTydAXwtvlk09qywjZQDDyZphiQu9uh1Ph8N7pTvmoY=",
            "SxTT+OVcZDQt3vuSiW4liOhxhABBRm+4YZBxfDQTHbE=",
        ),
    ),
    # m/44'/60'/0'/0/123
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x12F4C2771E19990DeACd9A421FaED5Be7D55C7b0",
            "0xf10c1f81df5ca408bcca39f81610403c50804d72413fc6785d983d6677183256a5480fbf617ad75cc94e9ddcc120abd229ded324f4c0c455d275405fbf36e58e",
            "ef817ee3d83b7dcbddf0e130a35a654be824c48442741fc4d0992150bde5df12",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x12F4C2771E19990DeACd9A421FaED5Be7D55C7b0",
            "BPEMH4HfXKQIvMo5+BYQQDxQgE1yQT/GeF2YPWZ3GDJWpUgPv2F611zJTp3cwSCr0ine0yT0wMRV0nVAX7825Y4=",
            "74F+49g7fcvd8OEwo1plS+gkxIRCdB/E0JkhUL3l3xI=",
        ),
    ),
    # m/44'/60'/0'/0/124
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x7d0AEd4db824ad22F15E91ADCB25f9072Dba71b7",
            "0x057066e9bdbaed73cb53c3c7bbd12d42e50337750c418ff9ace8b202b61bd9af70878d72bc0b1ec7b116239fb3675113c0c874496cf091167180d64958d8511e",
            "1b9977b515b07e2510550b17ed7effb6212126b7656ca930803148f300642d68",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x7d0AEd4db824ad22F15E91ADCB25f9072Dba71b7",
            "BAVwZum9uu1zy1PDx7vRLULlAzd1DEGP+azosgK2G9mvcIeNcrwLHsexFiOfs2dRE8DIdEls8JEWcYDWSVjYUR4=",
            "G5l3tRWwfiUQVQsX7X7/tiEhJrdlbKkwgDFI8wBkLWg=",
        ),
    ),
    # m/44'/60'/0'/0/125
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x8c284988C4F37a6b53528602AA19f0D89400b0b2",
            "0x0233bef0ca141a06893f69a96f9d14ee134274ab27fb0763c3321cc4d402764530892a757b5ef0c4aad86cde5c7eaf6db3b74f91149beb7ba2c902382229aefb",
            "9b64012c29ff4db3282ce0e3ba022551212fdb3b8621fa37d17d16b61d22f7f5",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x8c284988C4F37a6b53528602AA19f0D89400b0b2",
            "BAIzvvDKFBoGiT9pqW+dFO4TQnSrJ/sHY8MyHMTUAnZFMIkqdXte8MSq2GzeXH6vbbO3T5EUm+t7oskCOCIprvs=",
            "m2QBLCn/TbMoLODjugIlUSEv2zuGIfo30X0Wth0i9/U=",
        ),
    ),
    # m/44'/60'/0'/0/126
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xd45efE54659B4322E05b785722b274FA174f7644",
            "0x5a3c747102235bcf0cf9d707860c301df51157a2632b55681b4ada9b19822370536838e47c59c6ec1873590af1117d38d5f8bdf015ad5806181efd5b273b5a53",
            "ccaa8df52cab2e4baf7e44086c78bd8c63d399a3abe2493e45bfc7b71b88e834",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xd45efE54659B4322E05b785722b274FA174f7644",
            "BFo8dHECI1vPDPnXB4YMMB31EVeiYytVaBtK2psZgiNwU2g45HxZxuwYc1kK8RF9ONX4vfAVrVgGGB79Wyc7WlM=",
            "zKqN9SyrLkuvfkQIbHi9jGPTmaOr4kk+Rb/HtxuI6DQ=",
        ),
    ),
    # m/44'/60'/0'/0/127
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xa68EBB23599cf907802A92497Afa94B453D1552A",
            "0x739cfaeab8e35c57278f11e8e37536b06c6229f9865adb0b719ca694ebc8816e665a7251c239263c1fb98f30778e76137ffcecea2d6d93cada53bb446203e0b8",
            "afa3a2afda402c7260a31377cd2983048ccb01e17d30307bbd620604653551bd",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xa68EBB23599cf907802A92497Afa94B453D1552A",
            "BHOc+uq441xXJ48R6ON1NrBsYin5hlrbC3GcppTryIFuZlpyUcI5JjwfuY8wd452E3/87OotbZPK2lO7RGID4Lg=",
            "r6Oir9pALHJgoxN3zSmDBIzLAeF9MDB7vWIGBGU1Ub0=",
        ),
    ),
    # m/44'/60'/0'/0/128
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x26b514b018dD09ae935e7C5e5eC6Cd4419A08E88",
            "0xd50c121fa1bd6982aee8ff41d43cce90a98111d9421edba29f9e4c78caf5537f85950420715285bacc33001690e14440a5e5afe422646dd938cbf0bf9b7708d5",
            "c6410b4c0cb19286e2e7f8e9b3d1f1d4961035ba15ac307374141a5d2db9ef4c",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x26b514b018dD09ae935e7C5e5eC6Cd4419A08E88",
            "BNUMEh+hvWmCruj/QdQ8zpCpgRHZQh7bop+eTHjK9VN/hZUEIHFShbrMMwAWkOFEQKXlr+QiZG3ZOMvwv5t3CNU=",
            "xkELTAyxkobi5/jps9Hx1JYQNboVrDBzdBQaXS2570w=",
        ),
    ),
    # m/44'/60'/0'/0/129
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x148EB5040e2aB876276f725571AAB49201Cb243e",
            "0x4f8c4bd37c4764dcc5ec6d4e8bf9f563102373a31fc2fd0b5ed48d2fa27d0dd0a870d474ad5a78d961b90ada708483a7cad9e1408da28ce17465e7b6150dbbab",
            "bdce34027646bf65619e85127ef1de6dc447659b6e69a991b968ec74b6aa94a9",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x148EB5040e2aB876276f725571AAB49201Cb243e",
            "BE+MS9N8R2TcxextTov59WMQI3OjH8L9C17UjS+ifQ3QqHDUdK1aeNlhuQracISDp8rZ4UCNoozhdGXnthUNu6s=",
            "vc40AnZGv2VhnoUSfvHebcRHZZtuaamRuWjsdLaqlKk=",
        ),
    ),
    # m/44'/60'/0'/0/130
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x35Ae08fe9489744AAdBaC402dEbC7d26737d973D",
            "0xe16015d233440e87645ae6fc8403484935c930b66ca30caec03ab2d82087e788bab4a5d567454a0fae12a19056f1c3733a2e9537e0f550292f11df8869da047d",
            "11cec3a80934ef28417ac140146c577e616ffa377623c14c4d8b42b64b10af1b",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x35Ae08fe9489744AAdBaC402dEbC7d26737d973D",
            "BOFgFdIzRA6HZFrm/IQDSEk1yTC2bKMMrsA6stggh+eIurSl1WdFSg+uEqGQVvHDczoulTfg9VApLxHfiGnaBH0=",
            "Ec7DqAk07yhBesFAFGxXfmFv+jd2I8FMTYtCtksQrxs=",
        ),
    ),
    # m/44'/60'/0'/0/131
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x7A64e4b3dEEC002B841bC9458E3B3CE4B88a7A94",
            "0xe4ffd6d05a4417e6be12aac5905a3d0bb441911275c9f6b2df839238d5c3c6ff488e201fb1b68fa71a822ca78ff965071fb3a79f58ee23c06245bb33b8c25de1",
            "a8ca5956f291bd213a0d1910d588d2b8e9f7df41432df287ecdc98fb55d54d9a",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x7A64e4b3dEEC002B841bC9458E3B3CE4B88a7A94",
            "BOT/1tBaRBfmvhKqxZBaPQu0QZESdcn2st+DkjjVw8b/SI4gH7G2j6cagiynj/llBx+zp59Y7iPAYkW7M7jCXeE=",
            "qMpZVvKRvSE6DRkQ1YjSuOn330FDLfKH7NyY+1XVTZo=",
        ),
    ),
    # m/44'/60'/0'/0/132
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xe7D802a73BE8EcCC619F2Bf25687647D19825920",
            "0xe27e53bc79b9e0f9e68662e6110d1b09a134c18d05ae64ca3d32c94176212199ab948f064c54615d4e72f70ab97fedc8e4219cd4ff090ef442c596b074c7d055",
            "3e951caa41ecf75d427f710a9268ae86f9a0eed871a5b8e5b2d9553de85c4542",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xe7D802a73BE8EcCC619F2Bf25687647D19825920",
            "BOJ+U7x5ueD55oZi5hENGwmhNMGNBa5kyj0yyUF2ISGZq5SPBkxUYV1OcvcKuX/tyOQhnNT/CQ70QsWWsHTH0FU=",
            "PpUcqkHs911Cf3EKkmiuhvmg7thxpbjlstlVPehcRUI=",
        ),
    ),
    # m/44'/60'/0'/0/133
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x6d15f8C7eaa838a74b78b3FB14082763e4011Bb7",
            "0xbc323a51a24d682b1f8e0d7f4bb2a44f362a80378597acb0cedd6138a430920661b41dbe941d1ac7bba611a5d0d76746429ffedcd750089b6f41ff12c0e2bd76",
            "81322321a6e2b03b58baace2730c40b0759a0e22b0fa1fab3bc1e5ac22f2d7c1",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x6d15f8C7eaa838a74b78b3FB14082763e4011Bb7",
            "BLwyOlGiTWgrH44Nf0uypE82KoA3hZessM7dYTikMJIGYbQdvpQdGse7phGl0NdnRkKf/tzXUAibb0H/EsDivXY=",
            "gTIjIabisDtYuqzicwxAsHWaDiKw+h+rO8HlrCLy18E=",
        ),
    ),
    # m/44'/60'/0'/0/134
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x8E1949cb825B3F53Ee662fD709485Fa337778E15",
            "0xaea9cb0e8a543e47c87b76b14cad3ea6422e69eb1b0dec1808601d777dca427188f0f879650d1f1d17838ca51fab332925f158a3d1c0e7674c094a16302d5790",
            "a0cade27f18f0ce6ec80167dd595674e4060b2e0b191037f8f73bcc0b2ad223a",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x8E1949cb825B3F53Ee662fD709485Fa337778E15",
            "BK6pyw6KVD5HyHt2sUytPqZCLmnrGw3sGAhgHXd9ykJxiPD4eWUNHx0Xg4ylH6szKSXxWKPRwOdnTAlKFjAtV5A=",
            "oMreJ/GPDObsgBZ91ZVnTkBgsuCxkQN/j3O8wLKtIjo=",
        ),
    ),
    # m/44'/60'/0'/0/135
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x022C8669fd24Db1798cff1296BAa48061A423cb2",
            "0x87ff003c71818d3191c48c20a5ca3a09810e4351aee3c56de39af05b2935c1cd30762f18d6681b2885e4a2cc29a37f75aa14cbc661778d5fc7510f07d4f7c09c",
            "a9e8a8a62ff91b2ab718d712c1e3c5e73a572b0142c1471b04e0ef75d3047a35",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x022C8669fd24Db1798cff1296BAa48061A423cb2",
            "BIf/ADxxgY0xkcSMIKXKOgmBDkNRruPFbeOa8FspNcHNMHYvGNZoGyiF5KLMKaN/daoUy8Zhd41fx1EPB9T3wJw=",
            "qeiopi/5Gyq3GNcSwePF5zpXKwFCwUcbBODvddMEejU=",
        ),
    ),
    # m/44'/60'/0'/0/136
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x2014e3637A9cD98b7F3143a52B7AaBa9A0A77057",
            "0xeb95b34e6583937bf931aa7dd88b5f895d5b80d965a5b6eaea7e06018bcd618d0f7e3b9470bf346ef945128e66679e376400e5b238bc391f68cfa8353c20f346",
            "6061e9d5fd8e72af574e4f31e63f52bb247b869b7e622a207ec49eb363f53c7f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x2014e3637A9cD98b7F3143a52B7AaBa9A0A77057",
            "BOuVs05lg5N7+TGqfdiLX4ldW4DZZaW26up+BgGLzWGND347lHC/NG75RRKOZmeeN2QA5bI4vDkfaM+oNTwg80Y=",
            "YGHp1f2Ocq9XTk8x5j9SuyR7hpt+YiogfsSes2P1PH8=",
        ),
    ),
    # m/44'/60'/0'/0/137
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x3F64e491f95dD29AF4b5CFA12BC85F1aAc9C5862",
            "0x59a965fd1aaf53b129fc841d865778f936026fc169f5dfa19b6f86f6d7543437186695e9bf0086adc4bda4cba8d02fbfbbd4886fe46b30c1f39a92dec16dfcdf",
            "c5baa7f63fe6f2a941ace175d18585e7be6a0e21b92da4aa4ac0c7f897e793f0",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x3F64e491f95dD29AF4b5CFA12BC85F1aAc9C5862",
            "BFmpZf0ar1OxKfyEHYZXePk2Am/BafXfoZtvhvbXVDQ3GGaV6b8Ahq3EvaTLqNAvv7vUiG/kazDB85qS3sFt/N8=",
            "xbqn9j/m8qlBrOF10YWF575qDiG5LaSqSsDH+Jfnk/A=",
        ),
    ),
    # m/44'/60'/0'/0/138
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xf5544345125958EC2568bF6752ceBCb1f4a74aed",
            "0x2841c26a6c480e30fb452d17856941f9fa003bbbe6dcefffa16a8fd2b5d951c84ad9276840695da9c28313beb5319053a87ab010684afc708f3beb16b6c18319",
            "92d3bd0e8ab63fe4e7cf7d4c9d487fc0d4ff758a793198e524950aad8e9665a9",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xf5544345125958EC2568bF6752ceBCb1f4a74aed",
            "BChBwmpsSA4w+0UtF4VpQfn6ADu75tzv/6Fqj9K12VHIStknaEBpXanCgxO+tTGQU6h6sBBoSvxwjzvrFrbBgxk=",
            "ktO9Doq2P+Tnz31MnUh/wNT/dYp5MZjlJJUKrY6WZak=",
        ),
    ),
    # m/44'/60'/0'/0/139
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x2Bb29B8cA794ad8abe77F939afFfaCa789403D18",
            "0x84981e5f9b9c37ecb9476230dd3724b234a249d58b947ab79f878717cd74bef22132500971c3d8bc4a96f1636ab33888e278359ab21cad9512da974326485a68",
            "85c0ef58a5637bf6e100389fd35bbc54d3232bdec627ce20f6b7a5cd20688399",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x2Bb29B8cA794ad8abe77F939afFfaCa789403D18",
            "BISYHl+bnDfsuUdiMN03JLI0oknVi5R6t5+HhxfNdL7yITJQCXHD2LxKlvFjarM4iOJ4NZqyHK2VEtqXQyZIWmg=",
            "hcDvWKVje/bhADif01u8VNMjK97GJ84g9relzSBog5k=",
        ),
    ),
    # m/44'/60'/0'/0/140
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x2ad4e4F082bffD064f24F2038ddE3736fc91620F",
            "0x803b0c9d30886893cbebcadfc45c6de8e5d4f20608a316f1502950939f5d23da671ca053edc39f7a755071a4835d5a01127180e667194b6bb6613694e37a3852",
            "2e4f33da31cf68f510a163be962d8906318603cdc0c66499d4f9ed2444385b86",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x2ad4e4F082bffD064f24F2038ddE3736fc91620F",
            "BIA7DJ0wiGiTy+vK38Rcbejl1PIGCKMW8VApUJOfXSPaZxygU+3Dn3p1UHGkg11aARJxgOZnGUtrtmE2lON6OFI=",
            "Lk8z2jHPaPUQoWO+li2JBjGGA83AxmSZ1PntJEQ4W4Y=",
        ),
    ),
    # m/44'/60'/0'/0/141
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x16a83f3C5907f2EA994222fcde3d3Fb2E232CC3a",
            "0xa6d257e9ab3aceb1f2b6f68d206ba932651bc66b607a7f1541e273a734b0cb945c3c2f2bd2863816b77d9f5f3356505947736df4eaaefcae5dca1c92ffd11490",
            "2631bde1c5b74bc01ca9deeed22a4f14c82708053bfe910394ab5f2259a21731",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x16a83f3C5907f2EA994222fcde3d3Fb2E232CC3a",
            "BKbSV+mrOs6x8rb2jSBrqTJlG8ZrYHp/FUHic6c0sMuUXDwvK9KGOBa3fZ9fM1ZQWUdzbfTqrvyuXcockv/RFJA=",
            "JjG94cW3S8Acqd7u0ipPFMgnCAU7/pEDlKtfIlmiFzE=",
        ),
    ),
    # m/44'/60'/0'/0/142
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xE560d726e56098442d62458D5e4daE9EFfAC92D8",
            "0x0c7bb7bc1ebd278995419245c23188db82730a82bd2860205d10f987a4f9eb8994b7f8c14c0aa8ce4eaf4590eed53fa56f880cfcd3f93cc43262a3b524067dbf",
            "46a54f670a55fd31adefccb5ae4c38368e09cf783158ce1e61cc1b97631f9807",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xE560d726e56098442d62458D5e4daE9EFfAC92D8",
            "BAx7t7wevSeJlUGSRcIxiNuCcwqCvShgIF0Q+Yek+euJlLf4wUwKqM5Or0WQ7tU/pW+IDPzT+TzEMmKjtSQGfb8=",
            "RqVPZwpV/TGt78y1rkw4No4Jz3gxWM4eYcwbl2MfmAc=",
        ),
    ),
    # m/44'/60'/0'/0/143
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x3a134D699ad59acc4906c7D5E0912c648cd2aB63",
            "0x7f62f675164ccdaee0a332b4d20bf1726f42dba65b293207cb0301c7816725ddbbaeb2c434fd2e089510bd575390dfd26149ccbfc5031ca50a322ec483573851",
            "284d4076c720cc0556c37a3de65ee5d70efbc44882153eaa5c94813c1e06d6e3",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x3a134D699ad59acc4906c7D5E0912c648cd2aB63",
            "BH9i9nUWTM2u4KMytNIL8XJvQtumWykyB8sDAceBZyXdu66yxDT9LgiVEL1XU5Df0mFJzL/FAxylCjIuxINXOFE=",
            "KE1AdscgzAVWw3o95l7l1w77xEiCFT6qXJSBPB4G1uM=",
        ),
    ),
    # m/44'/60'/0'/0/144
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x0879EC56c735CD7a9607910bBd9A5a93446Fd2d6",
            "0x75d3f2d4d32c635f02f25a722716f93c1b307135fcc5d3aba31593137cad6eb714ba08ac02309f2dc2c1ae238b205b9c29d05ecbe80420f20bee6be5598e1709",
            "fe4a2672285e55e69d74532f198209947e3218a3061cb6b3c348bae77ec6675a",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x0879EC56c735CD7a9607910bBd9A5a93446Fd2d6",
            "BHXT8tTTLGNfAvJacicW+TwbMHE1/MXTq6MVkxN8rW63FLoIrAIwny3Cwa4jiyBbnCnQXsvoBCDyC+5r5VmOFwk=",
            "/komciheVeaddFMvGYIJlH4yGKMGHLazw0i6537GZ1o=",
        ),
    ),
    # m/44'/60'/0'/0/145
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xb629Ded41A52d5F082510E72ae1bd2377543AFd4",
            "0x75c54a0706886a6f51df47a0f6fd2dfbd042b43d354a3d9f3b9f1b88bb84afb83e35a8675d1fb654b88215fce6cbadcabd58a53e0c77ff55251ddbc52959df2c",
            "a53ee425876fc56ad5b767f8bd6d449c3f7cdc09f6a0130682b99ecb08fb7e58",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xb629Ded41A52d5F082510E72ae1bd2377543AFd4",
            "BHXFSgcGiGpvUd9HoPb9LfvQQrQ9NUo9nzufG4i7hK+4PjWoZ10ftlS4ghX85sutyr1YpT4Md/9VJR3bxSlZ3yw=",
            "pT7kJYdvxWrVt2f4vW1EnD983An2oBMGgrmeywj7flg=",
        ),
    ),
    # m/44'/60'/0'/0/146
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xe807e42854C78423253d81dE969dBeD0adE0a3cF",
            "0xa846b0507e302c1b07ede0b15603b1287654f8c00b05afc9b355fa1e0ff483088604fffdf2ebd5a5e2dc24a8315ba575e93b1e8168ec6a7c45b6f50d1178e5bf",
            "ae56bc619a481e5b786ddeebce18762e079ed9b12bfb0a7215fca7185c084006",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xe807e42854C78423253d81dE969dBeD0adE0a3cF",
            "BKhGsFB+MCwbB+3gsVYDsSh2VPjACwWvybNV+h4P9IMIhgT//fLr1aXi3CSoMVuldek7HoFo7Gp8Rbb1DRF45b8=",
            "rla8YZpIHlt4bd7rzhh2Lgee2bEr+wpyFfynGFwIQAY=",
        ),
    ),
    # m/44'/60'/0'/0/147
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xf659D8CD1A5056DcEBEeAECc4ee2e273F1Eb0B55",
            "0xf8e7dccb71fdc88adcc344f8a70757bc58a4237ccd0b46872e2dc72669e8ead19e94741c99c9222e622ac3b2be628701fedc166ddf8071e5bf984092bb93da54",
            "18e089fda502b8f30bd777dc8e0c847ac56e4a1e238b12a3c31e5c99ff494712",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xf659D8CD1A5056DcEBEeAECc4ee2e273F1Eb0B55",
            "BPjn3Mtx/ciK3MNE+KcHV7xYpCN8zQtGhy4txyZp6OrRnpR0HJnJIi5iKsOyvmKHAf7cFm3fgHHlv5hAkruT2lQ=",
            "GOCJ/aUCuPML13fcjgyEesVuSh4jixKjwx5cmf9JRxI=",
        ),
    ),
    # m/44'/60'/0'/0/148
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x7cAEeA6437789683AFb7BBc3B1bA6Fcc205Ab797",
            "0x9e3f626cc8c41f936a97ede37c7b5fc1d967b50b5b3398cdce38ae10be381048ef7554ebb29ab373ce2474916a774a2a20f2396a9ae71fae610ca745aa9291d8",
            "f7766e5a79eb272a382600ac694be0a04ea0d3068a54eefd7dce5e15693d0977",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x7cAEeA6437789683AFb7BBc3B1bA6Fcc205Ab797",
            "BJ4/YmzIxB+Tapft43x7X8HZZ7ULWzOYzc44rhC+OBBI73VU67Kas3POJHSRandKKiDyOWqa5x+uYQynRaqSkdg=",
            "93ZuWnnrJyo4JgCsaUvgoE6g0waKVO79fc5eFWk9CXc=",
        ),
    ),
    # m/44'/60'/0'/0/149
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x8Dca28E953801874de157a5D407CcaCa95dC79Bc",
            "0x8693ee12169e50bde0b52e126a509d6b98ddc196f35b06c53de18190b7c61005505cb7f929e8b9c4beb69402e4077041e0a6188a347bbf6feebbf373838db689",
            "cfd79f86ffae0ff8a4843f8b37014c63d43bcfb075992da0beac283283ee6c96",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x8Dca28E953801874de157a5D407CcaCa95dC79Bc",
            "BIaT7hIWnlC94LUuEmpQnWuY3cGW81sGxT3hgZC3xhAFUFy3+SnoucS+tpQC5AdwQeCmGIo0e79v7rvzc4ONtok=",
            "z9efhv+uD/ikhD+LNwFMY9Q7z7B1mS2gvqwoMoPubJY=",
        ),
    ),
    # m/44'/60'/0'/0/150
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x5713C537b1d89D4D60221F6e259C9FD2fC2244af",
            "0x0520b23fd018bd6d4e8e4862c137a9e73da4989d705cddacb363fa99ef10a9187b08013bc0ddc1ba6f9dac1175aa8d75837526773a67e6d011f2a45170e7c673",
            "2ce6b6371ab58c402e1e29396d15e63a21c16864247426ad2b888c3042fb4404",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x5713C537b1d89D4D60221F6e259C9FD2fC2244af",
            "BAUgsj/QGL1tTo5IYsE3qec9pJidcFzdrLNj+pnvEKkYewgBO8DdwbpvnawRdaqNdYN1Jnc6Z+bQEfKkUXDnxnM=",
            "LOa2Nxq1jEAuHik5bRXmOiHBaGQkdCatK4iMMEL7RAQ=",
        ),
    ),
    # m/44'/60'/0'/0/151
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x00d2F4a551C17dFF5Bc6E51946EE570D53d1841a",
            "0xbc7ca21f5e537cda478d237dfa65a6fdaad76038dcf9547bd3f7707aec3d6aedd4344a1e21923590be718ecda6d85e62ea6760a2ab9a6e17e783cc0c753bac95",
            "ee0d45e98f493dbc0b46d3490c71e56e20a39bab965d205f62370ad7346caf2a",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x00d2F4a551C17dFF5Bc6E51946EE570D53d1841a",
            "BLx8oh9eU3zaR40jffplpv2q12A43PlUe9P3cHrsPWrt1DRKHiGSNZC+cY7NptheYupnYKKrmm4X54PMDHU7rJU=",
            "7g1F6Y9JPbwLRtNJDHHlbiCjm6uWXSBfYjcK1zRsryo=",
        ),
    ),
    # m/44'/60'/0'/0/152
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xB464DF60f3f210F237855200A5ada00a326a2DE4",
            "0x0bbe2e3a05b823bc6f1c0c312000a4daec73506a5e9ec4889dca609046b4b66c07b1c1f038c84d44c2066425cced63912ddf2c08524f00e05de03df537df6c04",
            "3caa1c4b4d0c7681e525f3698105224b20dc0ee3c93e677901d66fcaafaa6dce",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xB464DF60f3f210F237855200A5ada00a326a2DE4",
            "BAu+LjoFuCO8bxwMMSAApNrsc1BqXp7EiJ3KYJBGtLZsB7HB8DjITUTCBmQlzO1jkS3fLAhSTwDgXeA99TffbAQ=",
            "PKocS00MdoHlJfNpgQUiSyDcDuPJPmd5AdZvyq+qbc4=",
        ),
    ),
    # m/44'/60'/0'/0/153
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x8Deb51eB69258464b02169CDEE36D68788290A93",
            "0x7c74c39154d4acd3f0e3e5c1ddf0059681c2b6fc00a707d8c8ea16d67f1779f418182b2c6a5fdb7fe7d738521b71e19fcdc3ed377c51391539899cac50ccdf8a",
            "2fcab3791a52d8c896ad978c4341885c26225fb5ba73a4d1e97176a93c9faf18",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x8Deb51eB69258464b02169CDEE36D68788290A93",
            "BHx0w5FU1KzT8OPlwd3wBZaBwrb8AKcH2MjqFtZ/F3n0GBgrLGpf23/n1zhSG3Hhn83D7Td8UTkVOYmcrFDM34o=",
            "L8qzeRpS2MiWrZeMQ0GIXCYiX7W6c6TR6XF2qTyfrxg=",
        ),
    ),
    # m/44'/60'/0'/0/154
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xeAE0139d9151fdF9591CA97A6DF4fE42c3cCB44e",
            "0x6dd8d3406d3aec3983b3a603461bff92af530de40ead554dfcf4bd9a697a94c5ccc6465bc4f881a60523f4cb1b2621dad11e9fa948febb795a748b55a2c1531a",
            "abf4fb27a0200f41d1ef423bcd2eaaac5bf8f3bf6c1de5c43e1ed79ca4ea80c0",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xeAE0139d9151fdF9591CA97A6DF4fE42c3cCB44e",
            "BG3Y00BtOuw5g7OmA0Yb/5KvUw3kDq1VTfz0vZppepTFzMZGW8T4gaYFI/TLGyYh2tEen6lI/rt5WnSLVaLBUxo=",
            "q/T7J6AgD0HR70I7zS6qrFv4879sHeXEPh7XnKTqgMA=",
        ),
    ),
    # m/44'/60'/0'/0/155
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xE485C3973807f44685Fd58C1944c6ACb3131eFce",
            "0xabe8644007d92bcf2325808be5d9e4355f9f59f80d46b7b3a54f806be5c24b7ca0331960028fbaebe35c5cfc5a4f0b1083a7e024262630656f86a709e5a6f569",
            "6ada5ae08ffffca32332b3b20f0caba8cb3fd94bea2d689480f58df30f66084f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xE485C3973807f44685Fd58C1944c6ACb3131eFce",
            "BKvoZEAH2SvPIyWAi+XZ5DVfn1n4DUa3s6VPgGvlwkt8oDMZYAKPuuvjXFz8Wk8LEIOn4CQmJjBlb4anCeWm9Wk=",
            "atpa4I///KMjMrOyDwyrqMs/2UvqLWiUgPWN8w9mCE8=",
        ),
    ),
    # m/44'/60'/0'/0/156
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x3012077c2c0056A6A6bAB6A28B8e201cf476052B",
            "0x194eab6ff9cca2cb3b8d6a31e4484052565678c93ff1fb332b37e8e7d2beb7796bb94bff16fcdcdfc23daecd934190a2fffb2c64f97ae619e830d9154ff016e1",
            "c47558febfd93dd51a2883bc26a7eb5d631d1aa043419582d0d2c4402a94f107",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x3012077c2c0056A6A6bAB6A28B8e201cf476052B",
            "BBlOq2/5zKLLO41qMeRIQFJWVnjJP/H7Mys36OfSvrd5a7lL/xb83N/CPa7Nk0GQov/7LGT5euYZ6DDZFU/wFuE=",
            "xHVY/r/ZPdUaKIO8JqfrXWMdGqBDQZWC0NLEQCqU8Qc=",
        ),
    ),
    # m/44'/60'/0'/0/157
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xb67AD2962088c15c37766015dF5FaAde632E25d9",
            "0xe0514c9371f47158d44a9f27eb29991572e367eb49f3b17cc329d3b38e3a56e1421e0330ebf0bf784d5f743d44ebb75e966282621eb4309827722d73d6569a94",
            "1815b173d39a9979fe3c48d4c6655ef6d30cb33eb96592b352246bfc4d86f25c",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xb67AD2962088c15c37766015dF5FaAde632E25d9",
            "BOBRTJNx9HFY1EqfJ+spmRVy42frSfOxfMMp07OOOlbhQh4DMOvwv3hNX3Q9ROu3XpZigmIetDCYJ3Itc9ZWmpQ=",
            "GBWxc9OamXn+PEjUxmVe9tMMsz65ZZKzUiRr/E2G8lw=",
        ),
    ),
    # m/44'/60'/0'/0/158
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xA767F8F54a0Ef99DD5c27AA4B50d04E24B11B15b",
            "0x7ab8c7fef93704b1e20e625122e56a1913e6d6f3d495e49be2f0265b845c10f6580cfe45e5bb6a4f09e41a60a90302d938f2b283f7250720c8f1ac989747c61d",
            "a6ec41e882165a2bb11a0741be396a4426017e4e072b16405958580c199847f1",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xA767F8F54a0Ef99DD5c27AA4B50d04E24B11B15b",
            "BHq4x/75NwSx4g5iUSLlahkT5tbz1JXkm+LwJluEXBD2WAz+ReW7ak8J5BpgqQMC2TjysoP3JQcgyPGsmJdHxh0=",
            "puxB6IIWWiuxGgdBvjlqRCYBfk4HKxZAWVhYDBmYR/E=",
        ),
    ),
    # m/44'/60'/0'/0/159
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x58F57F5aCfdad0Fd61d9A4200C9b488FBd19449B",
            "0x759068f2e8b1799b7f16479c57f64e6ab1d7e6ed63fe4af1a9f9687789069c097d8fa907696aedd24eeacca38e5b3f2cdafdee744390a468adadde013ba1f6e7",
            "7d303aa95dfd60ee812b8d2ce4541103bb0ca32557e1f8261326959414669a2d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x58F57F5aCfdad0Fd61d9A4200C9b488FBd19449B",
            "BHWQaPLosXmbfxZHnFf2Tmqx1+btY/5K8an5aHeJBpwJfY+pB2lq7dJO6syjjls/LNr97nRDkKRora3eATuh9uc=",
            "fTA6qV39YO6BK40s5FQRA7sMoyVX4fgmEyaVlBRmmi0=",
        ),
    ),
    # m/44'/60'/0'/0/160
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xE6a919DBB3B19c6d0F076d427eE6543aCe1a4fc0",
            "0x7e23c879fa5ac303d7d6a7bef7ffce883ac69d8ae684c69dbe872928dcfc8e49cec1250c6654a68c404f64b9c4cb168e701b256e6523760a71c1dcd40801e89b",
            "4712e3120a58de5f82ad1baffe02999ba74a0132343b61b226b856864b9e3cbb",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xE6a919DBB3B19c6d0F076d427eE6543aCe1a4fc0",
            "BH4jyHn6WsMD19anvvf/zog6xp2K5oTGnb6HKSjc/I5JzsElDGZUpoxAT2S5xMsWjnAbJW5lI3YKccHc1AgB6Js=",
            "RxLjEgpY3l+CrRuv/gKZm6dKATI0O2GyJrhWhkuePLs=",
        ),
    ),
    # m/44'/60'/0'/0/161
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x169Ba8578950F8be14C4c74cbd629Fa284c95777",
            "0x3afc632ad5a5da872ea5b1760eadc06e4d457618626160de9e53b4dbf4295c580b73630013c757d0c01465409fb12eb09ec4e4862c6286716de512954873dddd",
            "a432cb9919a5c4791a55e3db1b5fbad83271ec5826dc88b97be16b0b08d103e6",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x169Ba8578950F8be14C4c74cbd629Fa284c95777",
            "BDr8YyrVpdqHLqWxdg6twG5NRXYYYmFg3p5TtNv0KVxYC3NjABPHV9DAFGVAn7EusJ7E5IYsYoZxbeUSlUhz3d0=",
            "pDLLmRmlxHkaVePbG1+62DJx7Fgm3Ii5e+FrCwjRA+Y=",
        ),
    ),
    # m/44'/60'/0'/0/162
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x8eCB8199D6fdA62240ce1111bEDcd47981CE43A8",
            "0xfc9ad2a079ef2b19b4ec2875c7e2db94423ecf1104c86c38e91de8ba04a3b09a7aeb2d9ec59878283ad4f76f5c99c3afa7db4793b6eaeb8cee82b5609572040f",
            "adf4b51cf78bb70d50f45b5ae9d9924c119e4a2ebcc501ea8cab495697b9c29b",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x8eCB8199D6fdA62240ce1111bEDcd47981CE43A8",
            "BPya0qB57ysZtOwodcfi25RCPs8RBMhsOOkd6LoEo7CaeustnsWYeCg61PdvXJnDr6fbR5O26uuM7oK1YJVyBA8=",
            "rfS1HPeLtw1Q9Fta6dmSTBGeSi68xQHqjKtJVpe5wps=",
        ),
    ),
    # m/44'/60'/0'/0/163
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xE2BD3ebE15Ef7F2ab36fe44f46E5A0c512bbEFBD",
            "0x2df35845d7bdf52e8fbf31f1ae5cbaf0347bd25592ccf363362c2a51027ad44be73326114544bca9302f2cf9a227d10b280fffaa313d5bce0a7583e8565a893f",
            "9e313995395af922ad077aaccffd9cf951f6c64ea7788358ba9053344bf946ab",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xE2BD3ebE15Ef7F2ab36fe44f46E5A0c512bbEFBD",
            "BC3zWEXXvfUuj78x8a5cuvA0e9JVkszzYzYsKlECetRL5zMmEUVEvKkwLyz5oifRCygP/6oxPVvOCnWD6FZaiT8=",
            "njE5lTla+SKtB3qsz/2c+VH2xk6neINYupBTNEv5Rqs=",
        ),
    ),
    # m/44'/60'/0'/0/164
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x60caC1BC0eE13EaD95DAc77DC861Ea093E10E47C",
            "0xd4443e43831f2e9650de932cf337780139a7334d3eb3a4371fe03bfd897c176c483c4cf21a4038d2594804b7a45e85fc5979cf667b4676b36638f214e77ec9c7",
            "b23376459de8e41dbd2bb120144b8d3dd1693574e62388a3f4f069ba12ff83bb",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x60caC1BC0eE13EaD95DAc77DC861Ea093E10E47C",
            "BNREPkODHy6WUN6TLPM3eAE5pzNNPrOkNx/gO/2JfBdsSDxM8hpAONJZSAS3pF6F/Fl5z2Z7RnazZjjyFOd+ycc=",
            "sjN2RZ3o5B29K7EgFEuNPdFpNXTmI4ij9PBpuhL/g7s=",
        ),
    ),
    # m/44'/60'/0'/0/165
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xd071D328f37D0A607944199E6bD116c4466D391A",
            "0x3aa83ecfc6bb20fc3b315d0d978ddd8ecb6803dcdfe1877d29b99aaa00642cd42452540eadda703ede7650f9441bb4e99c06d6e313edf797dbba003b79257be6",
            "4c9437bec74cdeabffddbb857416fa83b9f3be6da4a7fb8e123ed64246ebf858",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xd071D328f37D0A607944199E6bD116c4466D391A",
            "BDqoPs/GuyD8OzFdDZeN3Y7LaAPc3+GHfSm5mqoAZCzUJFJUDq3acD7edlD5RBu06ZwG1uMT7feX27oAO3kle+Y=",
            "TJQ3vsdM3qv/3buFdBb6g7nzvm2kp/uOEj7WQkbr+Fg=",
        ),
    ),
    # m/44'/60'/0'/0/166
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x3fFe14B05f298757AFbF494b3d9DD26389566Bca",
            "0xc6c5da2ba9ee081dee9708ff87b4e07c206c02d48fa7465deb76e5d86c2505f21acb297b327e0b61698dc9e27a4034d4014974e80f4a5f1a4f057b9a73e6bd00",
            "4492f12b158d3cce454011a472b1b9b71b5eb75f1cf1fd0f6b2d3279a4d7018d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x3fFe14B05f298757AFbF494b3d9DD26389566Bca",
            "BMbF2iup7ggd7pcI/4e04HwgbALUj6dGXet25dhsJQXyGsspezJ+C2FpjcniekA01AFJdOgPSl8aTwV7mnPmvQA=",
            "RJLxKxWNPM5FQBGkcrG5txtet18c8f0Pay0yeaTXAY0=",
        ),
    ),
    # m/44'/60'/0'/0/167
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x32d753271b9B0d519216b3FB67bf58A8C778eEBa",
            "0x0e590d49d2121c2c9ef4eb39d9078423da2c541bd76b59b9e6edd47e908fb273c87e0e46affd77df72cefac604f19d44987390876677abbae0cdc710ee46e11d",
            "af1c687ab3b849390cd727631f76e366c0cf5b3ea860adb549db9ed9093b3d1c",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x32d753271b9B0d519216b3FB67bf58A8C778eEBa",
            "BA5ZDUnSEhwsnvTrOdkHhCPaLFQb12tZuebt1H6Qj7JzyH4ORq/9d99yzvrGBPGdRJhzkIdmd6u64M3HEO5G4R0=",
            "rxxoerO4STkM1ydjH3bjZsDPWz6oYK21Sdue2Qk7PRw=",
        ),
    ),
    # m/44'/60'/0'/0/168
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x5F86C2ED90a84cfab33AA8b992A85154131CBCe9",
            "0xaddd0e2be4cd2d9c9bff05cf29e0152893ab79f88a5ff9e914b95c994b77c902419edfd549367fff07e33d3f710e1dcd687b3ad1464013a03faa8458979fa518",
            "38e3cba78cc95f322ea214f0c95f70d6881e156efc1524e89991236721cfa2cc",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x5F86C2ED90a84cfab33AA8b992A85154131CBCe9",
            "BK3dDivkzS2cm/8FzyngFSiTq3n4il/56RS5XJlLd8kCQZ7f1Uk2f/8H4z0/cQ4dzWh7OtFGQBOgP6qEWJefpRg=",
            "OOPLp4zJXzIuohTwyV9w1ogeFW78FSTomZEjZyHPosw=",
        ),
    ),
    # m/44'/60'/0'/0/169
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xF695E9b0163bbC3f97A6AE3044CD3a0920289322",
            "0x376e5c00b3eb4f632ef5469b2e347d72085e845baeb6fc338a5aa0e7c71e2d50271e97b95270c4e12c65728036c48ee5599d33d7b76c553d23cd3b77f309ac04",
            "9a57d97e36787655ca13118edff2196ae5031710fd4db75a5d369e500270be60",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xF695E9b0163bbC3f97A6AE3044CD3a0920289322",
            "BDduXACz609jLvVGmy40fXIIXoRbrrb8M4paoOfHHi1QJx6XuVJwxOEsZXKANsSO5VmdM9e3bFU9I807d/MJrAQ=",
            "mlfZfjZ4dlXKExGO3/IZauUDFxD9TbdaXTaeUAJwvmA=",
        ),
    ),
    # m/44'/60'/0'/0/170
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xa71a94b461D1366532299Fa157782f3F02BA2859",
            "0x37468fbe4c2637ce170d8cfd1502c8fb7913b7dded033707ccd1fa00cb82efa1421657b32a15e515170e0e989e6949095e15e540fb5d312cc89da9d696c06ab9",
            "de11c9382bcf14344e8187a83cf10f4bf174dd67414ca1664a88cc7a0d71e316",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xa71a94b461D1366532299Fa157782f3F02BA2859",
            "BDdGj75MJjfOFw2M/RUCyPt5E7fd7QM3B8zR+gDLgu+hQhZXsyoV5RUXDg6YnmlJCV4V5UD7XTEsyJ2p1pbAark=",
            "3hHJOCvPFDROgYeoPPEPS/F03WdBTKFmSojMeg1x4xY=",
        ),
    ),
    # m/44'/60'/0'/0/171
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x913e5d18014E51D43fF1fC1540f810Fe4B5c4B8c",
            "0x83538637dd77107a99b1c5480180ca64160d019225a12beb4ed0bda3d458aa465646585567ef35b843f310bebe878866b6c181273f024e1d99fb393d5534ad06",
            "d0253fda8e5cd493df9e1fe26ef54227523416d99ae2b7cf41f28467924f12fd",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x913e5d18014E51D43fF1fC1540f810Fe4B5c4B8c",
            "BINThjfddxB6mbHFSAGAymQWDQGSJaEr607QvaPUWKpGVkZYVWfvNbhD8xC+voeIZrbBgSc/Ak4dmfs5PVU0rQY=",
            "0CU/2o5c1JPfnh/ibvVCJ1I0Ftma4rfPQfKEZ5JPEv0=",
        ),
    ),
    # m/44'/60'/0'/0/172
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x5574917A950E06bBB59B62A9d396aa774C581e87",
            "0xd3bb97fe479d56a9e57a98cbb6add3e64d0bad8e79a0077a0c3d83c6543f95efc2f3102f91c43bd14d403107e4a98e7c35921c563f4dbeada7185980d8e98214",
            "23f5d55b5bc2fb2b742b996848bd037acea2ba900e920d819980d817aed2465e",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x5574917A950E06bBB59B62A9d396aa774C581e87",
            "BNO7l/5HnVap5XqYy7at0+ZNC62OeaAHegw9g8ZUP5XvwvMQL5HEO9FNQDEH5KmOfDWSHFY/Tb6tpxhZgNjpghQ=",
            "I/XVW1vC+yt0K5loSL0Des6iupAOkg2BmYDYF67SRl4=",
        ),
    ),
    # m/44'/60'/0'/0/173
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x763227346f483f8467548fA6f8Ff630d32c960cd",
            "0x23e599d9b4af47746c881eea53694c08f5109c099ef6a97ac08ab231cc3be12663b57a5811ab673f6ff901048ce158b77f18037431553306e48d02fd5420041c",
            "b0f9612730898070ccb19b16c4092e54434cce53501a337e032af3b5e10b725a",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x763227346f483f8467548fA6f8Ff630d32c960cd",
            "BCPlmdm0r0d0bIge6lNpTAj1EJwJnvapesCKsjHMO+EmY7V6WBGrZz9v+QEEjOFYt38YA3QxVTMG5I0C/VQgBBw=",
            "sPlhJzCJgHDMsZsWxAkuVENMzlNQGjN+AyrzteELclo=",
        ),
    ),
    # m/44'/60'/0'/0/174
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xfbfF7A95AA68eeF00407b54EcBAF5cf5048602E1",
            "0xf6d78256dd16774dea67de0327c91ec984fdf9123be32237cae47b6b9e70e133f291c970cc269d14ac60ab045a2c88f41af33326bca217d2406ab0990c933e76",
            "bde3ca60d05b2a35dbcd0f1b818feeea642b66dd63f00cdde822f4f9e016b343",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xfbfF7A95AA68eeF00407b54EcBAF5cf5048602E1",
            "BPbXglbdFndN6mfeAyfJHsmE/fkSO+MiN8rke2uecOEz8pHJcMwmnRSsYKsEWiyI9BrzMya8ohfSQGqwmQyTPnY=",
            "vePKYNBbKjXbzQ8bgY/u6mQrZt1j8Azd6CL0+eAWs0M=",
        ),
    ),
    # m/44'/60'/0'/0/175
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x5Bbe67F31c1417B32fFfb77aC21bb3eD922e6088",
            "0x8def01a9894a42d77292dd9349b53c2d2ea468058f0acb38b35e9e5ebdcf30526634597b50c50e13347763d46c5e8f76f91ace6ae19857797434e21df99ee62f",
            "5a0cd1b40194a858e862f5968a1c7bee3e010cfe9fe5618d559462ac7bd5474d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x5Bbe67F31c1417B32fFfb77aC21bb3eD922e6088",
            "BI3vAamJSkLXcpLdk0m1PC0upGgFjwrLOLNenl69zzBSZjRZe1DFDhM0d2PUbF6PdvkazmrhmFd5dDTiHfme5i8=",
            "WgzRtAGUqFjoYvWWihx77j4BDP6f5WGNVZRirHvVR00=",
        ),
    ),
    # m/44'/60'/0'/0/176
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xB9fB443D189Ef0ba6604a8Bc50c2Ea418d3Ce0ce",
            "0xbf0f9d078a82cc8b11ef7525a3a87a9807efbbf7c7e03afce2bddb4e8c410b11eabb8ff27d2c79ed64e2d0754bda7247ed1444fe5d3842222e34209987bdba48",
            "60b0b1abc5b057b5130b4c03b64afa00ccd9e8b73139648e95102fcbc57a4b73",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xB9fB443D189Ef0ba6604a8Bc50c2Ea418d3Ce0ce",
            "BL8PnQeKgsyLEe91JaOoepgH77v3x+A6/OK9206MQQsR6ruP8n0see1k4tB1S9pyR+0URP5dOEIiLjQgmYe9ukg=",
            "YLCxq8WwV7UTC0wDtkr6AMzZ6LcxOWSOlRAvy8V6S3M=",
        ),
    ),
    # m/44'/60'/0'/0/177
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x87dce73818A6301183DAb3a8cFba1c531D4aFB2B",
            "0xa1dfeac1a71cba09711cc5af3f7d729bb8b77792ee42f8c8fc7c837cfa8f70d2a379c8f10b00397b1afb9a762ef9202c1a3fb30800de725db2684a2bc257cc93",
            "c99e3d7bcef55ab5a97bcd522bbbe2a400e004031c6b13891740bc8346e94c34",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x87dce73818A6301183DAb3a8cFba1c531D4aFB2B",
            "BKHf6sGnHLoJcRzFrz99cpu4t3eS7kL4yPx8g3z6j3DSo3nI8QsAOXsa+5p2LvkgLBo/swgA3nJdsmhKK8JXzJM=",
            "yZ49e871WrWpe81SK7vipADgBAMcaxOJF0C8g0bpTDQ=",
        ),
    ),
    # m/44'/60'/0'/0/178
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xd9d3C0CAA944d31b2265e047f03C7D89dE187cF1",
            "0x80507f285b54d0d0ef52c6d2f7d83552e2dc3c2e366c5a0638bb2944b044ef973f5860cbde661ed4e33d8e886d802f89da37b448587d2ed3f88e2e62fe2e4283",
            "dfd88d316d2a554366bd8f5ccaa44c92ae909b6bfa7a17c86abe14fce6234514",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xd9d3C0CAA944d31b2265e047f03C7D89dE187cF1",
            "BIBQfyhbVNDQ71LG0vfYNVLi3DwuNmxaBji7KUSwRO+XP1hgy95mHtTjPY6IbYAvido3tEhYfS7T+I4uYv4uQoM=",
            "39iNMW0qVUNmvY9cyqRMkq6Qm2v6ehfIar4U/OYjRRQ=",
        ),
    ),
    # m/44'/60'/0'/0/179
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xF71492a001923d8B16Abf3F59cA4DD399432aEFc",
            "0x984c12497c8bab70a1a163ceefea8734e7c3666d9bc573642e838923a0d3b143f293b8e6e6d8cc94640d91411fc642bfd32f620c28a81158cd5f7372584d27fe",
            "0d41a327330f9dc05c70e5fe1e810f3b7a0d08ea5e8379d515f673c3b37f1d6e",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xF71492a001923d8B16Abf3F59cA4DD399432aEFc",
            "BJhMEkl8i6twoaFjzu/qhzTnw2Ztm8VzZC6DiSOg07FD8pO45ubYzJRkDZFBH8ZCv9MvYgwoqBFYzV9zclhNJ/4=",
            "DUGjJzMPncBccOX+HoEPO3oNCOpeg3nVFfZzw7N/HW4=",
        ),
    ),
    # m/44'/60'/0'/0/180
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xCfA462D595c65a62C55f212aE35C4d3efA21F160",
            "0x23b4795096ab9ad9dcfa907bfab5df2c358a06e49ab05df424a1b5d38ba2e57302d1f9336778f7474f55df579f47557a2c1472e018a558f11d0b923a974d06d9",
            "c0aa6e316482dc5355f286317c5f634629974d139e604341feae8773b811c89f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xCfA462D595c65a62C55f212aE35C4d3efA21F160",
            "BCO0eVCWq5rZ3PqQe/q13yw1igbkmrBd9CShtdOLouVzAtH5M2d490dPVd9Xn0dVeiwUcuAYpVjxHQuSOpdNBtk=",
            "wKpuMWSC3FNV8oYxfF9jRimXTROeYENB/q6Hc7gRyJ8=",
        ),
    ),
    # m/44'/60'/0'/0/181
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x1F76e4b797b432CCB33d57ba6d966d92C43b977f",
            "0xad17c5124e3b56b0b0aad7d56d2b1c0d39ece267cb93599d8c59502aa93e8d169563d9732db5762624a70765ca2b1965eec00635026a57f51ad419b971ac157b",
            "f5d7e528ea35cf50343763c7b168755fa8987c72dd90f3f0f27d58302d83e4c8",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x1F76e4b797b432CCB33d57ba6d966d92C43b977f",
            "BK0XxRJOO1awsKrX1W0rHA057OJny5NZnYxZUCqpPo0WlWPZcy21diYkpwdlyisZZe7ABjUCalf1GtQZuXGsFXs=",
            "9dflKOo1z1A0N2PHsWh1X6iYfHLdkPPw8n1YMC2D5Mg=",
        ),
    ),
    # m/44'/60'/0'/0/182
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x8B525f2d538B3A80Ebf0Da0f42c447cde77b747a",
            "0x0c19bc2bf97935a7232c8ffa731d1cdf1ece1f872c923dc5bf7677e9db9a6d61e73f16b4d6ae0aec4cb9f07f1f2d074a0ee3c52d8d027fdfa80a16f02babbde6",
            "318eac48595a7b461471f5cbb914f358b9e59d5de343ef396b8d63b798dd53f9",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x8B525f2d538B3A80Ebf0Da0f42c447cde77b747a",
            "BAwZvCv5eTWnIyyP+nMdHN8ezh+HLJI9xb92d+nbmm1h5z8WtNauCuxMufB/Hy0HSg7jxS2NAn/fqAoW8CurveY=",
            "MY6sSFlae0YUcfXLuRTzWLnlnV3jQ+85a41jt5jdU/k=",
        ),
    ),
    # m/44'/60'/0'/0/183
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xBC97Ef925204D49C6517256135fd949D22Ea8A01",
            "0x80d87840b2ae54a34733f78056507dc1aaae8c91a3f2f4548198421d02c6c82750dc8d42139d4e2448b1ba140a17d6fbcf60b20dc7a8a7bb5a9e1b9a64970686",
            "df099754b6046fa3129da2660d404b24bb4b065a3bd4cdcd073685864e7ffe4d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xBC97Ef925204D49C6517256135fd949D22Ea8A01",
            "BIDYeECyrlSjRzP3gFZQfcGqroyRo/L0VIGYQh0CxsgnUNyNQhOdTiRIsboUChfW+89gsg3HqKe7Wp4bmmSXBoY=",
            "3wmXVLYEb6MSnaJmDUBLJLtLBlo71M3NBzaFhk5//k0=",
        ),
    ),
    # m/44'/60'/0'/0/184
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xe21fF872f2E6C661830372908E88F04C18a3A2BA",
            "0x24c4ca003844496f4587f7b8475bb43cbb26b4fbdf05cd7d7a3a3d578fca886aa1d4c0dfea56b7132940379f57e63c9d15e7d783d189072add3cffac044fe2e0",
            "81526c868a56d22cda7fd56e3fb0566a73c6264e92452a645f013f335f16a72c",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xe21fF872f2E6C661830372908E88F04C18a3A2BA",
            "BCTEygA4RElvRYf3uEdbtDy7JrT73wXNfXo6PVePyohqodTA3+pWtxMpQDefV+Y8nRXn14PRiQcq3Tz/rARP4uA=",
            "gVJshopW0izaf9VuP7BWanPGJk6SRSpkXwE/M18Wpyw=",
        ),
    ),
    # m/44'/60'/0'/0/185
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x456CBbAe40C0168dD186Ce55249A25bf46C99E91",
            "0xdbee21e4c40d12b815dc981ab198caa7601fce1d30a2f608f615d139d6ea9b141d1400e76d6e55196c35c281d78d55cbcf94c682cf37007303bec0a41fabe2e5",
            "455b79a75b809ce47ab8b76629ebc32e40c583e82c552893352561076ef59161",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x456CBbAe40C0168dD186Ce55249A25bf46C99E91",
            "BNvuIeTEDRK4FdyYGrGYyqdgH84dMKL2CPYV0TnW6psUHRQA521uVRlsNcKB141Vy8+UxoLPNwBzA77ApB+r4uU=",
            "RVt5p1uAnOR6uLdmKevDLkDFg+gsVSiTNSVhB271kWE=",
        ),
    ),
    # m/44'/60'/0'/0/186
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xe07ca2aE7e4CB5BBf815291F275B5aF5410B8678",
            "0xb8c2250bff1670ba57fea9184336ef4678cd415f071f273739fadbf36136f002b5b25e03c9b56587972e5f8032e944739465777b6344c5674a5cec9868bfdcb1",
            "bc84be53373898706425da1a8cec4a8b6a4ea4164ac3081ad5730a46f1a97c98",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xe07ca2aE7e4CB5BBf815291F275B5aF5410B8678",
            "BLjCJQv/FnC6V/6pGEM270Z4zUFfBx8nNzn62/NhNvACtbJeA8m1ZYeXLl+AMulEc5Rld3tjRMVnSlzsmGi/3LE=",
            "vIS+Uzc4mHBkJdoajOxKi2pOpBZKwwga1XMKRvGpfJg=",
        ),
    ),
    # m/44'/60'/0'/0/187
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x7084d4B9d5924951CE64C33a9d4BBd07B3A78a8e",
            "0x32cafa2da2b7876119ed7b94e73e0fd3ac349a182b91b6ec4631b67ed453ddc5718cf310436b29e28d2ae59eaf7b281d408e4505e525883c092f950e30ba6bc9",
            "9ba4100c686b94e7cddcf211afc638e2637ed6ddd18b0d7398f191f5f4ceffc4",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x7084d4B9d5924951CE64C33a9d4BBd07B3A78a8e",
            "BDLK+i2it4dhGe17lOc+D9OsNJoYK5G27EYxtn7UU93FcYzzEENrKeKNKuWer3soHUCORQXlJYg8CS+VDjC6a8k=",
            "m6QQDGhrlOfN3PIRr8Y44mN+1t3Riw1zmPGR9fTO/8Q=",
        ),
    ),
    # m/44'/60'/0'/0/188
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xE1AC6Ef7f046CF52332C41E625c875a071343FA9",
            "0x02cd29077335f09c4ae6598d76b08301fbaf7769bb54b978a70f6397ff4f0b67796009e860b379a5293be58330220880197e75e2836d645f98595b77600ad0d8",
            "93855e417aa8c44109a0d2ae9531c4cfcac8d91e9dc8d106648515532e9c5eac",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xE1AC6Ef7f046CF52332C41E625c875a071343FA9",
            "BALNKQdzNfCcSuZZjXawgwH7r3dpu1S5eKcPY5f/TwtneWAJ6GCzeaUpO+WDMCIIgBl+deKDbWRfmFlbd2AK0Ng=",
            "k4VeQXqoxEEJoNKulTHEz8rI2R6dyNEGZIUVUy6cXqw=",
        ),
    ),
    # m/44'/60'/0'/0/189
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x0da931EABEf9778FeACb3B22F60cd56a31E4FB4b",
            "0xdb6cac6972c2f06d2816094a428594da1a0ed86a7795da912701b5fed968ac9ae131079a989cff92a6d1ab195b6a7b927803cdeb690c26d328039b3f6a487893",
            "831bf2f2ef1b51b5692d2a7c82519c8ffd3f09c48ddebe31ae1765cd3fb0d5e9",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x0da931EABEf9778FeACb3B22F60cd56a31E4FB4b",
            "BNtsrGlywvBtKBYJSkKFlNoaDthqd5XakScBtf7ZaKya4TEHmpic/5Km0asZW2p7kngDzetpDCbTKAObP2pIeJM=",
            "gxvy8u8bUbVpLSp8glGcj/0/CcSN3r4xrhdlzT+w1ek=",
        ),
    ),
    # m/44'/60'/0'/0/190
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xB5B8Bee62A984540BE9270dbD10D291Cda852E7E",
            "0xc8da3cf19fdaab49eac8d9e41f498adcb6a39074269512cf3a5176e52217fd11b6e33aee68d14dc31377ea4998d6140c8e78fcc79e8cde1efbebe0151966cd36",
            "0f017d40116bbdc646a94692e0c0bff3b7a20bbeac84f15637751ceb21bdc6e6",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xB5B8Bee62A984540BE9270dbD10D291Cda852E7E",
            "BMjaPPGf2qtJ6sjZ5B9Jity2o5B0JpUSzzpRduUiF/0RtuM67mjRTcMTd+pJmNYUDI54/MeejN4e++vgFRlmzTY=",
            "DwF9QBFrvcZGqUaS4MC/87eiC76shPFWN3Uc6yG9xuY=",
        ),
    ),
    # m/44'/60'/0'/0/191
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x4C2d87BBBeAD2ce75A30B464FE78a3204B1cdc3c",
            "0xf869face1127f24f78f325f080c7ced6257cb4ea699823ccaaef915606d3b85817a453eecaf8f81774ceb8c96879c9c70e56d1c5f174f5fa7b571e25afb0467d",
            "33b9e6ea8f16f63587b17d93b7bb10459b5fe98d1511e462f16580548d44c55e",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x4C2d87BBBeAD2ce75A30B464FE78a3204B1cdc3c",
            "BPhp+s4RJ/JPePMl8IDHztYlfLTqaZgjzKrvkVYG07hYF6RT7sr4+Bd0zrjJaHnJxw5W0cXxdPX6e1ceJa+wRn0=",
            "M7nm6o8W9jWHsX2Tt7sQRZtf6Y0VEeRi8WWAVI1ExV4=",
        ),
    ),
    # m/44'/60'/0'/0/192
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xF0675099596BeAa9091eF771F6ED70f2b9373c24",
            "0x225a0aaf8d5680fcfb8f522cb0d260e09bdda1358907b62c7d4eda286f95db7a1d12d5ad8acd910a3d364c5ad32ebe27c3b4de1515730c353907215c813162ff",
            "e00edc12aa8ca875cf1aada148c62cea6418c2477a5262784d68a7430d3bb644",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xF0675099596BeAa9091eF771F6ED70f2b9373c24",
            "BCJaCq+NVoD8+49SLLDSYOCb3aE1iQe2LH1O2ihvldt6HRLVrYrNkQo9Nkxa0y6+J8O03hUVcww1OQchXIExYv8=",
            "4A7cEqqMqHXPGq2hSMYs6mQYwkd6UmJ4TWinQw07tkQ=",
        ),
    ),
    # m/44'/60'/0'/0/193
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x318F6393cc949a3456AcF0c1ac724C96D3Ddaf85",
            "0xc99c7d30e81d7d9cae197d0edbae213ae689ee65dbf9061ca1b47b74443d9a903e7e76dc01e51592cb3b2d4789810e88027799cbcba95fc01142d5facab599e0",
            "7f6181bac9bca0b349fb54f0cc81c5bde1add7d39cecfaefccf5b6ae78bea4e0",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x318F6393cc949a3456AcF0c1ac724C96D3Ddaf85",
            "BMmcfTDoHX2crhl9DtuuITrmie5l2/kGHKG0e3REPZqQPn523AHlFZLLOy1HiYEOiAJ3mcvLqV/AEULV+sq1meA=",
            "f2GBusm8oLNJ+1TwzIHFveGt19Oc7PrvzPW2rni+pOA=",
        ),
    ),
    # m/44'/60'/0'/0/194
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x4236cEaA138E2c55B60A0Ba39E8f230C7c99403c",
            "0x8a2019894ef40b6b8bb942e1b170eac95c1c89951c1ad501cade2820e629017b5f60f40d9f07994a977a155ed8c3cff9fc6277ca54a963555f0838ec6c67d895",
            "9532103f503cba07b0e81453b71d41458392e5b9cdf35a75fd4cf636512f9b89",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x4236cEaA138E2c55B60A0Ba39E8f230C7c99403c",
            "BIogGYlO9Atri7lC4bFw6slcHImVHBrVAcreKCDmKQF7X2D0DZ8HmUqXehVe2MPP+fxid8pUqWNVXwg47Gxn2JU=",
            "lTIQP1A8ugew6BRTtx1BRYOS5bnN81p1/Uz2NlEvm4k=",
        ),
    ),
    # m/44'/60'/0'/0/195
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xeFbeaa22801005a2f92125C5A4BeF5Ca279EEc76",
            "0xf689b8d708b0220d2fbecb2d80296b06dce1f4abaa7ceaec459ec5e89320348446871c5c7bcd61e4dd47ac474e56a4d82e407ce976b3cd47c958343bd8e4dc8c",
            "79660d34d26c90874b905314ee298af5610d8b3224d55e33b79efc5efda97421",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xeFbeaa22801005a2f92125C5A4BeF5Ca279EEc76",
            "BPaJuNcIsCINL77LLYApawbc4fSrqnzq7EWexeiTIDSERoccXHvNYeTdR6xHTlak2C5AfOl2s81HyVg0O9jk3Iw=",
            "eWYNNNJskIdLkFMU7imK9WENizIk1V4zt578Xv2pdCE=",
        ),
    ),
    # m/44'/60'/0'/0/196
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xead71BEC54A090B5AD7f219522Bd7db303ABeeC0",
            "0x669f3fc6b7a96df34fc87a0105410f97e37d02c21b8c1718f1f1a9f885c58074fb6bd49d5719e85cc2eaa0e653f1c4d82c42f344cebd2a89e8abf79928cdb2d1",
            "f3a5eaf6825a63fbf83fc15113779aca00c01e3989b6afdec80e0c405bea967f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xead71BEC54A090B5AD7f219522Bd7db303ABeeC0",
            "BGafP8a3qW3zT8h6AQVBD5fjfQLCG4wXGPHxqfiFxYB0+2vUnVcZ6FzC6qDmU/HE2CxC80TOvSqJ6Kv3mSjNstE=",
            "86Xq9oJaY/v4P8FRE3eaygDAHjmJtq/eyA4MQFvqln8=",
        ),
    ),
    # m/44'/60'/0'/0/197
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xb028f78e940dB51AaDFb48C107758374df4F5C09",
            "0x828a574d7a53f86b6aa2bdf9d5234fe2505a5d1552e45901db4eaf3616515e286711af1cf1ed9f674cd0c0d15cbacfdc58a1ba794d335ce33e570e64c9057c34",
            "0904e91bbb9e59085041fed196181d6b26f3dec5f576520680f631b59cd2e9ae",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xb028f78e940dB51AaDFb48C107758374df4F5C09",
            "BIKKV016U/hraqK9+dUjT+JQWl0VUuRZAdtOrzYWUV4oZxGvHPHtn2dM0MDRXLrP3FihunlNM1zjPlcOZMkFfDQ=",
            "CQTpG7ueWQhQQf7Rlhgdaybz3sX1dlIGgPYxtZzS6a4=",
        ),
    ),
    # m/44'/60'/0'/0/198
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x3D06C2D984c4f62380DA9F92f74709c792a19dC9",
            "0xa59ffd35551606e369542f06e6993af733b50abfa4a962669e5156d922f257baa6abe7ab09df1e84e3a4f6c5f0a0f445c7374bf4db941e882950fd21eac17626",
            "45859261ecc99ee5f40a2e8d7fd16c2bebf4b7e6ca3b69e40722cb9db32ce35d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x3D06C2D984c4f62380DA9F92f74709c792a19dC9",
            "BKWf/TVVFgbjaVQvBuaZOvcztQq/pKliZp5RVtki8le6pqvnqwnfHoTjpPbF8KD0Rcc3S/TblB6IKVD9IerBdiY=",
            "RYWSYezJnuX0Ci6Nf9FsK+v0t+bKO2nkByLLnbMs410=",
        ),
    ),
    # m/44'/60'/0'/0/199
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x9fB545F8D9F56ECF8024B7ADb3Aa86B895fc9CcB",
            "0x4bcb1831f31534594e9a0cc7b0d8bfa5789348a14ee1b07dad37a09fa1f4b838a1068c501f24887502b6655ee286a6c75c2ba50998c905e58cb1f03e91c72f44",
            "d8a18f9f5e85695b30b036ea01c6752a70082641da59cf7684e5885ab79f6009",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x9fB545F8D9F56ECF8024B7ADb3Aa86B895fc9CcB",
            "BEvLGDHzFTRZTpoMx7DYv6V4k0ihTuGwfa03oJ+h9Lg4oQaMUB8kiHUCtmVe4oamx1wrpQmYyQXljLHwPpHHL0Q=",
            "2KGPn16FaVswsDbqAcZ1KnAIJkHaWc92hOWIWrefYAk=",
        ),
    ),
    # m/44'/60'/0'/0/200
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xF5cA817DA6712E05B964c3F60C6B19a2b12b2262",
            "0xcba3258dc1e1deec026b2af053cbaea9f03b6698273a96805888bf6b75d9b0c9a0604e9320af301e672cf0f33163d0ded051588d496bac7e60696eaaae2bc98a",
            "67b24eea5ba947d3afd88be215165e3def471f70053f31f934196c4777747983",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xF5cA817DA6712E05B964c3F60C6B19a2b12b2262",
            "BMujJY3B4d7sAmsq8FPLrqnwO2aYJzqWgFiIv2t12bDJoGBOkyCvMB5nLPDzMWPQ3tBRWI1Ja6x+YGluqq4ryYo=",
            "Z7JO6lupR9Ov2IviFRZePe9HH3AFPzH5NBlsR3d0eYM=",
        ),
    ),
    # m/44'/60'/0'/0/201
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xCa75d71F7aA83eb52F61b523f0EDf1D5c3864573",
            "0xa67dd96eb648b01f35fbb3358dc3a84d345df480e28498ec60138c1bcfa5e48c70c62384d657e95a45afa5d722af1e82f430c9d93ce1a26767a4fc87476ffa77",
            "ed54c495069f35ea29bb7e2c65d17b40d1f0e897ecefc8803f0c8558fe88c9c8",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xCa75d71F7aA83eb52F61b523f0EDf1D5c3864573",
            "BKZ92W62SLAfNfuzNY3DqE00XfSA4oSY7GATjBvPpeSMcMYjhNZX6VpFr6XXIq8egvQwydk84aJnZ6T8h0dv+nc=",
            "7VTElQafNeopu34sZdF7QNHw6Jfs78iAPwyFWP6Iycg=",
        ),
    ),
    # m/44'/60'/0'/0/202
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xd3BF3028a42CC3Cd445dbe9A7610CF867fA8Aff6",
            "0x890b46733e3e612e79395aad89ea28eb81689f07a618c2bb992da613d1330c42a917494becfcd3c0d84c467d7e63568877c08e4a7c9ca72e2b8234934bb7a014",
            "e1beab133e9c6fde3b4aae843943c221b98ac63ad4e0df99f9b9a1e996a2e6f3",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xd3BF3028a42CC3Cd445dbe9A7610CF867fA8Aff6",
            "BIkLRnM+PmEueTlarYnqKOuBaJ8HphjCu5ktphPRMwxCqRdJS+z808DYTEZ9fmNWiHfAjkp8nKcuK4I0k0u3oBQ=",
            "4b6rEz6cb947Sq6EOUPCIbmKxjrU4N+Z+bmh6Zai5vM=",
        ),
    ),
    # m/44'/60'/0'/0/203
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xEdf4B51aDd5535Fab8B2fDa77c89Dc7E7492EAC0",
            "0x66e32699f6fc1e0713884ae2c260becad33d7f989364a6f32a364947949c1c94560dd48761647ebdb42cf2db6ed49daf2e502e570d3d75d93bf797d20fa29393",
            "2132bc896ef3d70eb23903aa25f2cd93a522c87ee6731b2b00d95085162ec3ea",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xEdf4B51aDd5535Fab8B2fDa77c89Dc7E7492EAC0",
            "BGbjJpn2/B4HE4hK4sJgvsrTPX+Yk2Sm8yo2SUeUnByUVg3Uh2Fkfr20LPLbbtSdry5QLlcNPXXZO/eX0g+ik5M=",
            "ITK8iW7z1w6yOQOqJfLNk6UiyH7mcxsrANlQhRYuw+o=",
        ),
    ),
    # m/44'/60'/0'/0/204
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x29386E4d8f950D9f9AFD5d7706aD98570F8C68EF",
            "0xb068ca62aa1a5803ccbefc1febc242007d1786f3c06e57e45df7bb0bce8aa6adb2024510de979069bf68ad7e385934b4528434fcc9e2c513353fa2944ba1a9d7",
            "e7fdb89b812a1d9e174d8be62d14e9c7c2e0563d7334989e700e36ac81121843",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x29386E4d8f950D9f9AFD5d7706aD98570F8C68EF",
            "BLBoymKqGlgDzL78H+vCQgB9F4bzwG5X5F33uwvOiqatsgJFEN6XkGm/aK1+OFk0tFKENPzJ4sUTNT+ilEuhqdc=",
            "5/24m4EqHZ4XTYvmLRTpx8LgVj1zNJiecA42rIESGEM=",
        ),
    ),
    # m/44'/60'/0'/0/205
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xDad5CC849036E92D691e68dDd021739Fde379CF4",
            "0xca41c3858b8d332dc214500b7aaf159cc3ccb8fc15c7e5bcc1c79f13633318f0ddcc3fca665cd0492009c91e8f0a01bc98495779f501cde88a418e48fbda7444",
            "eeafae34fe768511203748fade9baae74ee9c10e9a1e9261b103b0a84a11edce",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xDad5CC849036E92D691e68dDd021739Fde379CF4",
            "BMpBw4WLjTMtwhRQC3qvFZzDzLj8FcflvMHHnxNjMxjw3cw/ymZc0EkgCckejwoBvJhJV3n1Ac3oikGOSPvadEQ=",
            "7q+uNP52hREgN0j63puq507pwQ6aHpJhsQOwqEoR7c4=",
        ),
    ),
    # m/44'/60'/0'/0/206
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xaa95655e6771D2f3b9c47FFdC5972935cBa1FdC1",
            "0xdf30459a1574670c0acbecc34a60727772d5f4c9178d1efbcf2ba9bd90f06efda447ed2cbddeeb5127c52a300663832e32e4d4d72aac05240dc43b82a6b83ba7",
            "f2088c053821b568f96c8a717180dfc3695db4afdd408be8cfe399a7c32d2021",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xaa95655e6771D2f3b9c47FFdC5972935cBa1FdC1",
            "BN8wRZoVdGcMCsvsw0pgcndy1fTJF40e+88rqb2Q8G79pEftLL3e61EnxSowBmODLjLk1NcqrAUkDcQ7gqa4O6c=",
            "8giMBTghtWj5bIpxcYDfw2ldtK/dQIvoz+OZp8MtICE=",
        ),
    ),
    # m/44'/60'/0'/0/207
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x525F418ABc3E9b4bcb5182654839F7079C594289",
            "0x42c6166b60f23cf9c951c3efad8d65126ce23506c8d2234e0072757c87d8c32d1485f463c8306c8a210c54684c2233d504a456e338aacf2a28a3b7737cf27f47",
            "804d55cbc91ab8ab3af65be25a7820bb528c5c26e0a42f722361a8a8e02e73ec",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x525F418ABc3E9b4bcb5182654839F7079C594289",
            "BELGFmtg8jz5yVHD762NZRJs4jUGyNIjTgBydXyH2MMtFIX0Y8gwbIohDFRoTCIz1QSkVuM4qs8qKKO3c3zyf0c=",
            "gE1Vy8kauKs69lviWnggu1KMXCbgpC9yI2GoqOAuc+w=",
        ),
    ),
    # m/44'/60'/0'/0/208
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xb20D13432936c207309840BF6296038F96Aa4B71",
            "0xaf206fddfe2733cc7901dff48f9a191cc0fbf6ff46b17c3b5507ea32f47509110e416be3970c65a42b38db413068c2f1900a96a96d16b5bc62331da5c2671291",
            "09da1b8d0913a14b17bf65d7030be14dc97135e96f7e7ecf570502ff44e88b88",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xb20D13432936c207309840BF6296038F96Aa4B71",
            "BK8gb93+JzPMeQHf9I+aGRzA+/b/RrF8O1UH6jL0dQkRDkFr45cMZaQrONtBMGjC8ZAKlqltFrW8YjMdpcJnEpE=",
            "CdobjQkToUsXv2XXAwvhTclxNelvfn7PVwUC/0Toi4g=",
        ),
    ),
    # m/44'/60'/0'/0/209
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x981289c37B05c2992dD1e92400BC66ba72e88b6d",
            "0xea6c04dbe3add775cbf7c1b8778dfcaa9075b44a8d75ba01d751f25a7d688a53ae94d2f25ae411a3ca5ea9390c504b4dff8df4fc1e868777a3eb236876b133cf",
            "08589769b6759e8ee9561e1e1fe0fcbdd3a91ef7d237c224dcff6186d965ba1b",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x981289c37B05c2992dD1e92400BC66ba72e88b6d",
            "BOpsBNvjrdd1y/fBuHeN/KqQdbRKjXW6AddR8lp9aIpTrpTS8lrkEaPKXqk5DFBLTf+N9Pwehod3o+sjaHaxM88=",
            "CFiXabZ1no7pVh4eH+D8vdOpHvfSN8Ik3P9hhtlluhs=",
        ),
    ),
    # m/44'/60'/0'/0/210
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xCFEe7F737E31634e88d74BCFA406a973c5FE0118",
            "0x7893a17cd40578868862cb9455266fd48d9fea67e8578f25dde00b2b5aa26c72f60379b1449909d8652b534d4a8796b4b4491f38136f2161a7c01ee0c23ab819",
            "3866a840127573d44e3cb265656d67a97a867d4ef2fa116ab44c18ad7e7285c8",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xCFEe7F737E31634e88d74BCFA406a973c5FE0118",
            "BHiToXzUBXiGiGLLlFUmb9SNn+pn6FePJd3gCytaomxy9gN5sUSZCdhlK1NNSoeWtLRJHzgTbyFhp8Ae4MI6uBk=",
            "OGaoQBJ1c9ROPLJlZW1nqXqGfU7y+hFqtEwYrX5yhcg=",
        ),
    ),
    # m/44'/60'/0'/0/211
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x24215fd0f4909ec65D5F71Dd82e4C164dC8fFB95",
            "0xc305e5146c5ef4e79be35fc30fdcb23f084272b1aecc3e89e7f94beaee0a291b307abaa66525db4949a0ed14128e293e96e0cff9cfbb1515f94569654022e235",
            "5168e52dfc21b2d09709fc13dff9adc899d7aeed2faab220e387828b26aca6c5",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x24215fd0f4909ec65D5F71Dd82e4C164dC8fFB95",
            "BMMF5RRsXvTnm+Nfww/csj8IQnKxrsw+ief5S+ruCikbMHq6pmUl20lJoO0UEo4pPpbgz/nPuxUV+UVpZUAi4jU=",
            "UWjlLfwhstCXCfwT3/mtyJnXru0vqrIg44eCiyaspsU=",
        ),
    ),
    # m/44'/60'/0'/0/212
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x306d15d8522Ee53728bedDA8FB2F40DdDd519cC8",
            "0xa574ee48d71fd05a1f291f2085b5f5d0c48895331fe978bb576a498049d234400691973c552b95b54de4b465b4eaebda7c2559f461c3f25ec7109b8b399e5bc9",
            "d7f828f0a9374f817b1138a1b1c8f96d9776b1b9cede411aeb6e42d33bd7d324",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x306d15d8522Ee53728bedDA8FB2F40DdDd519cC8",
            "BKV07kjXH9BaHykfIIW19dDEiJUzH+l4u1dqSYBJ0jRABpGXPFUrlbVN5LRltOrr2nwlWfRhw/JexxCbizmeW8k=",
            "1/go8Kk3T4F7ETihscj5bZd2sbnO3kEa625C0zvX0yQ=",
        ),
    ),
    # m/44'/60'/0'/0/213
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x33cad28E729a2b12A782b4FF2112B25B51D76674",
            "0xa7b8a10d2c9d85e6d087d579db80609db32b49604678368f8b376ca74dfa016dfed07d3cb3ce7db51e434680a8d74fa62d0b92419aee6056e528678d486105e1",
            "19a1656881deb91719cce437a29cff97f3df2b7ccbbeb066cd847f8765c2e5d9",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x33cad28E729a2b12A782b4FF2112B25B51D76674",
            "BKe4oQ0snYXm0IfVeduAYJ2zK0lgRng2j4s3bKdN+gFt/tB9PLPOfbUeQ0aAqNdPpi0LkkGa7mBW5ShnjUhhBeE=",
            "GaFlaIHeuRcZzOQ3opz/l/PfK3zLvrBmzYR/h2XC5dk=",
        ),
    ),
    # m/44'/60'/0'/0/214
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xBa55AbE8E0002Bfe379Ed48fEb4aDD71E8322b3d",
            "0xa8a003a8cfdc00abd0e58519a232da91ebce6b9fbe99fc181782054372f2525e115b4449c9e56b00a3f3e77b48b87f9defcea200b42c20328d271a68f2f7899c",
            "8fdff63f8a3fe4b4f0228945197df9acfd7bd34e46c4400a5490f034ede2fab6",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xBa55AbE8E0002Bfe379Ed48fEb4aDD71E8322b3d",
            "BKigA6jP3ACr0OWFGaIy2pHrzmufvpn8GBeCBUNy8lJeEVtEScnlawCj8+d7SLh/ne/OogC0LCAyjScaaPL3iZw=",
            "j9/2P4o/5LTwIolFGX35rP17005GxEAKVJDwNO3i+rY=",
        ),
    ),
    # m/44'/60'/0'/0/215
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x9c51546DD31B9a26971Bd2b7c53e1c6Dae2FbbEC",
            "0x2550caf2abdbf709291e0165edd6256c2e84bac75b5823489ba9216cb8cf1aef7f6a0b310ba1ca8f05993a7efdbd830f24a0632078fed5c53b33a02c3aa218b2",
            "f939b73686e7e3e01e6eccb75a535e40408c4d4a729e4b911750ff80c4ad8f0b",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x9c51546DD31B9a26971Bd2b7c53e1c6Dae2FbbEC",
            "BCVQyvKr2/cJKR4BZe3WJWwuhLrHW1gjSJupIWy4zxrvf2oLMQuhyo8FmTp+/b2DDySgYyB4/tXFOzOgLDqiGLI=",
            "+Tm3Nobn4+Aebsy3WlNeQECMTUpynkuRF1D/gMStjws=",
        ),
    ),
    # m/44'/60'/0'/0/216
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x52F9653b2ce0a21a198F5E61695D6E20075BEf61",
            "0x88b74ed97a91b9ac2c70717f192641e82cc27ce250c0d46107f35786d82d686a385eb4a690cf701dae806b71e24fe1f93fb0057ab1807a26f354b8aef8dddcc1",
            "e3de18203487c5a8c6e2fba07fd008acaf624aff16d8a3505b014d1035ce7de6",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x52F9653b2ce0a21a198F5E61695D6E20075BEf61",
            "BIi3Ttl6kbmsLHBxfxkmQegswnziUMDUYQfzV4bYLWhqOF60ppDPcB2ugGtx4k/h+T+wBXqxgHom81S4rvjd3ME=",
            "494YIDSHxajG4vugf9AIrK9iSv8W2KNQWwFNEDXOfeY=",
        ),
    ),
    # m/44'/60'/0'/0/217
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xD7b5f523cA6D7e4dbC6f20722f290aD0311f0c6C",
            "0x18af7b1daa49f55f2fda22dbc417ac64e23756c9d0b221730638e74dff2f14c587deb4504e8ecdb39a347fa6d275ff84184cc576abfde8f875a8d1462e2f0251",
            "2b1615f63eddc82d5cd63ac66bf1ac95eca78396ffdd9137b737eecfcf7b9a87",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xD7b5f523cA6D7e4dbC6f20722f290aD0311f0c6C",
            "BBivex2qSfVfL9oi28QXrGTiN1bJ0LIhcwY4503/LxTFh960UE6OzbOaNH+m0nX/hBhMxXar/ej4dajRRi4vAlE=",
            "KxYV9j7dyC1c1jrGa/Gsleyng5b/3ZE3tzfuz897moc=",
        ),
    ),
    # m/44'/60'/0'/0/218
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x16c69B42ce3acEC2C5Be3661CE42657051379701",
            "0x9034effa8987d85b97f91931c311cba35439e11683d26bed6c6956b167ebd6e5702c69f07ebd325b9871be91363e9e2b4622faf21890222e87b77a05ecea5d0f",
            "46d6cf307ad35e40b3127d5c4dfe7578848e86b483c51d86e67aebbdd111068d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x16c69B42ce3acEC2C5Be3661CE42657051379701",
            "BJA07/qJh9hbl/kZMcMRy6NUOeEWg9Jr7WxpVrFn69blcCxp8H69MluYcb6RNj6eK0Yi+vIYkCIuh7d6BezqXQ8=",
            "RtbPMHrTXkCzEn1cTf51eISOhrSDxR2G5nrrvdERBo0=",
        ),
    ),
    # m/44'/60'/0'/0/219
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x58b262Ff4297375B8b76B15f7101eB9F4A4F623c",
            "0x882703f6104a952be4643b062d73ab1f3a2eaccbc83a619c7d61b10d86dabb9e0e8c901b124cbdfd058fd13f08a148d6acea088fccd4607d62e7c2541649df6f",
            "0e71eb86f15be9412b912865f34d29b3f586146affc5563e72184c2fdbc83f10",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x58b262Ff4297375B8b76B15f7101eB9F4A4F623c",
            "BIgnA/YQSpUr5GQ7Bi1zqx86LqzLyDphnH1hsQ2G2rueDoyQGxJMvf0Fj9E/CKFI1qzqCI/M1GB9YufCVBZJ328=",
            "DnHrhvFb6UErkShl800ps/WGFGr/xVY+chhML9vIPxA=",
        ),
    ),
    # m/44'/60'/0'/0/220
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x39B5d23eC1B0412659B8FBAF0e3B8075E7d627d1",
            "0x0c68b918213182a7f5c853211b3408b2a458ae529d8a9dddea0482a44201f0d33f3c27e9ae8583fe4cbfba161bbe42e901e12bbbccd1874d2228f28ee8fd6a48",
            "6c9d2dc2138668735d131ebbdf28350debd30e071811986b2a43f8f3423825d6",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x39B5d23eC1B0412659B8FBAF0e3B8075E7d627d1",
            "BAxouRghMYKn9chTIRs0CLKkWK5SnYqd3eoEgqRCAfDTPzwn6a6Fg/5Mv7oWG75C6QHhK7vM0YdNIijyjuj9akg=",
            "bJ0twhOGaHNdEx673yg1DevTDgcYEZhrKkP480I4JdY=",
        ),
    ),
    # m/44'/60'/0'/0/221
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x6998eDAF3A724b903A7f581C35a7d1acabE6022F",
            "0xb67e7ef3d60368630627c70b98d210bf39dc1a8d107b687afccea40fb5f54193bf79d8a7073ada8ac9193b17e37f34ec226adaf3dd4c8f191b45ad5fb74f4d42",
            "a81704c46e081be67fdbd8c9189dbea45cd7df8e3bdfc3efbf421f809b5da09e",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x6998eDAF3A724b903A7f581C35a7d1acabE6022F",
            "BLZ+fvPWA2hjBifHC5jSEL853BqNEHtoevzOpA+19UGTv3nYpwc62orJGTsX43807CJq2vPdTI8ZG0WtX7dPTUI=",
            "qBcExG4IG+Z/29jJGJ2+pFzX344738Pvv0IfgJtdoJ4=",
        ),
    ),
    # m/44'/60'/0'/0/222
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x49E37Eaa1D467FDa37ADF0c46DEcd1F184B74de8",
            "0xb6e1d85b10d9305b33098be16d7a274076d52b72776afa92f543ca5eb17568f2e7fcadb97690e990c3661ec108df1da6e4a9a37f89ac25a127054d58cc8aaaa8",
            "beb4bcf0a9e2383796fe46b8fd68f74351d473355116294e08596efc4893f7f3",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x49E37Eaa1D467FDa37ADF0c46DEcd1F184B74de8",
            "BLbh2FsQ2TBbMwmL4W16J0B21Styd2r6kvVDyl6xdWjy5/ytuXaQ6ZDDZh7BCN8dpuSpo3+JrCWhJwVNWMyKqqg=",
            "vrS88KniODeW/ka4/Wj3Q1HUczVRFilOCFlu/EiT9/M=",
        ),
    ),
    # m/44'/60'/0'/0/223
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x468bf0B9fC10D227bD0cEb7cf0E04125eBc131Df",
            "0xcda7d7db49d037d8e80f9cc8824d32407407078dc18fa84e38c02302733164d92d945820ed41e68a4cabea1762cc8b93c1edc1e2f08900e3982c704711c61f12",
            "903db9c561fb3bbf4efac62bfc2eee24bce3001412635bdb10c7adf342659cb7",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x468bf0B9fC10D227bD0cEb7cf0E04125eBc131Df",
            "BM2n19tJ0DfY6A+cyIJNMkB0BweNwY+oTjjAIwJzMWTZLZRYIO1B5opMq+oXYsyLk8HtweLwiQDjmCxwRxHGHxI=",
            "kD25xWH7O79O+sYr/C7uJLzjABQSY1vbEMet80JlnLc=",
        ),
    ),
    # m/44'/60'/0'/0/224
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xa364a5a35226Dfa78a133968F0CB0b8e1E9bBadb",
            "0x62c0d05d8081c6885da0bae9bd5cbaae50cdf3378687c262edce59d14f601f0fb04c88ffb91c675ac88ef1d8b43229172b6becf356fe4b708f34bb215b0df3d6",
            "e903ea92f6587dd5a9d96110ca752d6059ea983174e75590da2daf4f482ccc45",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xa364a5a35226Dfa78a133968F0CB0b8e1E9bBadb",
            "BGLA0F2AgcaIXaC66b1cuq5QzfM3hofCYu3OWdFPYB8PsEyI/7kcZ1rIjvHYtDIpFytr7PNW/ktwjzS7IVsN89Y=",
            "6QPqkvZYfdWp2WEQynUtYFnqmDF051WQ2i2vT0gszEU=",
        ),
    ),
    # m/44'/60'/0'/0/225
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xd0c5230a7b13C022868639b254D8AF11505A5AEa",
            "0x3612aea832b10fde006e9831662715349f34596e8569df40a2050f5adb69c703f92f1ee20daff02a0691a5e0aa29e142a2c7b880708fe067e3e79b4e76d99fca",
            "6ffdedf71cf7e87d990fb1f55ee693a70c9f027b314056889bf366fb39d4c4b5",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xd0c5230a7b13C022868639b254D8AF11505A5AEa",
            "BDYSrqgysQ/eAG6YMWYnFTSfNFluhWnfQKIFD1rbaccD+S8e4g2v8CoGkaXgqinhQqLHuIBwj+Bn4+ebTnbZn8o=",
            "b/3t9xz36H2ZD7H1XuaTpwyfAnsxQFaIm/Nm+znUxLU=",
        ),
    ),
    # m/44'/60'/0'/0/226
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x4243AB0445E32e49BbB8fFa50403c61a3e394Fda",
            "0xcfe5e60eea3675ac1f35a83f6b0bc8ee567d0fb460cc5beea70749b49c357b98fd703ac6976ac1b58d20f8eee93133cb445dfb2cf135e018495932dc5fd6bdcc",
            "54c25b1d5d74fae3e75805bd38c8e56c529b1ecf6d8940967e241f0a9e5ea507",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x4243AB0445E32e49BbB8fFa50403c61a3e394Fda",
            "BM/l5g7qNnWsHzWoP2sLyO5WfQ+0YMxb7qcHSbScNXuY/XA6xpdqwbWNIPju6TEzy0Rd+yzxNeAYSVky3F/Wvcw=",
            "VMJbHV10+uPnWAW9OMjlbFKbHs9tiUCWfiQfCp5epQc=",
        ),
    ),
    # m/44'/60'/0'/0/227
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x68caA4605457A976F47DB86527855F0947c83539",
            "0xdd0d52ed6eec0c8e71c82fc3a988ac914cb5fdda373d6e8a0d9ac9d1ef55b6cdaaa939350e7956857fa9be2e5aac8c5ddd020e5fc291c7f32dea1a501efe0f0a",
            "5f7d372d2f232633ffd664e4003931d2761337e72e4607eca1d62ba0c5e3eadb",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x68caA4605457A976F47DB86527855F0947c83539",
            "BN0NUu1u7AyOccgvw6mIrJFMtf3aNz1uig2aydHvVbbNqqk5NQ55VoV/qb4uWqyMXd0CDl/CkcfzLeoaUB7+Dwo=",
            "X303LS8jJjP/1mTkADkx0nYTN+cuRgfsodYroMXj6ts=",
        ),
    ),
    # m/44'/60'/0'/0/228
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x0A06b16C49cBBf93A6BC3915189FA5272f7DF2d6",
            "0xf8d4097f4afd09b1a3227f8727129927b698d90a840ffb526f0d854db90844ef3a6f3eb09aa2a9dc0795bbb815dee217d2a62df61087356fa4c2fd1367f940d3",
            "dccb2e8b8e4aca663198c4be9e31a39d619572c56271775ab3677f6eae4ce6cf",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x0A06b16C49cBBf93A6BC3915189FA5272f7DF2d6",
            "BPjUCX9K/QmxoyJ/hycSmSe2mNkKhA/7Um8NhU25CETvOm8+sJqiqdwHlbu4Fd7iF9KmLfYQhzVvpML9E2f5QNM=",
            "3Msui45KymYxmMS+njGjnWGVcsVicXdas2d/bq5M5s8=",
        ),
    ),
    # m/44'/60'/0'/0/229
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x3bcad825cF8dAb4871009D8f8C44720d3C2A0Fee",
            "0x281f9b075e68da6fb38384b52f9b9c26c757cac15c2bcabf597cf38b4c9630391414d7c273f35fd4d3753d1dcc63c8ad309da6e6a2aa1145fb69d3252e5ab797",
            "d53a7fc8f1a3502e55cb7a2444299c5a3a630b53baa1d41538541d70fb8b88ff",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x3bcad825cF8dAb4871009D8f8C44720d3C2A0Fee",
            "BCgfmwdeaNpvs4OEtS+bnCbHV8rBXCvKv1l884tMljA5FBTXwnPzX9TTdT0dzGPIrTCdpuaiqhFF+2nTJS5at5c=",
            "1Tp/yPGjUC5Vy3okRCmcWjpjC1O6odQVOFQdcPuLiP8=",
        ),
    ),
    # m/44'/60'/0'/0/230
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x6F853374696ec0B04d1e2127a43c452Bb122140c",
            "0x929867ee3d70c1d40f732897b9f52b25d9e906f6ce89d5200c71bcfd554366931847d0053e0eb1219c849999e3e26a16fe874d05b99445b7d2cd5ebcbbd38e39",
            "41715dbaee73daf254ac50cb373e858a715ed2d7e0097e66be63fb0995d324c5",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x6F853374696ec0B04d1e2127a43c452Bb122140c",
            "BJKYZ+49cMHUD3Mol7n1KyXZ6Qb2zonVIAxxvP1VQ2aTGEfQBT4OsSGchJmZ4+JqFv6HTQW5lEW30s1evLvTjjk=",
            "QXFduu5z2vJUrFDLNz6FinFe0tfgCX5mvmP7CZXTJMU=",
        ),
    ),
    # m/44'/60'/0'/0/231
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xdbe1670307628FF8A78EF99Bd5Db526a1EfE0E3C",
            "0x6d180dd7c7128e944f12faefe642bccfb0129be96e3f38efd9213a994f010577e7b603bcd1e57a637c24f000200ada009b4c5076fe258a2c87ef7226f7cda620",
            "a90eea68f45cbcb5476238f42b3a637947b57520d040ac6d46d35994e7091726",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xdbe1670307628FF8A78EF99Bd5Db526a1EfE0E3C",
            "BG0YDdfHEo6UTxL67+ZCvM+wEpvpbj8479khOplPAQV357YDvNHlemN8JPAAIAraAJtMUHb+JYosh+9yJvfNpiA=",
            "qQ7qaPRcvLVHYjj0KzpjeUe1dSDQQKxtRtNZlOcJFyY=",
        ),
    ),
    # m/44'/60'/0'/0/232
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x12Af3f73e019B94B1a4aa392D37343919684970D",
            "0xded13e8acde3129f796eb8fdd5dc1e4d904e9057bcae7da82a34fac1b3b7c282fa42423032fe030a8354f9ad4fa3c1837fce43f4f35664f956bd48def0b39896",
            "26de27eaf341e0a3d170e21d410d5bbccdc01ee0c5fb9f9641dd533607ce72b2",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x12Af3f73e019B94B1a4aa392D37343919684970D",
            "BN7RPorN4xKfeW64/dXcHk2QTpBXvK59qCo0+sGzt8KC+kJCMDL+AwqDVPmtT6PBg3/OQ/TzVmT5Vr1I3vCzmJY=",
            "Jt4n6vNB4KPRcOIdQQ1bvM3AHuDF+5+WQd1TNgfOcrI=",
        ),
    ),
    # m/44'/60'/0'/0/233
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x58bf7a0f1D3Ca50b79e53796EF6FF9E83603bca3",
            "0x39db57aa5710b0440dd5aaae9600c5f6d30a0f33553c6167ec951e9775641af14eb53dd83e97989ffc942c4ba034c1a9c9c81796ae1227aaba44bda251a21c28",
            "484c34d05ed9858330758fede00325323a7774337e6f702048131963c35e9ff7",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x58bf7a0f1D3Ca50b79e53796EF6FF9E83603bca3",
            "BDnbV6pXELBEDdWqrpYAxfbTCg8zVTxhZ+yVHpd1ZBrxTrU92D6XmJ/8lCxLoDTBqcnIF5auEiequkS9olGiHCg=",
            "SEw00F7ZhYMwdY/t4AMlMjp3dDN+b3AgSBMZY8Nen/c=",
        ),
    ),
    # m/44'/60'/0'/0/234
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xE11dF59AE524BC405abbed3e27c9B974fa025BEB",
            "0x695d25af98bb1347cd1dab0a798bbae7ad4c2cc8459b79fac4c422f803f38a6013079d724b39f03f0c8ac682b923ea544b7a4e3259fdc8d45b61cbaba248bdf4",
            "c66da4b375bac9d403f445f5dce5c103df4e77182549503e21423efe0c82c827",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xE11dF59AE524BC405abbed3e27c9B974fa025BEB",
            "BGldJa+YuxNHzR2rCnmLuuetTCzIRZt5+sTEIvgD84pgEwedcks58D8MisaCuSPqVEt6TjJZ/cjUW2HLq6JIvfQ=",
            "xm2ks3W6ydQD9EX13OXBA99OdxglSVA+IUI+/gyCyCc=",
        ),
    ),
    # m/44'/60'/0'/0/235
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xCDFA8314895981d58859a37e4c3E49Bb7223D9Dc",
            "0x85a56fa4c03c93dcd1127b9b984dc901fefcebc6886acb9928e59749ed1363fea9b54904e112bbd4cc2fcea00d691cebeb0732c70286640a43eff18a8c3571ad",
            "9b551a28e439daad97c45169030f8ac01d3326f538773edaecb1349f4d44041c",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xCDFA8314895981d58859a37e4c3E49Bb7223D9Dc",
            "BIWlb6TAPJPc0RJ7m5hNyQH+/OvGiGrLmSjll0ntE2P+qbVJBOESu9TML86gDWkc6+sHMscChmQKQ+/xiow1ca0=",
            "m1UaKOQ52q2XxFFpAw+KwB0zJvU4dz7a7LE0n01EBBw=",
        ),
    ),
    # m/44'/60'/0'/0/236
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xacb14427883D12BB8f5561965B95A7b1e18E150C",
            "0x538fa4f311b45a2be3b2188bf09b84b3d26c5d1c414765b752fe1df7f92d1dd99c2b68c1c3fbb9762dda888cda84aff04f4ca9c96aca180111b313860d91b727",
            "59199616cbe2520cff17af8c095e7da908b6e5ea068fd5d03229fab1f0bc0b42",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xacb14427883D12BB8f5561965B95A7b1e18E150C",
            "BFOPpPMRtFor47IYi/CbhLPSbF0cQUdlt1L+Hff5LR3ZnCtowcP7uXYt2oiM2oSv8E9MqclqyhgBEbMThg2Rtyc=",
            "WRmWFsviUgz/F6+MCV59qQi25eoGj9XQMin6sfC8C0I=",
        ),
    ),
    # m/44'/60'/0'/0/237
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xaA8A4A314D105FBEEfe386E84DF5e3eF925cfe1A",
            "0x4a0c51598f2298610cd63f61b4b3e2032a2236aa086c7d6fc032bca9f90e8e5d4ff3d9aff50cebaddcce0493c3d98d08e9b3fa6425670abaf6192f1bde609ded",
            "70cd01271b8b88cd105d7df1d0b55cee2aefd2f1ef1a769c75b53661c27fe76a",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xaA8A4A314D105FBEEfe386E84DF5e3eF925cfe1A",
            "BEoMUVmPIphhDNY/YbSz4gMqIjaqCGx9b8AyvKn5Do5dT/PZr/UM663czgSTw9mNCOmz+mQlZwq69hkvG95gne0=",
            "cM0BJxuLiM0QXX3x0LVc7irv0vHvGnacdbU2YcJ/52o=",
        ),
    ),
    # m/44'/60'/0'/0/238
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x701ca76C39083b23a5662054Ba9Df7cE410c2818",
            "0xd40f61bb31065bdbe0ee3301b46258c7dd8ccb5dbff46e767a59346b667fb386639fed1cd8c00beede0e5c0b7c96ff7b045ce49f75cb5c8e2cdf4f2524f873e4",
            "49ff96e9e7e2e05b20c562452bf9ae74419f592f62ac51c1600d41ee8d3bfb76",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x701ca76C39083b23a5662054Ba9Df7cE410c2818",
            "BNQPYbsxBlvb4O4zAbRiWMfdjMtdv/RudnpZNGtmf7OGY5/tHNjAC+7eDlwLfJb/ewRc5J91y1yOLN9PJST4c+Q=",
            "Sf+W6efi4FsgxWJFK/mudEGfWS9irFHBYA1B7o07+3Y=",
        ),
    ),
    # m/44'/60'/0'/0/239
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x0E845236b07Cd31044c0f0c844DcFC2aF037FAB4",
            "0xbb75a6c2011f8c83f1d600c933325159e6c222ad4df48da35b400c942204d59991abc516dc14be039963a44504cb311b33bafb859ad8080c897ad577a1368126",
            "fa11f3596677606b576d2e4f86e69615ccda19525a4c371002e3e3f1903767e2",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x0E845236b07Cd31044c0f0c844DcFC2aF037FAB4",
            "BLt1psIBH4yD8dYAyTMyUVnmwiKtTfSNo1tADJQiBNWZkavFFtwUvgOZY6RFBMsxGzO6+4Wa2AgMiXrVd6E2gSY=",
            "+hHzWWZ3YGtXbS5PhuaWFczaGVJaTDcQAuPj8ZA3Z+I=",
        ),
    ),
    # m/44'/60'/0'/0/240
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xECAb781372936c6BB13625798B600F6EFBac73Ce",
            "0xd3a6054c7f82e588a59cd8658e8274f711b91461f97a08c2b9266d3af6c454143af1f2b13c6cbd39b8bcc8bd9b315c518cc740cd75f66c4361a092c649641bb7",
            "cf8763d4f1e674ac414216284b79d889695719f9b3d7fad6992438379688043d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xECAb781372936c6BB13625798B600F6EFBac73Ce",
            "BNOmBUx/guWIpZzYZY6CdPcRuRRh+XoIwrkmbTr2xFQUOvHysTxsvTm4vMi9mzFcUYzHQM119mxDYaCSxklkG7c=",
            "z4dj1PHmdKxBQhYoS3nYiWlXGfmz1/rWmSQ4N5aIBD0=",
        ),
    ),
    # m/44'/60'/0'/0/241
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xd28c10727Ab0e67c621829C7c1DB8a32a3bd868e",
            "0xfeea5f661c24dd812a6288b7fda62ffcfab4f3d8a49baad96b6a278040ea8f03ea9e7591d474682c59c33ac0ce33926e9dc355e7409967e84cf67ddc23261f4b",
            "8789e96c6f1fda0e41d1129e5f0804e404dd802a435523e47b5b29b88b336cdb",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xd28c10727Ab0e67c621829C7c1DB8a32a3bd868e",
            "BP7qX2YcJN2BKmKIt/2mL/z6tPPYpJuq2WtqJ4BA6o8D6p51kdR0aCxZwzrAzjOSbp3DVedAmWfoTPZ93CMmH0s=",
            "h4npbG8f2g5B0RKeXwgE5ATdgCpDVSPke1spuIszbNs=",
        ),
    ),
    # m/44'/60'/0'/0/242
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x57BD398aF2Db89dafa0dAf6a72F250b33CD8f88a",
            "0x229142272fdac32f90135b7df2a71351e285ab9395ff4d4550eb816c38189d94a669cf4b7fe3578cd3dbf22f5fcd2ef79b4cfd45451abbe62133cc58e17cad95",
            "453927a9592738cea7b0937930e9a934e65c8e136110d4602441a2e5d96ffc28",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x57BD398aF2Db89dafa0dAf6a72F250b33CD8f88a",
            "BCKRQicv2sMvkBNbffKnE1HihauTlf9NRVDrgWw4GJ2UpmnPS3/jV4zT2/IvX80u95tM/UVFGrvmITPMWOF8rZU=",
            "RTknqVknOM6nsJN5MOmpNOZcjhNhENRgJEGi5dlv/Cg=",
        ),
    ),
    # m/44'/60'/0'/0/243
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x2287C6A77f235849995D8B1b73613f73D5124828",
            "0x12127d30f2ad400225d904d91f89e8b4bea5fe410c056959599bca20bafd0cd029cbf31ef18aacb28ab68da363ae83dc0e643a8c79d166454dc90d1844641ac8",
            "9ef2d36ae36cf0c281f113fa0e07cd8fda22b2eb1381c2349b5852f6f925bc35",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x2287C6A77f235849995D8B1b73613f73D5124828",
            "BBISfTDyrUACJdkE2R+J6LS+pf5BDAVpWVmbyiC6/QzQKcvzHvGKrLKKto2jY66D3A5kOox50WZFTckNGERkGsg=",
            "nvLTauNs8MKB8RP6DgfNj9oisusTgcI0m1hS9vklvDU=",
        ),
    ),
    # m/44'/60'/0'/0/244
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x42Fdf10286C5a9c7cD1C8f6A9C6C7E18d6434490",
            "0x726094c0dea09fae6e5542c5d5715c25ccef1c9d01a18232ce76040a7fec3746db8b8231d5f1ee1de769e41800d4091b6d97b398c8c0190c4df5563c1d5b4a84",
            "12a84226deab6acab318591e16371d88993a62f5f354f2df1f4f6467f9bfcfc4",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x42Fdf10286C5a9c7cD1C8f6A9C6C7E18d6434490",
            "BHJglMDeoJ+ublVCxdVxXCXM7xydAaGCMs52BAp/7DdG24uCMdXx7h3naeQYANQJG22Xs5jIwBkMTfVWPB1bSoQ=",
            "EqhCJt6rasqzGFkeFjcdiJk6YvXzVPLfH09kZ/m/z8Q=",
        ),
    ),
    # m/44'/60'/0'/0/245
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xBfbd4a3C87917240579703746358D60fB12559Ec",
            "0xc7331e31c6678fcbd43d6e39bdb995f39fbac461cd0f29f321f2a56e87cf323a849cf2b4f33ab1170db3f331c0b1ed09cfd570704cfcfbbbf3513ba3a71a08d2",
            "d832ca0d78f9c7403c39da79e483ad39fa8311e2a1b1008f9d790c88c6930dfa",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xBfbd4a3C87917240579703746358D60fB12559Ec",
            "BMczHjHGZ4/L1D1uOb25lfOfusRhzQ8p8yHypW6HzzI6hJzytPM6sRcNs/MxwLHtCc/VcHBM/Pu781E7o6caCNI=",
            "2DLKDXj5x0A8Odp55IOtOfqDEeKhsQCPnXkMiMaTDfo=",
        ),
    ),
    # m/44'/60'/0'/0/246
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x776dD8905945B10afa6E64F7b9BD36dCd8B999b9",
            "0x9892022584a8c00d4dab566f2df8f7cfdb491895bd1e4aedd84df0b9b5a6e38df8fbddb37a00d63b57dba1e0dbc3170c2a04c9df43868dcfa436d70f300509c6",
            "4e6eb52120ad77115a01938f431160256674b981b6dec621329261b1fddc521c",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x776dD8905945B10afa6E64F7b9BD36dCd8B999b9",
            "BJiSAiWEqMANTatWby3498/bSRiVvR5K7dhN8Lm1puON+Pvds3oA1jtX26Hg28MXDCoEyd9Dho3PpDbXDzAFCcY=",
            "Tm61ISCtdxFaAZOPQxFgJWZ0uYG23sYhMpJhsf3cUhw=",
        ),
    ),
    # m/44'/60'/0'/0/247
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x1760EB6A8368E1bb533f42E973BD927EBA67DfCf",
            "0x47dbce2e943f88893f1e71a99d42e3ed3ef03e914e643787c7aea20de15d08f26fe808f2d4aab8d8f174fa439c7085795b0b42f79a0f45fd99b7ce05447018ce",
            "0b1496e13733a1f5b5cb9ea847409ecc15228a701bf3cb5e2a6cae488d58eed0",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x1760EB6A8368E1bb533f42E973BD927EBA67DfCf",
            "BEfbzi6UP4iJPx5xqZ1C4+0+8D6RTmQ3h8euog3hXQjyb+gI8tSquNjxdPpDnHCFeVsLQveaD0X9mbfOBURwGM4=",
            "CxSW4TczofW1y56oR0CezBUiinAb88teKmyuSI1Y7tA=",
        ),
    ),
    # m/44'/60'/0'/0/248
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x11bcBe394e3962bB302e750158e43D2b3c182CB0",
            "0x1c6651c37bb4659b3479e071a3aee1663ed8f99da27fc9972c7338afd824507892288c8224df994655be1ea32926f2965ed57a10d5e509d938f96d3d95792a8f",
            "efedda6e174df1f0db339abb74218bb37633abf4f025dc15a680eb7eb354ce73",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x11bcBe394e3962bB302e750158e43D2b3c182CB0",
            "BBxmUcN7tGWbNHngcaOu4WY+2Pmdon/JlyxzOK/YJFB4kiiMgiTfmUZVvh6jKSbyll7VehDV5QnZOPltPZV5Ko8=",
            "7+3abhdN8fDbM5q7dCGLs3Yzq/TwJdwVpoDrfrNUznM=",
        ),
    ),
    # m/44'/60'/0'/0/249
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x7eFA8B82968BAf63077845779ee6fCb8DbF5C8C9",
            "0x3d46e5345326cca199d04ca9b52440f5600c3c71c807bc320d36e0c6fef8e03d05b22930afe47d0124f76294aed4d5c6a308bd99c57086fa8edffe387535ba39",
            "d6096d855fa39d51eaa5e7cb7cdcc98a3b4bd50e17edb7184514f1f5976e2ae6",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x7eFA8B82968BAf63077845779ee6fCb8DbF5C8C9",
            "BD1G5TRTJsyhmdBMqbUkQPVgDDxxyAe8Mg024Mb++OA9BbIpMK/kfQEk92KUrtTVxqMIvZnFcIb6jt/+OHU1ujk=",
            "1glthV+jnVHqpefLfNzJijtL1Q4X7bcYRRTx9ZduKuY=",
        ),
    ),
    # m/44'/60'/0'/0/250
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x483fA9355D5eFbC10005f0024E422168e04B771C",
            "0x92e3b074c4f7b2d6d0e4c1121722c9fad9601dac49e550c4e53991446900c0f442605650c82cf8ce922d87cbe243c37d00d303c91fb6cfe03b35ac39d86e7179",
            "a201a4ddaa1c24be10f32b094d8cfd861dbbb64afc09297c423dbd64b11199cd",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x483fA9355D5eFbC10005f0024E422168e04B771C",
            "BJLjsHTE97LW0OTBEhciyfrZYB2sSeVQxOU5kURpAMD0QmBWUMgs+M6SLYfL4kPDfQDTA8kfts/gOzWsOdhucXk=",
            "ogGk3aocJL4Q8ysJTYz9hh27tkr8CSl8Qj29ZLERmc0=",
        ),
    ),
    # m/44'/60'/0'/0/251
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xCF29231a55476Ac52eEA2Fa8153C289dA5d13cBA",
            "0x68a6aadd06ec9bbd79a00c2e698fcc5ca9975925776260ef6603730a7766596a85da48df6f60aad23f44b75add53b980d7a11983cd7b4037eb8f4a3c265c3681",
            "e5e03d5a28b6ccb0b3a130e0d85966ccc9136865fc352786789f1bbd85bf14d1",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xCF29231a55476Ac52eEA2Fa8153C289dA5d13cBA",
            "BGimqt0G7Ju9eaAMLmmPzFypl1kld2Jg72YDcwp3ZllqhdpI329gqtI/RLda3VO5gNehGYPNe0A3649KPCZcNoE=",
            "5eA9Wii2zLCzoTDg2FlmzMkTaGX8NSeGeJ8bvYW/FNE=",
        ),
    ),
    # m/44'/60'/0'/0/252
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x4990ec165C7e4348D149FF8DB04e453a30BB6471",
            "0x6c6cc5788d193fc6fa8fa6bc65de7757dcb46dd408b47e38e1d522626d25dbf7d6daa300c0d8a93a3fd02bb684acb5ba485e04070c77c59a65dd1e5133a2ca59",
            "6fbffa175d62fac52282fc6d5ce5c8614ebfaac6ee0acbe89e01d81339f044f4",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x4990ec165C7e4348D149FF8DB04e453a30BB6471",
            "BGxsxXiNGT/G+o+mvGXed1fctG3UCLR+OOHVImJtJdv31tqjAMDYqTo/0Cu2hKy1ukheBAcMd8WaZd0eUTOiylk=",
            "b7/6F11i+sUigvxtXOXIYU6/qsbuCsvongHYEznwRPQ=",
        ),
    ),
    # m/44'/60'/0'/0/253
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x3847d82f22833D8AE9f756d0128eff91D27AB864",
            "0x34f92b0c3cb2f177c33e8a8d03172d9b616708d2b0a61a23e2b27a278354c9047f8fbd509d321180a8960fb91b7dcf28739ae10420969f2c848a2e4965454d53",
            "4d68b0201943f05d7e7c4fd6040b969584c0b6f3fdcd225799c016f79aaba1b7",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x3847d82f22833D8AE9f756d0128eff91D27AB864",
            "BDT5Kww8svF3wz6KjQMXLZthZwjSsKYaI+KyeieDVMkEf4+9UJ0yEYColg+5G33PKHOa4QQglp8shIouSWVFTVM=",
            "TWiwIBlD8F1+fE/WBAuWlYTAtvP9zSJXmcAW95qrobc=",
        ),
    ),
    # m/44'/60'/0'/0/254
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x73b936bD2FEE34f81EEC9A75b7eAef0bf73a6f89",
            "0xdeed07dcae032253a6105362bd342c0f332cb654aff59cc6cf5874d54c44eb6b822221c9530cb990e74d7e7645097a07ecac79fb34c734d0d54fa0335c097184",
            "2221b0b24bb7d373b9a54b068fa491abf63c1bc7d32f61d37eb7f7aa53c51fc4",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x73b936bD2FEE34f81EEC9A75b7eAef0bf73a6f89",
            "BN7tB9yuAyJTphBTYr00LA8zLLZUr/Wcxs9YdNVMROtrgiIhyVMMuZDnTX52RQl6B+ysefs0xzTQ1U+gM1wJcYQ=",
            "IiGwsku303O5pUsGj6SRq/Y8G8fTL2HTfrf3qlPFH8Q=",
        ),
    ),
    # m/44'/60'/0'/0/255
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x69EBd7151716d4e5Bf589725afAe55d027EbE11e",
            "0xf53fc3fd494bed1ccd461e3326c5e11128ff47a50d00a3dd730cdc0e274a2e774eaeef51d9f78521b934c3b38a92ff25e364cc65011359e20799aa014bbd7d0a",
            "30d2af84458819a429503609ecc6adaa32b4426016de0e628c428e3055abeb9f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x69EBd7151716d4e5Bf589725afAe55d027EbE11e",
            "BPU/w/1JS+0czUYeMybF4REo/0elDQCj3XMM3A4nSi53Tq7vUdn3hSG5NMOzipL/JeNkzGUBE1niB5mqAUu9fQo=",
            "MNKvhEWIGaQpUDYJ7MatqjK0QmAW3g5ijEKOMFWr658=",
        ),
    ),
    # m/44'/60'/0'/0/256
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x4646c96585e3b09067fF5d3f4c632629033f7CC8",
            "0x2904d17ea6cee840d9dbdff949d0f61768d5458742240d03b032bf94f2e8dac76e450f91b3ac6bc41fd17fd449cd1de1f51e5f3426798fcc4baa7058fcd5dc88",
            "49c557b6cfdf72ca21b5c7ebb8e15620266a26960dd927c55b43fb8868ed533e",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x4646c96585e3b09067fF5d3f4c632629033f7CC8",
            "BCkE0X6mzuhA2dvf+UnQ9hdo1UWHQiQNA7Ayv5Ty6NrHbkUPkbOsa8Qf0X/USc0d4fUeXzQmeY/MS6pwWPzV3Ig=",
            "ScVXts/fcsohtcfruOFWICZqJpYN2SfFW0P7iGjtUz4=",
        ),
    ),
    # m/44'/60'/0'/0/257
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xFea56DC7BEb7E946B025c8F6853dF9bC1B914CF8",
            "0xa7ed6db82c285c09d5946ee2f83c54b3c16c76a31d0d5d49e1ff0dc681d7c7446996f8e3a4cff9c6715a7620ed6d1d49607b53b2961e199baba5a462069c9a94",
            "9134e49dc4c369337acd404df81c431dfad5c3103ba4b1f893e788500088cd3e",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xFea56DC7BEb7E946B025c8F6853dF9bC1B914CF8",
            "BKftbbgsKFwJ1ZRu4vg8VLPBbHajHQ1dSeH/DcaB18dEaZb446TP+cZxWnYg7W0dSWB7U7KWHhmbq6WkYgacmpQ=",
            "kTTkncTDaTN6zUBN+BxDHfrVwxA7pLH4k+eIUACIzT4=",
        ),
    ),
    # m/44'/60'/0'/0/258
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x141949EAD46af42Edf3BAe0f78Ad38cB482833E5",
            "0x80bb562cff2855a3215ef0de4a1cc60b50eb1a4da75f3ca2144236fd223c8911707db884c7e7227194dbf5ba8ad09a95ea192f68e04ee703af78ea36f0723b27",
            "511299dab6b90c8b8c28ab08a5c4ef52169031a87287dff2f97f0e137e9630c7",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x141949EAD46af42Edf3BAe0f78Ad38cB482833E5",
            "BIC7Viz/KFWjIV7w3kocxgtQ6xpNp188ohRCNv0iPIkRcH24hMfnInGU2/W6itCaleoZL2jgTucDr3jqNvByOyc=",
            "URKZ2ra5DIuMKKsIpcTvUhaQMahyh9/y+X8OE36WMMc=",
        ),
    ),
    # m/44'/60'/0'/0/259
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x6577c4bE73c6Bc8ab70e0DA974997cDcCD7EC71a",
            "0xe348ffbd1dfb4bedb2d962848162f3196a86aaa69ef9f805572c8c0518c4a49f7ff83a88ddd085129408c7a976e2caa6393df101ae020c63c11766975ec5d359",
            "9b20c7ac5b62ee6b2115d348f8b54dd4b5e8bd783a9888bf77c422118d92c211",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x6577c4bE73c6Bc8ab70e0DA974997cDcCD7EC71a",
            "BONI/70d+0vtstlihIFi8xlqhqqmnvn4BVcsjAUYxKSff/g6iN3QhRKUCMepduLKpjk98QGuAgxjwRdml17F01k=",
            "myDHrFti7mshFdNI+LVN1LXovXg6mIi/d8QiEY2SwhE=",
        ),
    ),
    # m/44'/60'/0'/0/260
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x40d2f48c3c7044BFac934Fe916daC01B88050FFF",
            "0xef9bbb8d2f09371ccfd2e97375a01cdd3091d22970b508998c3efc54452aba09364685d9909593768fb7452471603ad7370978fabef830627a2ac6d00160e51d",
            "a80d2f368c295c8453125e9b944842ee0443c797b35bda640bbf817048499f4d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x40d2f48c3c7044BFac934Fe916daC01B88050FFF",
            "BO+bu40vCTccz9Lpc3WgHN0wkdIpcLUImYw+/FRFKroJNkaF2ZCVk3aPt0UkcWA61zcJePq++DBieirG0AFg5R0=",
            "qA0vNowpXIRTEl6blEhC7gRDx5ezW9pkC7+BcEhJn00=",
        ),
    ),
    # m/44'/60'/0'/0/261
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xc73F811B37D7708E61314cF89261E767159a1129",
            "0xe2ae1766b7ca6e4dde18b5dbbaffa8d0d194a951c056cc9af789a84c12967a4bcc9c745a0d150fecf057f9d48cc96fbe2d89104954a334ccc5ff767a5b095ad8",
            "dab02075c7b5b926012fb0ab628ac5c8185f424da00547b75ca004cfc087fca0",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xc73F811B37D7708E61314cF89261E767159a1129",
            "BOKuF2a3ym5N3hi127r/qNDRlKlRwFbMmveJqEwSlnpLzJx0Wg0VD+zwV/nUjMlvvi2JEElUozTMxf92elsJWtg=",
            "2rAgdce1uSYBL7CrYorFyBhfQk2gBUe3XKAEz8CH/KA=",
        ),
    ),
    # m/44'/60'/0'/0/262
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x650dD853818dE51AAB59a18297f5cC64d0Cf6EB5",
            "0x5c57ad3c8be919a4075762f4d5e8bbdf39f379d3afce4c1328f628a165ece99ee64984e0e9311eff87f55c7369d5cc4f0c850cd249a21b8bdfcdd3df7eebb9b9",
            "d55f0a86606ed653e64bed2b91922a569d330853705e24c9cf2782be05a52019",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x650dD853818dE51AAB59a18297f5cC64d0Cf6EB5",
            "BFxXrTyL6RmkB1di9NXou98583nTr85MEyj2KKFl7Ome5kmE4OkxHv+H9VxzadXMTwyFDNJJohuL383T337rubk=",
            "1V8KhmBu1lPmS+0rkZIqVp0zCFNwXiTJzyeCvgWlIBk=",
        ),
    ),
    # m/44'/60'/0'/0/263
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x77Beab2051Ed738dd2Af0172E40d6f52E6E64471",
            "0xa823dfd01f139639b87d2b5d612965188234dc0726044cf5749d6bec643b4de9c64905df59b91e160a5cf35b52eee9afdf1d5cdd6ca033c1f99a19449c0bf8b0",
            "6ee6f04f40a81f24d4ae9673854f765f511615fb73fec994098f8585b12d24ea",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x77Beab2051Ed738dd2Af0172E40d6f52E6E64471",
            "BKgj39AfE5Y5uH0rXWEpZRiCNNwHJgRM9XSda+xkO03pxkkF31m5HhYKXPNbUu7pr98dXN1soDPB+ZoZRJwL+LA=",
            "bubwT0CoHyTUrpZzhU92X1EWFftz/smUCY+FhbEtJOo=",
        ),
    ),
    # m/44'/60'/0'/0/264
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xded625E620Acc5b7db7460303526934c5a97614a",
            "0x868c2e54e328fd710ef61f1bcd2281824b7dda28cd0e885a3efe68e71a27917098e39f9bf287a8f2961606d0430ba91e3b07fdf98708988e8f496945355c8a61",
            "04a7cb9aeadce850622113981bc30ac8ad68b9564928d9ff3f4c0b4912d8cb69",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xded625E620Acc5b7db7460303526934c5a97614a",
            "BIaMLlTjKP1xDvYfG80igYJLfdoozQ6IWj7+aOcaJ5FwmOOfm/KHqPKWFgbQQwupHjsH/fmHCJiOj0lpRTVcimE=",
            "BKfLmurc6FBiIROYG8MKyK1ouVZJKNn/P0wLSRLYy2k=",
        ),
    ),
    # m/44'/60'/0'/0/265
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xEd821132C0cf73d1f801DB3ADf3F60a814fF1d49",
            "0xc50f1f69fd1302abbeb6f43b115bc3f3232fa233d76bdfd962a38d4e24bac3d5ec110fee377437946e37979ae5561b3e3de987b3197a9493f647da8c79bb6362",
            "c411ad2b5dae3c3403fca143b15f8ea10bc031a2b5427722a29c328a5e4aafdd",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xEd821132C0cf73d1f801DB3ADf3F60a814fF1d49",
            "BMUPH2n9EwKrvrb0OxFbw/MjL6Iz12vf2WKjjU4kusPV7BEP7jd0N5RuN5ea5VYbPj3ph7MZepST9kfajHm7Y2I=",
            "xBGtK12uPDQD/KFDsV+OoQvAMaK1Qnciopwyil5Kr90=",
        ),
    ),
    # m/44'/60'/0'/0/266
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x9523983fE485acAFd8B70fb6961880d477f4471d",
            "0xc592a855de2079f477f4b4c56f6d666ca2dc5c112de9e8ad5796fecfc9c034e355ed1680ec243476958785532e039b13e305871516b364950bc7405d7ae9a9f6",
            "e835e317889d2f481b358585e406bf73ec2ace9cc0eed7a447206e96c4c69245",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x9523983fE485acAFd8B70fb6961880d477f4471d",
            "BMWSqFXeIHn0d/S0xW9tZmyi3FwRLenorVeW/s/JwDTjVe0WgOwkNHaVh4VTLgObE+MFhxUWs2SVC8dAXXrpqfY=",
            "6DXjF4idL0gbNYWF5Aa/c+wqzpzA7tekRyBulsTGkkU=",
        ),
    ),
    # m/44'/60'/0'/0/267
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x0AD301cd1Ab06431658DEb847DD5f423E8613E60",
            "0x9b0ebafda722d322dc97bae91cdb31f0b1ff554dd46930c71d5e042f5ced2cf5392b93fea6220045fedd28ca518e60f0042966653d77e4efe112cb697f93804d",
            "2884c874501b3fd03e9d217a36d7db4b729bb6c7920bd6c3d241c913e736fce5",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x0AD301cd1Ab06431658DEb847DD5f423E8613E60",
            "BJsOuv2nItMi3Je66RzbMfCx/1VN1Gkwxx1eBC9c7Sz1OSuT/qYiAEX+3SjKUY5g8AQpZmU9d+Tv4RLLaX+TgE0=",
            "KITIdFAbP9A+nSF6NtfbS3KbtseSC9bD0kHJE+c2/OU=",
        ),
    ),
    # m/44'/60'/0'/0/268
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xa81A3E5ace8A0f4d44ca0e16dD41ac13C1A315b2",
            "0xc1175e486d255e97f7da847b4ad42aabd51285f416dd201d54977213cbfb1a6185def7827608e8afade07828590af3cb6d69838b89f09e94c438ccd2303f91f4",
            "ac21ef94ec5dd328457d1a97d8f869746f9333297cb341d9446529af5fca9632",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xa81A3E5ace8A0f4d44ca0e16dD41ac13C1A315b2",
            "BMEXXkhtJV6X99qEe0rUKqvVEoX0Ft0gHVSXchPL+xphhd73gnYI6K+t4HgoWQrzy21pg4uJ8J6UxDjM0jA/kfQ=",
            "rCHvlOxd0yhFfRqX2PhpdG+TMyl8s0HZRGUpr1/KljI=",
        ),
    ),
    # m/44'/60'/0'/0/269
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x9Bd01Bc8167d931E926c6836582a4b3232655D56",
            "0x36870ff9fed3d95d314f0d4af6a25d370e63aab3f0cac5e7d82863d8b35389c74d4be1871201a3b8509c5e6dda46880e39550167ed05583e465ef280b0f1be80",
            "5ce766dff792f3796332608b2554a8af5d9ba256ada7abf400128d4941aaea10",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x9Bd01Bc8167d931E926c6836582a4b3232655D56",
            "BDaHD/n+09ldMU8NSvaiXTcOY6qz8MrF59goY9izU4nHTUvhhxIBo7hQnF5t2kaIDjlVAWftBVg+Rl7ygLDxvoA=",
            "XOdm3/eS83ljMmCLJVSor12bolatp6v0ABKNSUGq6hA=",
        ),
    ),
    # m/44'/60'/0'/0/270
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x1Ce455d0a0f2e38cbb813356D3F999D6ea523d5b",
            "0xa9674e7a1ab76eb5fc4a44beca127b85c792ca46477bfc4e0d35d15e28748730bd592deb82ccc42b5071a324d064efb567fcb3a4bf5916dfa8cc254cea80ba14",
            "8d4641adc81fac15460cf5ca6fbdee9567ba234774f708fd3f29132c8fecb664",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x1Ce455d0a0f2e38cbb813356D3F999D6ea523d5b",
            "BKlnTnoat261/EpEvsoSe4XHkspGR3v8Tg010V4odIcwvVkt64LMxCtQcaMk0GTvtWf8s6S/WRbfqMwlTOqAuhQ=",
            "jUZBrcgfrBVGDPXKb73ulWe6I0d09wj9PykTLI/stmQ=",
        ),
    ),
    # m/44'/60'/0'/0/271
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xC6bAA8AE1cE74ff747731c9d7594C825727Ba5F0",
            "0x664595705ccd6b6ba59d764f9a7323df84700065fb0b8ab848d882d2604c28be84d6c10624174c0b1469322af6b68a45bb25dca45ad960f0fb9f59468ccfaea2",
            "394fea06e9cd9bf9189cb80eaac530b2c982bbfc70131aa3207208b82cdf3801",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xC6bAA8AE1cE74ff747731c9d7594C825727Ba5F0",
            "BGZFlXBczWtrpZ12T5pzI9+EcABl+wuKuEjYgtJgTCi+hNbBBiQXTAsUaTIq9raKRbsl3KRa2WDw+59ZRozPrqI=",
            "OU/qBunNm/kYnLgOqsUwssmCu/xwExqjIHIIuCzfOAE=",
        ),
    ),
    # m/44'/60'/0'/0/272
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x163Ca0F3EA6EC741eA463628540b297004891bfF",
            "0x995c61356268b402030279bca811a7db2b7c1ade03dcca111ae9ea30be4eb6662b703e03daa119fc07586677b23e2a7c403596c30dc48cf830be76a85c52df7e",
            "85d1780c72eb127879068f59e4db11f655ab7068528c34a4f72ce715096c2e52",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x163Ca0F3EA6EC741eA463628540b297004891bfF",
            "BJlcYTViaLQCAwJ5vKgRp9srfBreA9zKERrp6jC+TrZmK3A+A9qhGfwHWGZ3sj4qfEA1lsMNxIz4ML52qFxS334=",
            "hdF4DHLrEnh5Bo9Z5NsR9lWrcGhSjDSk9yznFQlsLlI=",
        ),
    ),
    # m/44'/60'/0'/0/273
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x819B8cC5c3B84E833828349522e8D3EFe01E7B2D",
            "0x134c7f9700c4e073c42c01467581817cc89a161f32a65a519926b39e771066af14e88d88b8c8eada7d07d11808fae1ddfb9213e9b792a9698021e9c1f0429f",
            "9dd1e11f3503f5f34f77a590fbcd4ec67341f5c398bb2386f2de91bed4f18695",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x819B8cC5c3B84E833828349522e8D3EFe01E7B2D",
            "BBNMf5cAxOBzxCwBRnWBgXzImhYfMqZaUZkms553EGavFOiNiLjI6tp9B9EYCPrh3fuSE+m3kqlpgCHpwfBCnw==",
            "ndHhHzUD9fNPd6WQ+81OxnNB9cOYuyOG8t6RvtTxhpU=",
        ),
    ),
    # m/44'/60'/0'/0/274
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x38A8bA2bd71Fd319Dd685cCAFC5A0ebB2153CF6A",
            "0x94b55b93cbad4783e14cc1de99505433d3f5db769fb1cdf61010862057d8c95eb6a19e134ccc32dbf93a6295af860da7e9546e85b98b178ce3d686f121da9afb",
            "0e498ceef37e5fa6a292c19ec361678ecd4f4e6077bd00ec0546389833f782ef",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x38A8bA2bd71Fd319Dd685cCAFC5A0ebB2153CF6A",
            "BJS1W5PLrUeD4UzB3plQVDPT9dt2n7HN9hAQhiBX2MletqGeE0zMMtv5OmKVr4YNp+lUboW5ixeM49aG8SHamvs=",
            "DkmM7vN+X6aiksGew2Fnjs1PTmB3vQDsBUY4mDP3gu8=",
        ),
    ),
    # m/44'/60'/0'/0/275
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x9463E9662566759fA5D29C1E3d1437871c6E9c45",
            "0xce07197bbf7961c9192fd86beac0a654a7e26f83243c83cae1ed905b64ea53b670ecad363729495d8897692382ee278daba2ddf0903c94e6cdd341a1d9e7fda0",
            "eb64ab4ae055bdf71cdf23815a00089fe47200d202920ce3198d36cd07585f85",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x9463E9662566759fA5D29C1E3d1437871c6E9c45",
            "BM4HGXu/eWHJGS/Ya+rAplSn4m+DJDyDyuHtkFtk6lO2cOytNjcpSV2Il2kjgu4njaui3fCQPJTmzdNBodnn/aA=",
            "62SrSuBVvfcc3yOBWgAIn+RyANICkgzjGY02zQdYX4U=",
        ),
    ),
    # m/44'/60'/0'/0/276
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x394128BEb0a80EbABa5A97c1a606d2BdFBcF0A49",
            "0xc8750ef612f8490d095c9c5f186ee7a4115ac1bf9dc7a8c6a952c9f761d284edddc8789c72c13c54bde429ff96d85e0359de530febbec200738fa879097ae037",
            "996845640c2524d3df6f81562d122f47b1265422211b00ec6d1dff57ad273a7f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x394128BEb0a80EbABa5A97c1a606d2BdFBcF0A49",
            "BMh1DvYS+EkNCVycXxhu56QRWsG/nceoxqlSyfdh0oTt3ch4nHLBPFS95Cn/ltheA1neUw/rvsIAc4+oeQl64Dc=",
            "mWhFZAwlJNPfb4FWLRIvR7EmVCIhGwDsbR3/V60nOn8=",
        ),
    ),
    # m/44'/60'/0'/0/277
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x35ecAF55094994de06b36f121d05F16C3d895E9f",
            "0x840651c998d396779c7d2fd32635207f6e8873d44866b2b60ea17df9fd868a641446b37583e6acd1df7efbb989e8b77f130fe777d90cebded289d03a26a05364",
            "07293cc92f6eb6cfdbd41cdf2dd93cb4cce089bde066374737b4492da16a77bb",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x35ecAF55094994de06b36f121d05F16C3d895E9f",
            "BIQGUcmY05Z3nH0v0yY1IH9uiHPUSGaytg6hffn9hopkFEazdYPmrNHffvu5iei3fxMP53fZDOve0onQOiagU2Q=",
            "Byk8yS9uts/b1BzfLdk8tMzgib3gZjdHN7RJLaFqd7s=",
        ),
    ),
    # m/44'/60'/0'/0/278
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x30F6E24166234FD22B15b9f5eBb9C642E983C4B8",
            "0x93d945d272f7f44a46b6c8958c3c1681952af66e51cfc03dac70aa596e7ce0a8c80868a70273e31f7ad7aa243513c9a07c3201aa81893692df6015d5ec91e6a6",
            "71c556d363bdb68c9d7fd6f6529afd9d54a3b8d311c76602ee34a38536b066fd",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x30F6E24166234FD22B15b9f5eBb9C642E983C4B8",
            "BJPZRdJy9/RKRrbIlYw8FoGVKvZuUc/APaxwqllufOCoyAhopwJz4x9616okNRPJoHwyAaqBiTaS32AV1eyR5qY=",
            "ccVW02O9toydf9b2Upr9nVSjuNMRx2YC7jSjhTawZv0=",
        ),
    ),
    # m/44'/60'/0'/0/279
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x136aC46813390dEE7684905c6d57cafAf60c23A7",
            "0x7287515a1cf4093eccc8be7b9e4c25e27bf8c5732633ef9f7ae54be7107761f786b99854f49d3d09ab362a560fe6a8b4031ec900b62fde28aacc0111f98046ef",
            "b834fd3ee0aa5606f07ca23a149bc310ed3105437babca670b9f2b1bbb0d2d42",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x136aC46813390dEE7684905c6d57cafAf60c23A7",
            "BHKHUVoc9Ak+zMi+e55MJeJ7+MVzJjPvn3rlS+cQd2H3hrmYVPSdPQmrNipWD+aotAMeyQC2L94oqswBEfmARu8=",
            "uDT9PuCqVgbwfKI6FJvDEO0xBUN7q8pnC58rG7sNLUI=",
        ),
    ),
    # m/44'/60'/0'/0/280
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xBDF5aC7E84A814ADf1101E4cf9124f13371c9E53",
            "0xa75eeadcdad264d4422c7bb204831c06a9bc2f7918c0a3e2c89cd753978d513248dfac6e1c4b0932872bb61feaf74524caa8e0e0298210ec410af435c4886e9c",
            "72878888445d40b897022cb3fbc7a0b63c344ebf64df5e94b6591cf8bf3b0e9c",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xBDF5aC7E84A814ADf1101E4cf9124f13371c9E53",
            "BKde6tza0mTUQix7sgSDHAapvC95GMCj4sic11OXjVEySN+sbhxLCTKHK7Yf6vdFJMqo4OApghDsQQr0NcSIbpw=",
            "coeIiERdQLiXAiyz+8egtjw0Tr9k316Utlkc+L87Dpw=",
        ),
    ),
    # m/44'/60'/0'/0/281
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x5F34891e4D5167b45314F7ED73451046fBbE2a6a",
            "0x060d201b6ef37db5c024883953d17f234c89d8439d473203e6508ec8946a982fb913bd3f61fe5535d966151004eaa47c927783724b34fee8055750e1c795f3f9",
            "1b5d642d2f10b7cb3ce7b46661778c23ac5fbd848f6a69fbd666e596371c24ef",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x5F34891e4D5167b45314F7ED73451046fBbE2a6a",
            "BAYNIBtu8321wCSIOVPRfyNMidhDnUcyA+ZQjsiUapgvuRO9P2H+VTXZZhUQBOqkfJJ3g3JLNP7oBVdQ4ceV8/k=",
            "G11kLS8Qt8s857RmYXeMI6xfvYSPamn71mblljccJO8=",
        ),
    ),
    # m/44'/60'/0'/0/282
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xc44bbA7CF727892768aA3D0197D8B690a9055173",
            "0x908175a7475f5a2fb3bdfec972bd094bd76dd61e47ed6ac408a8f9d01f8058286e1f17fdcdfe17d23db1311829352ba91e15feda6075855c16f0d27422a57b9f",
            "4fa488b7fa183ab74ae42cb74832f59200214e2da07bcda4a7e8cd6bea098b48",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xc44bbA7CF727892768aA3D0197D8B690a9055173",
            "BJCBdadHX1ovs73+yXK9CUvXbdYeR+1qxAio+dAfgFgobh8X/c3+F9I9sTEYKTUrqR4V/tpgdYVcFvDSdCKle58=",
            "T6SIt/oYOrdK5Cy3SDL1kgAhTi2ge82kp+jNa+oJi0g=",
        ),
    ),
    # m/44'/60'/0'/0/283
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xa72667e4E338e9E3fDEd6e5AC99fE5d8d10D7F6e",
            "0x7fe7dea46ac4131cebb4baba1c8a379d59b683ad85b2a4c9389907757639c1bfa66a9e7631734c096713891579ae655a8203a67863d64246ee6ec63a1af241d3",
            "ae84af114bea69d806e880446132aa863bfbc6966784e10d6e6525d2fae29f93",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xa72667e4E338e9E3fDEd6e5AC99fE5d8d10D7F6e",
            "BH/n3qRqxBMc67S6uhyKN51ZtoOthbKkyTiZB3V2OcG/pmqedjFzTAlnE4kVea5lWoIDpnhj1kJG7m7GOhryQdM=",
            "roSvEUvqadgG6IBEYTKqhjv7xpZnhOENbmUl0vrin5M=",
        ),
    ),
    # m/44'/60'/0'/0/284
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x4C092c4f53f939303dF3296FA72BD17bAA049735",
            "0x24b52c55be25dde3f1a4d1357bcb26ac9d2577ad7edcf2ebfdb87da4989488b6b94b7821e5e4e5cc6caaab9b3b40301aa4be686bbb7468d42d5d6245a1a51bb7",
            "08045fe21e248dfd72609f111754f56a76352d63afe80ea040d6c49bb6d51157",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x4C092c4f53f939303dF3296FA72BD17bAA049735",
            "BCS1LFW+Jd3j8aTRNXvLJqydJXetftzy6/24faSYlIi2uUt4IeXk5cxsqqubO0AwGqS+aGu7dGjULV1iRaGlG7c=",
            "CARf4h4kjf1yYJ8RF1T1anY1LWOv6A6gQNbEm7bVEVc=",
        ),
    ),
    # m/44'/60'/0'/0/285
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xcC3735788E17C4663D99B1C93C7cA2F97A64D98F",
            "0x6fdc39001724d734880390268a4b37e2a81778688f193753c8875e476d29f2abf704647432ce7754fe910c1f6d008cd1e9adb476992eaf29b8bbbb4988ddc42b",
            "4c48e989827f2724a9528b7af9eb252a87e26b8c7d5c31f8aa3e4e561bad3fc6",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xcC3735788E17C4663D99B1C93C7cA2F97A64D98F",
            "BG/cOQAXJNc0iAOQJopLN+KoF3hojxk3U8iHXkdtKfKr9wRkdDLOd1T+kQwfbQCM0emttHaZLq8puLu7SYjdxCs=",
            "TEjpiYJ/JySpUot6+eslKofia4x9XDH4qj5OVhutP8Y=",
        ),
    ),
    # m/44'/60'/0'/0/286
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x7e862421cA40Af53b07D397bBd229311059d5Bd2",
            "0x65c03818026b42c31f70f1b02ddb51c1bded6d48320713d52ccb1b7a55818a8e4f136bbf140d7ab6a01f78ffe3283d63abaf4956ead3d456ed92338bd0c67570",
            "22eb110a98c065ad9881b2e4e4c526719c3ed06c48de18570cec7457dfee9086",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x7e862421cA40Af53b07D397bBd229311059d5Bd2",
            "BGXAOBgCa0LDH3DxsC3bUcG97W1IMgcT1SzLG3pVgYqOTxNrvxQNeragH3j/4yg9Y6uvSVbq09RW7ZIzi9DGdXA=",
            "IusRCpjAZa2YgbLk5MUmcZw+0GxI3hhXDOx0V9/ukIY=",
        ),
    ),
    # m/44'/60'/0'/0/287
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x1aA345f8497A60554ed2C7C665aa311668285b08",
            "0xa1b39a698e96d91b29e3faeed3562239e271ff7825076d41ecc8963417abbbd22afa3ec4f9547ce2ef6a07b3eab1702490449ed19b5202899236e510d0e9ba1b",
            "ae956ca028dd3e5b8574f9812de4a214d94d658a72e959b5193410ab87f333dc",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x1aA345f8497A60554ed2C7C665aa311668285b08",
            "BKGzmmmOltkbKeP67tNWIjnicf94JQdtQezIljQXq7vSKvo+xPlUfOLvagez6rFwJJBEntGbUgKJkjblENDpuhs=",
            "rpVsoCjdPluFdPmBLeSiFNlNZYpy6Vm1GTQQq4fzM9w=",
        ),
    ),
    # m/44'/60'/0'/0/288
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x7854F07667b54d028749B3B2a787CB156DcF43A1",
            "0x24abe3e5770fc69b203fd2549cf037bfa21b6ce78411cecc6c418ae66beab1296cac2f7685dd5620f0b122273f4f9943818ad8179a16099bbf4e09e7c2582a79",
            "4de99b6ecfae5c88cddfe47c4c5a26dee83214dafc7e732b492049f2295ded4a",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x7854F07667b54d028749B3B2a787CB156DcF43A1",
            "BCSr4+V3D8abID/SVJzwN7+iG2znhBHOzGxBiuZr6rEpbKwvdoXdViDwsSInP0+ZQ4GK2BeaFgmbv04J58JYKnk=",
            "Tembbs+uXIjN3+R8TFom3ugyFNr8fnMrSSBJ8ild7Uo=",
        ),
    ),
    # m/44'/60'/0'/0/289
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x092969E10489061749Be36945ffD0CED69bC033d",
            "0x52db4f90c3d0a91389fc5971472827d4fe509ca2db049f05dc4e7c10c3433aeb6b5706bbf70c34201c0fbfb62f5e446f082026da71be1767c5e0a5dccb510406",
            "fa292d69c45dcd669705ea29d3c1a69cec23b8e03bd8e1efc0d92014f1c073f1",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x092969E10489061749Be36945ffD0CED69bC033d",
            "BFLbT5DD0KkTifxZcUcoJ9T+UJyi2wSfBdxOfBDDQzrra1cGu/cMNCAcD7+2L15EbwggJtpxvhdnxeCl3MtRBAY=",
            "+iktacRdzWaXBeop08GmnOwjuOA72OHvwNkgFPHAc/E=",
        ),
    ),
    # m/44'/60'/0'/0/290
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x6D9AC986cBd06e85fe4f2121CFC6d78B70d02EF8",
            "0x57ba33cf4dc2727c44b21041f9eb372d274a3be4a6e533eb240116697b3cd8615679f594738aa01e4b3f167708ddc0e94b7c6429c59484ae7a1a2d7b300d3690",
            "5a7de771c61bbfde87ddff8d030175355e563463784c1eb92aabd37f1a229d95",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x6D9AC986cBd06e85fe4f2121CFC6d78B70d02EF8",
            "BFe6M89NwnJ8RLIQQfnrNy0nSjvkpuUz6yQBFml7PNhhVnn1lHOKoB5LPxZ3CN3A6Ut8ZCnFlISuehotezANNpA=",
            "Wn3nccYbv96H3f+NAwF1NV5WNGN4TB65KqvTfxoinZU=",
        ),
    ),
    # m/44'/60'/0'/0/291
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xaD15fB8B727487eE251A2fF1c740Afc118087e99",
            "0x954cdb8653aeb76d6b8cb3f2a6de3037763632e866c65142ce48001cc8492c26696e501ef0f7335ca7b726ea11273bec7b6eb91cf4f3fb574eb0a2222abd0c26",
            "827af4df52b119bf60079ee34975370ff931e8071469bdd9a1a5d867fc6908f0",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xaD15fB8B727487eE251A2fF1c740Afc118087e99",
            "BJVM24ZTrrdta4yz8qbeMDd2NjLoZsZRQs5IABzISSwmaW5QHvD3M1yntybqESc77HtuuRz08/tXTrCiIiq9DCY=",
            "gnr031KxGb9gB57jSXU3D/kx6AcUab3ZoaXYZ/xpCPA=",
        ),
    ),
    # m/44'/60'/0'/0/292
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xAdC255D6F41130232ef25a6aC6F5AD72Dd1f007F",
            "0xf4e8aa17a794ba6cb9271d9a2a6f65458227857108fb171fa760fac1ddc82f2c220138f9e75f04ce5aa06b601ca2cc893cf4baf18479fda2d923b4864e2ea74e",
            "7ac8484ce83cde7ff38e3fb6597ac5dd26e2dde48c232fd32917f0ccf842d107",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xAdC255D6F41130232ef25a6aC6F5AD72Dd1f007F",
            "BPToqhenlLpsuScdmipvZUWCJ4VxCPsXH6dg+sHdyC8sIgE4+edfBM5aoGtgHKLMiTz0uvGEef2i2SO0hk4up04=",
            "eshITOg83n/zjj+2WXrF3Sbi3eSMIy/TKRfwzPhC0Qc=",
        ),
    ),
    # m/44'/60'/0'/0/293
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xCad4DF1A179D21c21239f79ee7b98866c389257E",
            "0xc6f106b234fad52916ffb863bbee2a943df54c506acbc9f5b4819703630bb0e373bfb6635e26117bb2b50e2a7c329f83fcaab746020df14bd6a7d174cd9f1e98",
            "b28fb806785e8af6cd027120472bf2aef08915eca5fde88dacd0e24b713c9e25",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xCad4DF1A179D21c21239f79ee7b98866c389257E",
            "BMbxBrI0+tUpFv+4Y7vuKpQ99UxQasvJ9bSBlwNjC7Djc7+2Y14mEXuytQ4qfDKfg/yqt0YCDfFL1qfRdM2fHpg=",
            "so+4BnheivbNAnEgRyvyrvCJFeyl/eiNrNDiS3E8niU=",
        ),
    ),
    # m/44'/60'/0'/0/294
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xFa097A8a6d244b6e6B11b8ccCf6796F36EDCCbaD",
            "0x5ac390dda80affafdfb162f4b63747c3e6b1bd8c1cad362a8a32ccaf18b47e74e1e309a4282574a4c60ca3545b146aee9ee9e6e7931e4fb868ad849d263506ea",
            "747f2aa115d0c4662cd9aac548cd1284463a5564fb1a5d000813de183120b365",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xFa097A8a6d244b6e6B11b8ccCf6796F36EDCCbaD",
            "BFrDkN2oCv+v37Fi9LY3R8Pmsb2MHK02KooyzK8YtH504eMJpCgldKTGDKNUWxRq7p7p5ueTHk+4aK2EnSY1Buo=",
            "dH8qoRXQxGYs2arFSM0ShEY6VWT7Gl0ACBPeGDEgs2U=",
        ),
    ),
    # m/44'/60'/0'/0/295
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xDfC9F584dFEa860844dfdA59700a43171E0b8459",
            "0x0e9e77708bc2e2bfb87963f4eb7b2a0bbcb4610aa4e22fab476688cd3e7aa38b1d6fb28ac1313375b1d6af97673fed006b1055b176afd7d2d086b79c0ee4f832",
            "6e5c23559d65868e280110a983b32f6f8aba38437f964347b5cd7b346b3f9a9f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xDfC9F584dFEa860844dfdA59700a43171E0b8459",
            "BA6ed3CLwuK/uHlj9Ot7Kgu8tGEKpOIvq0dmiM0+eqOLHW+yisExM3Wx1q+XZz/tAGsQVbF2r9fS0Ia3nA7k+DI=",
            "blwjVZ1lho4oARCpg7Mvb4q6OEN/lkNHtc17NGs/mp8=",
        ),
    ),
    # m/44'/60'/0'/0/296
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x2e6856aA954f8E25c1c4EB84b4B9D1708C311D21",
            "0x9d8ef05c9d56bc999ff26cf25f1cb00df1109e9023688d3ad593e9901706d7d6abf768d0b1d24d1ef4fc8bf92a0f4a9dc6247ed8d0a1ab783d96544d7b51edd8",
            "bfb4b405522a1105b3daa997677f178717edefc84ea13ae9e4ade0519df32630",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x2e6856aA954f8E25c1c4EB84b4B9D1708C311D21",
            "BJ2O8FydVryZn/Js8l8csA3xEJ6QI2iNOtWT6ZAXBtfWq/do0LHSTR70/Iv5Kg9KncYkftjQoat4PZZUTXtR7dg=",
            "v7S0BVIqEQWz2qmXZ38Xhxft78hOoTrp5K3gUZ3zJjA=",
        ),
    ),
    # m/44'/60'/0'/0/297
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xb28aA4eF564CB6284B7B2495776E0216A00b47Ba",
            "0x8f5a0a85d79370309d51403a4fc5ff354f15510381198088e6a4bddb9226d11b944faf182383098dd2567431ce4dead1572ac4074cebad86d59b0fa49b5c8663",
            "07a95d807afe0142da9382c98ab0007023b780cc4122d76fd312aa55b97f4502",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xb28aA4eF564CB6284B7B2495776E0216A00b47Ba",
            "BI9aCoXXk3AwnVFAOk/F/zVPFVEDgRmAiOakvduSJtEblE+vGCODCY3SVnQxzk3q0VcqxAdM662G1ZsPpJtchmM=",
            "B6ldgHr+AULak4LJirAAcCO3gMxBItdv0xKqVbl/RQI=",
        ),
    ),
    # m/44'/60'/0'/0/298
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x30fDE618291a88Ac4B4EF41d5A2eFaF4AA0720a0",
            "0x7e97db38954f51993f0874fe234471f9ad5e221583e9233a5b25b9b87bed0268eef016e7938145ce531c09ae047c48e74f244ec8963e9d4c864b15efb368d648",
            "69260a3e75aff40209fc25c362a04b0143fb10f6fcf7b26734cb6a56370b7fea",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x30fDE618291a88Ac4B4EF41d5A2eFaF4AA0720a0",
            "BH6X2ziVT1GZPwh0/iNEcfmtXiIVg+kjOlslubh77QJo7vAW55OBRc5THAmuBHxI508kTsiWPp1MhksV77No1kg=",
            "aSYKPnWv9AIJ/CXDYqBLAUP7EPb897JnNMtqVjcLf+o=",
        ),
    ),
    # m/44'/60'/0'/0/299
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xcD4B3b7474BEF6775BB9C9a5984ECE3dC210ffBC",
            "0xe47f9bb9b05c5f3dfe7374ae78fd9c182e6694275a1036b27bbbdf762126f8e9f0495538b5af12f21651e352cdfe02eab57324adcb51c678c08ec1d924f2a6d5",
            "400c3c46551ac944c6f0394763d2e316f26c4df04cc42757051335db0a02008d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xcD4B3b7474BEF6775BB9C9a5984ECE3dC210ffBC",
            "BOR/m7mwXF89/nN0rnj9nBguZpQnWhA2snu733YhJvjp8ElVOLWvEvIWUeNSzf4C6rVzJK3LUcZ4wI7B2STyptU=",
            "QAw8RlUayUTG8DlHY9LjFvJsTfBMxCdXBRM12woCAI0=",
        ),
    ),
    # m/44'/60'/0'/0/300
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x1a6515087342cc25b22F1241Bc47363D8Ce58DcF",
            "0x6b4c7783d0f222123a1ce2586c6305e1a1c9d64ccfb4e9acfb9c531b3b0a3c13d4fad113a928f1c18303e816699166e230361716d0e09d481cf85a1660bb0569",
            "eff342cb70f3b0b302dcb88bf10f09a1f83e0bffbb68120d27f79240fe4b45cd",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x1a6515087342cc25b22F1241Bc47363D8Ce58DcF",
            "BGtMd4PQ8iISOhziWGxjBeGhydZMz7TprPucUxs7CjwT1PrRE6ko8cGDA+gWaZFm4jA2FxbQ4J1IHPhaFmC7BWk=",
            "7/NCy3DzsLMC3LiL8Q8Jofg+C/+7aBINJ/eSQP5LRc0=",
        ),
    ),
    # m/44'/60'/0'/0/301
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xF07F65ea75632618934319b7bF9A5f28f1Cd46D8",
            "0xb154e88a2f763a2b721a8ede719bf50eee791e6644ca092390d3936720b8fef186a37c3a4282d660c8a72a6f91e3368fe09282766726f1e9fec01d20f02cf0ba",
            "9aed3ecc81f605e1f2b87feff8294e60245c59c5529674ec617940e6909bfbdc",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xF07F65ea75632618934319b7bF9A5f28f1Cd46D8",
            "BLFU6IovdjorchqO3nGb9Q7ueR5mRMoJI5DTk2cguP7xhqN8OkKC1mDIpypvkeM2j+CSgnZnJvHp/sAdIPAs8Lo=",
            "mu0+zIH2BeHyuH/v+ClOYCRcWcVSlnTsYXlA5pCb+9w=",
        ),
    ),
    # m/44'/60'/0'/0/302
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x95619992FFB9Be86f0a87688199176b238978D7a",
            "0x40c37286bca86f6cdb28b77e5ee027ca12292a1f14f67eaf08f162685426f682c038902db67ea745ec9ac4897556f3ca8a23178e8a784ddbcdf25b2b06b19b53",
            "97ccc60382997a75c40b86402becdfb51a78766c35a8bec2f6dab06e71cf050e",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x95619992FFB9Be86f0a87688199176b238978D7a",
            "BEDDcoa8qG9s2yi3fl7gJ8oSKSofFPZ+rwjxYmhUJvaCwDiQLbZ+p0XsmsSJdVbzyoojF46KeE3bzfJbKwaxm1M=",
            "l8zGA4KZenXEC4ZAK+zftRp4dmw1qL7C9tqwbnHPBQ4=",
        ),
    ),
    # m/44'/60'/0'/0/303
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x8262DDFaC418337eC301404e970F612695E632c9",
            "0xdf8e1774544623b0ed516cb1093650c35c7cc77010ef338961565a172949e8b8608d42ed56414f3c5abf18911ce1a91000f26dfc92f5d0822f58881d20c7e1e5",
            "32b778d273c40a53f2ec487e337810285ea6ca4aab5963fbcf4972d658f5246f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x8262DDFaC418337eC301404e970F612695E632c9",
            "BN+OF3RURiOw7VFssQk2UMNcfMdwEO8ziWFWWhcpSei4YI1C7VZBTzxavxiRHOGpEADybfyS9dCCL1iIHSDH4eU=",
            "Mrd40nPEClPy7Eh+M3gQKF6mykqrWWP7z0ly1lj1JG8=",
        ),
    ),
    # m/44'/60'/0'/0/304
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xF1CBDC4717eEB9383B0ac13B3ED66d07336161Af",
            "0x2c18b1a572181a50746f629710d2b293a430e27f7ae2b20704cbe70eaac2c4152d0d234e391c02b94455993e680f3c16c2bc83777b3a27c158a8ff9e534b04d1",
            "a79790d866708eea10014faf10500f9ea9aac582377394de6353f1d463cd5fb3",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xF1CBDC4717eEB9383B0ac13B3ED66d07336161Af",
            "BCwYsaVyGBpQdG9ilxDSspOkMOJ/euKyBwTL5w6qwsQVLQ0jTjkcArlEVZk+aA88FsK8g3d7OifBWKj/nlNLBNE=",
            "p5eQ2GZwjuoQAU+vEFAPnqmqxYI3c5TeY1Px1GPNX7M=",
        ),
    ),
    # m/44'/60'/0'/0/305
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xAac00d9C0a54f8C91BC854b3e872c117Bd0f6254",
            "0xf5b433e349514bde815d2d075ae9490dde87828105cf845f2e8934dbd85d417ce59fa7822a4e907f605073c39a124ecb0a842ca75cd58e1ebda3922f1008e70c",
            "9bc4ec46b9820b864d09c9be7a08bc21b5aab7e0d2228876abfd4d67165855e6",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xAac00d9C0a54f8C91BC854b3e872c117Bd0f6254",
            "BPW0M+NJUUvegV0tB1rpSQ3eh4KBBc+EXy6JNNvYXUF85Z+ngipOkH9gUHPDmhJOywqELKdc1Y4evaOSLxAI5ww=",
            "m8TsRrmCC4ZNCcm+egi8IbWqt+DSIoh2q/1NZxZYVeY=",
        ),
    ),
    # m/44'/60'/0'/0/306
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xAa5d88DbCEDD40Ee4B9b4c98C62962c68E53Ca4c",
            "0xb3e45842f460187ee5bf69d928f6da855f0b13a19167924a6b75938ddffc2a03625d233c982166926481879ae8a73011483da83290d43e66e43591c4c2f6c3ca",
            "d42b69f804a0185162f83fb48a17984ba7368258dcf8806fdee22384272fe35a",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xAa5d88DbCEDD40Ee4B9b4c98C62962c68E53Ca4c",
            "BLPkWEL0YBh+5b9p2Sj22oVfCxOhkWeSSmt1k43f/CoDYl0jPJghZpJkgYea6KcwEUg9qDKQ1D5m5DWRxML2w8o=",
            "1Ctp+ASgGFFi+D+0iheYS6c2gljc+IBv3uIjhCcv41o=",
        ),
    ),
    # m/44'/60'/0'/0/307
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xA700A2A3702908277e2D022a164b60bd4924b2D7",
            "0x781e83e5e7510d29d2dfc394a79ca77ce10e2a18ce4b30c997cc1f30a5ea1627dfa2ac3f82575cb9b8cd3f8950e6cf592d292530129960f5606e60a517b5bf4c",
            "f77a9cb2681d655110deceeec275ed95170596e84f5c70aa7e54f3066525b764",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xA700A2A3702908277e2D022a164b60bd4924b2D7",
            "BHgeg+XnUQ0p0t/DlKecp3zhDioYzkswyZfMHzCl6hYn36KsP4JXXLm4zT+JUObPWS0pJTASmWD1YG5gpRe1v0w=",
            "93qcsmgdZVEQ3s7uwnXtlRcFluhPXHCqflTzBmUlt2Q=",
        ),
    ),
    # m/44'/60'/0'/0/308
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x70c056152C0183FfEDb274408bCE8bbE3a21762D",
            "0x4b153f1477d1bafde3781bb94c220c3d2e57cc727e6c5cf40590930a0a47d199a98311b22cb20ca9917ae2d68d8c9bff3831fe01ccabb0580fd8cc6c870c4523",
            "235a30a775cb5e6652027fd3eb930f5e7e4e70fda3c46499f3e746d8051e52b0",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x70c056152C0183FfEDb274408bCE8bbE3a21762D",
            "BEsVPxR30br943gbuUwiDD0uV8xyfmxc9AWQkwoKR9GZqYMRsiyyDKmReuLWjYyb/zgx/gHMq7BYD9jMbIcMRSM=",
            "I1owp3XLXmZSAn/T65MPXn5OcP2jxGSZ8+dG2AUeUrA=",
        ),
    ),
    # m/44'/60'/0'/0/309
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x2D6D9d02fc7A260765eE7AD142d4d96A86eD9CFB",
            "0x6f0e0c25acaa3b60efa156b87c0bf3ba1ee7ed16eab71325f17c791d0765e8dc1837c5f7f1c0d75482575c34e9d8a3ea814021b9f529ba74738a25ff772c4953",
            "e349f1549366198ce711715e08141c840833beb1f798a8b0e09377fe88d5bb4c",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x2D6D9d02fc7A260765eE7AD142d4d96A86eD9CFB",
            "BG8ODCWsqjtg76FWuHwL87oe5+0W6rcTJfF8eR0HZejcGDfF9/HA11SCV1w06dij6oFAIbn1Kbp0c4ol/3csSVM=",
            "40nxVJNmGYznEXFeCBQchAgzvrH3mKiw4JN3/ojVu0w=",
        ),
    ),
    # m/44'/60'/0'/0/310
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x453932D5a563F76cFb72cC5356b4b4a42312947B",
            "0x8332bcf32193783ce81d73ab467e3c854f2b285e47aae6e6f2e816f088f617d40ba9bf2d869a702d47aea60b981b295062adc17b4f833735289a81712fd7e90e",
            "3e4fdfee3c560a3355fb609ef9b71c926d21253847c513e600ce8641fe97eaff",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x453932D5a563F76cFb72cC5356b4b4a42312947B",
            "BIMyvPMhk3g86B1zq0Z+PIVPKyheR6rm5vLoFvCI9hfUC6m/LYaacC1HrqYLmBspUGKtwXtPgzc1KJqBcS/X6Q4=",
            "Pk/f7jxWCjNV+2Ce+bcckm0hJThHxRPmAM6GQf6X6v8=",
        ),
    ),
    # m/44'/60'/0'/0/311
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x0691C84dC75598bbB2315590BD83b9c50aa785a1",
            "0x122e780fea749ac7f533dc57cda612cc01fce9934b8352cb40ce882a64cf2cc229cdb33751f6f088c8a84d597cb58e7014ece5a81fae21ecd72f5f8d25ce0f37",
            "8ea383867a46ba0760806ce4132f5c0b1c8bf53efe2f9fc7aa7052fb6d257d94",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x0691C84dC75598bbB2315590BD83b9c50aa785a1",
            "BBIueA/qdJrH9TPcV82mEswB/OmTS4NSy0DOiCpkzyzCKc2zN1H28IjIqE1ZfLWOcBTs5agfriHs1y9fjSXODzc=",
            "jqODhnpGugdggGzkEy9cCxyL9T7+L5/HqnBS+20lfZQ=",
        ),
    ),
    # m/44'/60'/0'/0/312
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x0ccd2bb5e0a982352f800939B64183F0523C2192",
            "0x673ebdd7910f4a6f25e05c3fb31bae1e9427b97640ec9a78cb47071aa40e96d6593c6aff9f769e6305e907f07551480e0cea91901a853bab151cf9f716d2e9f0",
            "d5c411aeb4e5a4fe66c2cb68c27adb0c77df3ed56c3e3d44541878dc6d4f9460",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x0ccd2bb5e0a982352f800939B64183F0523C2192",
            "BGc+vdeRD0pvJeBcP7Mbrh6UJ7l2QOyaeMtHBxqkDpbWWTxq/592nmMF6QfwdVFIDgzqkZAahTurFRz59xbS6fA=",
            "1cQRrrTlpP5mwstownrbDHffPtVsPj1EVBh43G1PlGA=",
        ),
    ),
    # m/44'/60'/0'/0/313
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x9261641307c04bF72aaE0A76aE78f9C50506789A",
            "0x0b9e44333d7b857cef86d876318d0b99ee77060230d41abb431e5d745ab714b7c1aac8052216f39ec24e016f07e88ab2f31fe77c83f2c6e15e7a7f269fa1cf8e",
            "b700172954317df45bdc4674554695b5d96233be28bd08e3a6b728f690f3b64b",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x9261641307c04bF72aaE0A76aE78f9C50506789A",
            "BAueRDM9e4V874bYdjGNC5nudwYCMNQau0MeXXRatxS3warIBSIW857CTgFvB+iKsvMf53yD8sbhXnp/Jp+hz44=",
            "twAXKVQxffRb3EZ0VUaVtdliM74ovQjjprco9pDztks=",
        ),
    ),
    # m/44'/60'/0'/0/314
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x952260c2A5Bdb9c33F42FFb91916EBDa1486fC54",
            "0x3c9b09ffcdd1f2f0787590a2f87bc40c6bca7ea784b46c3af15d93568d63fd3237464dec1fff03099be24e3c5a29a77ead8d0cca9dcd178946a6a79cd4be97b2",
            "9c9c81a8c8c262a5772f93ac86496573726bb6f804c23bfa9c5df83468a43b33",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x952260c2A5Bdb9c33F42FFb91916EBDa1486fC54",
            "BDybCf/N0fLweHWQovh7xAxryn6nhLRsOvFdk1aNY/0yN0ZN7B//Awmb4k48Wimnfq2NDMqdzReJRqannNS+l7I=",
            "nJyBqMjCYqV3L5Oshkllc3JrtvgEwjv6nF34NGikOzM=",
        ),
    ),
    # m/44'/60'/0'/0/315
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x193c5462B751F61d1a39d40fe6C7cf21e2907A85",
            "0xae844ff4e1452f84884c7f0f8b74865937a4a094e2fd215d8c311201596589a78819879949d054e6cc2994e998994681244c10c1ae666e6d534df47ba771ab90",
            "468b908f3e9b7a22504c03388592f9ab89017fd5c72e3ed6422cf2b4196ba378",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x193c5462B751F61d1a39d40fe6C7cf21e2907A85",
            "BK6ET/ThRS+EiEx/D4t0hlk3pKCU4v0hXYwxEgFZZYmniBmHmUnQVObMKZTpmJlGgSRMEMGuZm5tU030e6dxq5A=",
            "RouQjz6beiJQTAM4hZL5q4kBf9XHLj7WQizytBlro3g=",
        ),
    ),
    # m/44'/60'/0'/0/316
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xfa05B6692CfF6F9a6Dacb5193d7965c0fB00ba93",
            "0x6f4c3025294829cd650ca7ea48b04f157897cbce7b045950b173c909bddf819f11827764439c160a1edc66fea9d29f2e00972a4e281ac2a6c7a2e481bfdd2585",
            "163b350b76e75e7e302bceb03c7d12131da0a0fc763fe477ce5c47b200fbdbc9",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xfa05B6692CfF6F9a6Dacb5193d7965c0fB00ba93",
            "BG9MMCUpSCnNZQyn6kiwTxV4l8vOewRZULFzyQm934GfEYJ3ZEOcFgoe3Gb+qdKfLgCXKk4oGsKmx6Lkgb/dJYU=",
            "Fjs1C3bnXn4wK86wPH0SEx2goPx2P+R3zlxHsgD728k=",
        ),
    ),
    # m/44'/60'/0'/0/317
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xe0AbFBb098396f275d38Be4C76FC53608af9eBd3",
            "0x121656c5239a660c17f9ce5156b6b4a77891954d4eddca48378c2ad3cca42c0f3238168bef1cce756e57eb368962afea3da0a67f164e56c7b8a3a12007549baf",
            "8e186ff4ddc454d15605ab5818d57c6fb5bc3d099d4c2595c1c58d5aeaa6daab",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xe0AbFBb098396f275d38Be4C76FC53608af9eBd3",
            "BBIWVsUjmmYMF/nOUVa2tKd4kZVNTt3KSDeMKtPMpCwPMjgWi+8cznVuV+s2iWKv6j2gpn8WTlbHuKOhIAdUm68=",
            "jhhv9N3EVNFWBatYGNV8b7W8PQmdTCWVwcWNWuqm2qs=",
        ),
    ),
    # m/44'/60'/0'/0/318
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x3DfD89b12f2A7cED4b2ec27f847f487062e5ac91",
            "0xc19e11fc0d0f3574ef438f9a5e52a3cfdff7031911149cd81364a11d891af8f267477cff1f68f963e32b4ea5ba245bb66ff01cd86d9a907820b1bd9969c67b56",
            "cfdc8396a15d0efb58b0417e2d7cc7deaf2277ae3c67dba3a01a378508796ebf",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x3DfD89b12f2A7cED4b2ec27f847f487062e5ac91",
            "BMGeEfwNDzV070OPml5So8/f9wMZERSc2BNkoR2JGvjyZ0d8/x9o+WPjK06luiRbtm/wHNhtmpB4ILG9mWnGe1Y=",
            "z9yDlqFdDvtYsEF+LXzH3q8id648Z9ujoBo3hQh5br8=",
        ),
    ),
    # m/44'/60'/0'/0/319
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x93e06255990B8fA053b0f8720334085deaecE6DF",
            "0x5eb0a8907c5631227cb5ed4daeb215016e0b9a4b7fba3eda8dae339a320fb8d49148963f5685b358dfa66f5e4cc0e198dde217d411dc10bcb91c058d1314f3e3",
            "32ce594f26b33dec4f8e29ec256e3f92a2674a6ec3faf2d304c673d9d2659090",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x93e06255990B8fA053b0f8720334085deaecE6DF",
            "BF6wqJB8VjEifLXtTa6yFQFuC5pLf7o+2o2uM5oyD7jUkUiWP1aFs1jfpm9eTMDhmN3iF9QR3BC8uRwFjRMU8+M=",
            "Ms5ZTyazPexPjinsJW4/kqJnSm7D+vLTBMZz2dJlkJA=",
        ),
    ),
    # m/44'/60'/0'/0/320
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xc75f6A890a7d6677C7736A784e6c8bBB00B3e10d",
            "0x0c2bac49c4317ab4c833540cb463e3f79c71f2318844747ca0a1844dc670146d5f661f7c1c37aede36efa145d2d8cf0a827cfbd7a6649b38ca61b3e090af9eaa",
            "aea686b8f176676f2617457a70319df3440bf76c47d7ad8f207c989a943ea6a8",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xc75f6A890a7d6677C7736A784e6c8bBB00B3e10d",
            "BAwrrEnEMXq0yDNUDLRj4/eccfIxiER0fKChhE3GcBRtX2YffBw3rt4276FF0tjPCoJ8+9emZJs4ymGz4JCvnqo=",
            "rqaGuPF2Z28mF0V6cDGd80QL92xH162PIHyYmpQ+pqg=",
        ),
    ),
    # m/44'/60'/0'/0/321
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x99684E39217f85810461F50A16912e28F973124c",
            "0x90eb48b20ed48998fdb420803396b2f241d33de9f8bbf57ed0c52131a4639eb440e97b9cb5774e43ac1c60b8484f6206d13b31193f972ce13a67d3756b0c47c6",
            "2a159d7ddc174439abdf5d0fa999bd296144aa6e15b8f9b06dbe28892dfd8c1c",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x99684E39217f85810461F50A16912e28F973124c",
            "BJDrSLIO1ImY/bQggDOWsvJB0z3p+Lv1ftDFITGkY560QOl7nLV3TkOsHGC4SE9iBtE7MRk/lyzhOmfTdWsMR8Y=",
            "KhWdfdwXRDmr310PqZm9KWFEqm4VuPmwbb4oiS39jBw=",
        ),
    ),
    # m/44'/60'/0'/0/322
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xc9e0Ba9f9e5d869883E3cD4091B6B4133B0580b4",
            "0x137968948c7e2682b9183610d42164e052ca242f57d202408965c997aa78d8bf4d3617c2bfce6666213713fce4f79d4e2fe99d0d0334d21b6b4bdd390ca483a7",
            "e991cd8bad1d5aad4433e1f05d8caf251644e150257a3baa628da0c8f07fb022",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xc9e0Ba9f9e5d869883E3cD4091B6B4133B0580b4",
            "BBN5aJSMfiaCuRg2ENQhZOBSyiQvV9ICQIllyZeqeNi/TTYXwr/OZmYhNxP85PedTi/pnQ0DNNIba0vdOQykg6c=",
            "6ZHNi60dWq1EM+HwXYyvJRZE4VAlejuqYo2gyPB/sCI=",
        ),
    ),
    # m/44'/60'/0'/0/323
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x4127f7d8eE60D7A1EA06E6Bec394F1fBE393C83F",
            "0xe4505f0802cb5e0cb191ef1b98fcd9ecd93bfb70753a49214efc86850086e1b1f74776d056bc8a5bd260f747574c0e8587dd782169df700fbe9fa03bcd3f3305",
            "54fab052440e2c98393365d0559fb5e05d7cfbd953c597574f56c941f86a89a8",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x4127f7d8eE60D7A1EA06E6Bec394F1fBE393C83F",
            "BORQXwgCy14MsZHvG5j82ezZO/twdTpJIU78hoUAhuGx90d20Fa8ilvSYPdHV0wOhYfdeCFp33APvp+gO80/MwU=",
            "VPqwUkQOLJg5M2XQVZ+14F18+9lTxZdXT1bJQfhqiag=",
        ),
    ),
    # m/44'/60'/0'/0/324
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x5fB420715109b66788e276Ad2B5F04A7F3131FAd",
            "0x7bbb01d7db7e170082fbbba4e8f27af26cc5e7616286a08e8cbb8c0de0178a9ac51112ec73817df01edbac74063939faebb5c0712df37afb9217ca3ebd9ba924",
            "945480ac13c0efae7dc3391d63be8e9b9f1edb612852b0212e727c00a4dedbae",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x5fB420715109b66788e276Ad2B5F04A7F3131FAd",
            "BHu7AdfbfhcAgvu7pOjyevJsxedhYoagjoy7jA3gF4qaxRES7HOBffAe26x0Bjk5+uu1wHEt83r7khfKPr2bqSQ=",
            "lFSArBPA7659wzkdY76Om58e22EoUrAhLnJ8AKTe264=",
        ),
    ),
    # m/44'/60'/0'/0/325
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xc93B5C93f260ec416a625A92a6a3372b8C0F843C",
            "0x62a94b863a2ae09e158d663b13b9d944528d88c9af0391278e8559693979a3c2f4e53903a428ff56ca388cc13636c2eba7d7d305cb2e35d8fa482ddb940b43c3",
            "c99069e9be1264eee29df28bef290a1034bc0e046fb407c62d01aeaf1a6e00d3",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xc93B5C93f260ec416a625A92a6a3372b8C0F843C",
            "BGKpS4Y6KuCeFY1mOxO52URSjYjJrwORJ46FWWk5eaPC9OU5A6Qo/1bKOIzBNjbC66fX0wXLLjXY+kgt25QLQ8M=",
            "yZBp6b4SZO7infKL7ykKEDS8DgRvtAfGLQGurxpuANM=",
        ),
    ),
    # m/44'/60'/0'/0/326
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x20A02fE67Dd59716E9Ab8199632419322dFC83a7",
            "0x1fa45ca5c8266459cac5c3701300c1f5a7ce41ad4e50a405f615e4b4a90f5743d316a69765323eae0dab286776b9bf66a4e208e91c57bf1a4a364e3c80afd4d4",
            "1d4b5ebffbc41a0987c3267484691cd021bce95310106ca311ec589620484223",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x20A02fE67Dd59716E9Ab8199632419322dFC83a7",
            "BB+kXKXIJmRZysXDcBMAwfWnzkGtTlCkBfYV5LSpD1dD0xaml2UyPq4Nqyhndrm/ZqTiCOkcV78aSjZOPICv1NQ=",
            "HUtev/vEGgmHwyZ0hGkc0CG86VMQEGyjEexYliBIQiM=",
        ),
    ),
    # m/44'/60'/0'/0/327
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x906AA9a7a14Bb2a05419EC387B50C6a3f7DA87ED",
            "0x52bcc88702e38d1c71a3a07b4539fcbe858d1d8d8f19a1176364cc19072cd40ed1e9ee0dc8c06091e6aee52136efff20fa7a1eb48f20b50d43f1ad35a61943df",
            "8948758e6521641c2a63fdb72ef6bc028415d707767cec890567add2ba4ca1bc",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x906AA9a7a14Bb2a05419EC387B50C6a3f7DA87ED",
            "BFK8yIcC440ccaOge0U5/L6FjR2NjxmhF2NkzBkHLNQO0enuDcjAYJHmruUhNu//IPp6HrSPILUNQ/GtNaYZQ98=",
            "iUh1jmUhZBwqY/23Lva8AoQV1wd2fOyJBWet0rpMobw=",
        ),
    ),
    # m/44'/60'/0'/0/328
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x92A036e6d4AAcB45f63549bb7E04716cfd75Ab49",
            "0x3c2eb55bd2fe4454b74005b377c5f492a69fdded349ad47b0054b5245a431b63b028f1922118452b0571b0975ebd076dab3ab978609df3a7e46723483f4722e5",
            "5d0321dd9b41b8954b21dbf0649a2afae7ce76a5b6843fc4bb1411dce581e9e8",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x92A036e6d4AAcB45f63549bb7E04716cfd75Ab49",
            "BDwutVvS/kRUt0AFs3fF9JKmn93tNJrUewBUtSRaQxtjsCjxkiEYRSsFcbCXXr0Hbas6uXhgnfOn5GcjSD9HIuU=",
            "XQMh3ZtBuJVLIdvwZJoq+ufOdqW2hD/EuxQR3OWB6eg=",
        ),
    ),
    # m/44'/60'/0'/0/329
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xfcb4CEE5AbD8eBf4278b347dD8A0785a4bbf4c74",
            "0x64cf5d466781d3becd7a58f9c241b475ed2b2119ff377c2ab5166508209489249720cd3b36424a3c825ea863c92551524aa32e296abbdfcc912a5767d1a9fd60",
            "99eb8aa1cfe3ce7d35abc2d77b8ec6edfe61fddbffa59b85e6faffd5c5f3f038",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xfcb4CEE5AbD8eBf4278b347dD8A0785a4bbf4c74",
            "BGTPXUZngdO+zXpY+cJBtHXtKyEZ/zd8KrUWZQgglIkklyDNOzZCSjyCXqhjySVRUkqjLilqu9/MkSpXZ9Gp/WA=",
            "meuKoc/jzn01q8LXe47G7f5h/dv/pZuF5vr/1cXz8Dg=",
        ),
    ),
    # m/44'/60'/0'/0/330
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xe2695ad00207D52E2fbEc1f668C3c5e2F81839C6",
            "0x28e344a53cad5468db5c623a83e2be741b70882fe13de60db9ceb52a77329c7d2dace3fd54ccfc5bae933022dfbdc1e01d14c11951c11b83f756e5a430ff2b83",
            "f42f84e92c739bd3d2bc1e0fe20213a3788414750b25690ff3a31cfa902f81a0",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xe2695ad00207D52E2fbEc1f668C3c5e2F81839C6",
            "BCjjRKU8rVRo21xiOoPivnQbcIgv4T3mDbnOtSp3Mpx9Lazj/VTM/FuukzAi373B4B0UwRlRwRuD91blpDD/K4M=",
            "9C+E6Sxzm9PSvB4P4gITo3iEFHULJWkP86Mc+pAvgaA=",
        ),
    ),
    # m/44'/60'/0'/0/331
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x1e4575BDf934481d8Ef17472E8A1893f9947a8c5",
            "0x5c07eddb148bb9a923df27020d746f267f28f61830e8c8a27d600b35abe8e7bb7fa83aa0ad0b3f617ca2418982b3ac9fc59fc1ae0b7aec8a5368c970fe00a351",
            "570b2d5aa0c6a5cf79e7c1eb7cae39547723617af6315586bdef81704b89b390",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x1e4575BDf934481d8Ef17472E8A1893f9947a8c5",
            "BFwH7dsUi7mpI98nAg10byZ/KPYYMOjIon1gCzWr6Oe7f6g6oK0LP2F8okGJgrOsn8Wfwa4LeuyKU2jJcP4Ao1E=",
            "VwstWqDGpc9558HrfK45VHcjYXr2MVWGve+BcEuJs5A=",
        ),
    ),
    # m/44'/60'/0'/0/332
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xeB04b0753B20C1FEeb2A383130A4689642e63BF2",
            "0x061e2290b21494d017349ffc7b31dcb1fd70709e9a72614bdcfca2d581c450caa486d04a824a03917abd99efa2941d44be293b3935da0df83985cfafa5c1d210",
            "cccc00719568eee1c5cb081788f778909a5f064d5b9c21fd59fcdc4a8a12b8a9",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xeB04b0753B20C1FEeb2A383130A4689642e63BF2",
            "BAYeIpCyFJTQFzSf/Hsx3LH9cHCemnJhS9z8otWBxFDKpIbQSoJKA5F6vZnvopQdRL4pOzk12g34OYXPr6XB0hA=",
            "zMwAcZVo7uHFywgXiPd4kJpfBk1bnCH9WfzcSooSuKk=",
        ),
    ),
    # m/44'/60'/0'/0/333
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xFa632A94370a27B77832AccA02aE59BBB0883253",
            "0xd9c6ce5ccac5d8660e562470af52d35de38756d685ff974cf9080f3a28a5d9e54e52d051f045a41e2bf2196126979f90594b9feade0f65600becb5f108dfde5f",
            "8800b6f95e137d73ab8480a6cefa3faee16c80658333fa3d9ec91d29d0fe317d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xFa632A94370a27B77832AccA02aE59BBB0883253",
            "BNnGzlzKxdhmDlYkcK9S013jh1bWhf+XTPkIDzoopdnlTlLQUfBFpB4r8hlhJpefkFlLn+reD2VgC+y18Qjf3l8=",
            "iAC2+V4TfXOrhICmzvo/ruFsgGWDM/o9nskdKdD+MX0=",
        ),
    ),
    # m/44'/60'/0'/0/334
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xB51fe795B1F998281BA9BB2710882B6658bDa3F2",
            "0x41ed3cafa3beb0fa0dafc6570152d18fc8ceac6f5cd27211c92dff782c31e7782204791e4080b7a65ef96d5f88f6361d8bc0a1f6ee35e945e9a313da1ec7df67",
            "97e3ea76c222c391d0ab83e99559cfbccc04bad6fc07aeae2e10aebf057de555",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xB51fe795B1F998281BA9BB2710882B6658bDa3F2",
            "BEHtPK+jvrD6Da/GVwFS0Y/IzqxvXNJyEckt/3gsMed4IgR5HkCAt6Ze+W1fiPY2HYvAofbuNelF6aMT2h7H32c=",
            "l+PqdsIiw5HQq4PplVnPvMwEutb8B66uLhCuvwV95VU=",
        ),
    ),
    # m/44'/60'/0'/0/335
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xD6148B904dc1f4cc588B87Eb26CE1C4E508C8c87",
            "0x5070894b0716a308d49a6e6dbb5382e1cae762659714bd6422f14ddabb5aad8fdd84f745462d83030eac0f41c8685a2ee40855d35eb0b0825e3c5637996dc354",
            "79f002ddaad58c5810bd7d93601fa9514f7f93bff5a80f1d3e06fe2679cde3d3",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xD6148B904dc1f4cc588B87Eb26CE1C4E508C8c87",
            "BFBwiUsHFqMI1JpubbtTguHK52JllxS9ZCLxTdq7Wq2P3YT3RUYtgwMOrA9ByGhaLuQIVdNesLCCXjxWN5ltw1Q=",
            "efAC3arVjFgQvX2TYB+pUU9/k7/1qA8dPgb+JnnN49M=",
        ),
    ),
    # m/44'/60'/0'/0/336
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xe0ffA89bCA104C98392e7784675a8Cc9fDEc7C92",
            "0xef9c0d9af3872eac02eb0ab5b261e2356f2ad34cc5f9f1becc5b3b79471eb1632dccbef3dafef60399da477139de55a5e39f46dfbf758d437ebf80a978992ad6",
            "a7f097bb0e3d4c9fc2a94fb8cc6fdb870e6c326868f94fdc1f4847b4dbf9d35e",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xe0ffA89bCA104C98392e7784675a8Cc9fDEc7C92",
            "BO+cDZrzhy6sAusKtbJh4jVvKtNMxfnxvsxbO3lHHrFjLcy+89r+9gOZ2kdxOd5VpeOfRt+/dY1Dfr+AqXiZKtY=",
            "p/CXuw49TJ/CqU+4zG/bhw5sMmho+U/cH0hHtNv5014=",
        ),
    ),
    # m/44'/60'/0'/0/337
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xAEaE0a9E31e4040DbB3C5cdaC1d36C2142d539eb",
            "0xfaa5b3574a650b05ffbd8d5fc56359ee1a50c2be6af5e53df56227882a965f8d708b08099780332c3aa7107e9172b7a582a402ada38fae78c6746b1441f2eab3",
            "94054b3bbbc5b42212dd9ff30767d65e4594c48e091189f2948de75baa5d5357",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xAEaE0a9E31e4040DbB3C5cdaC1d36C2142d539eb",
            "BPqls1dKZQsF/72NX8VjWe4aUMK+avXlPfViJ4gqll+NcIsICZeAMyw6pxB+kXK3pYKkAq2jj654xnRrFEHy6rM=",
            "lAVLO7vFtCIS3Z/zB2fWXkWUxI4JEYnylI3nW6pdU1c=",
        ),
    ),
    # m/44'/60'/0'/0/338
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x2c8f948a0FF9abB9202f28B03498c576FfD02cE9",
            "0x823cbb3489086449b0ef7410832c614110d232c97bbc2a6e759f274aef9e6dc563b9c739fac1c503e251d6b25696860b1c6f64c4b270112e72104a6a95f655c8",
            "924c02b599b8bc93ccfe796954bcead34e81cb564c2f6af2be121f545fd42946",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x2c8f948a0FF9abB9202f28B03498c576FfD02cE9",
            "BII8uzSJCGRJsO90EIMsYUEQ0jLJe7wqbnWfJ0rvnm3FY7nHOfrBxQPiUdayVpaGCxxvZMSycBEuchBKapX2Vcg=",
            "kkwCtZm4vJPM/nlpVLzq006By1ZML2ryvhIfVF/UKUY=",
        ),
    ),
    # m/44'/60'/0'/0/339
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x3c407451f8F52828D08bB13546346eEE9856C244",
            "0xfcb9086f8f6e11a1fab5fe99fd0adcc0e4df6d4f342c24f24924fbedde817677459600c227c884b59edf74db0593c80ae061811d5f760a2819ea4855caaf9eb1",
            "fae15935a15fe819b5a487947854ecca6a8c8d2e3162e83c03ee0b2ff3d77a80",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x3c407451f8F52828D08bB13546346eEE9856C244",
            "BPy5CG+PbhGh+rX+mf0K3MDk321PNCwk8kkk++3egXZ3RZYAwifIhLWe33TbBZPICuBhgR1fdgooGepIVcqvnrE=",
            "+uFZNaFf6Bm1pIeUeFTsymqMjS4xYug8A+4LL/PXeoA=",
        ),
    ),
    # m/44'/60'/0'/0/340
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x5d8dc9Aba0cFcB18e2da13CfFa24f57D05b371A1",
            "0x599cd179a35b091e14c44de81adbd8cba1170cf8a2e67d0fc78f5a51b5000dbdb4940fe31bbd89d5e074e15f9697459d96fd3b07e0256bed405733f821483b88",
            "6024922e54d78c804257bc0b91e7a69c4d9ba97d7c15f9b638410ccc282288bc",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x5d8dc9Aba0cFcB18e2da13CfFa24f57D05b371A1",
            "BFmc0XmjWwkeFMRN6Brb2MuhFwz4ouZ9D8ePWlG1AA29tJQP4xu9idXgdOFflpdFnZb9OwfgJWvtQFcz+CFIO4g=",
            "YCSSLlTXjIBCV7wLkeemnE2bqX18Ffm2OEEMzCgiiLw=",
        ),
    ),
    # m/44'/60'/0'/0/341
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x2Eea80106EFeB5829cf1A1B1D2096E42c8446220",
            "0x7159ab73c0bcead32dfce5c51b1f72773bd55785826261f402f5c8c653aface27bd3165966cfb54db9837884561b5c85ec151ff22475ea01bb6ffaf6f88f3b95",
            "c1bda96ca27968f91da6d31ce9d813f002f4b2cacdd93233fc717b8d27b43840",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x2Eea80106EFeB5829cf1A1B1D2096E42c8446220",
            "BHFZq3PAvOrTLfzlxRsfcnc71VeFgmJh9AL1yMZTr6zie9MWWWbPtU25g3iEVhtchewVH/IkdeoBu2/69viPO5U=",
            "wb2pbKJ5aPkdptMc6dgT8AL0ssrN2TIz/HF7jSe0OEA=",
        ),
    ),
    # m/44'/60'/0'/0/342
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x509Fc0FCC0954D3e08fc5D216b4816EdACAfA34A",
            "0x93101beba4a3d0f6df696a7e097465ad1a7c4926fde5fbf87a7824dc6fcaf3155a5769c436ef1a073d314acd6bebdf4305ad6941d569faabd6236051fa2d092f",
            "80e130e2e745915d0e78396fcb5444c10024629f41c558721e349039791e5208",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x509Fc0FCC0954D3e08fc5D216b4816EdACAfA34A",
            "BJMQG+uko9D232lqfgl0Za0afEkm/eX7+Hp4JNxvyvMVWldpxDbvGgc9MUrNa+vfQwWtaUHVafqr1iNgUfotCS8=",
            "gOEw4udFkV0OeDlvy1REwQAkYp9BxVhyHjSQOXkeUgg=",
        ),
    ),
    # m/44'/60'/0'/0/343
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x0B8d5dc796C454cd54fb953a1e04f83357247286",
            "0x4c40fc49c3b8e51f80e14915c93502db0d460d91dd6d6708a7f4803a34e683fea395cfba5d9551228181d2e574cd0e91d39a3f385c2f4163eb4223a2ec328d4c",
            "83a12bdcbd950c037ba8de88ae66508d8d7105cc95b0854da82b7b01cf26c226",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x0B8d5dc796C454cd54fb953a1e04f83357247286",
            "BExA/EnDuOUfgOFJFck1AtsNRg2R3W1nCKf0gDo05oP+o5XPul2VUSKBgdLldM0OkdOaPzhcL0Fj60IjouwyjUw=",
            "g6Er3L2VDAN7qN6IrmZQjY1xBcyVsIVNqCt7Ac8mwiY=",
        ),
    ),
    # m/44'/60'/0'/0/344
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xE6e610B0d3d10a3CCD5284C24C1e18B34425De71",
            "0x4fd3e19096d341366054738a004fe55138455fa7218506eb92a2345f1ece5603c262a14553ededd09fd0ddcd9bf4416af01fa48b1971bdc606b748aa149f18c1",
            "dcc1c8a3f7868efad021b67f00a5e9ee4955109378264a38219744f3d8007220",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xE6e610B0d3d10a3CCD5284C24C1e18B34425De71",
            "BE/T4ZCW00E2YFRzigBP5VE4RV+nIYUG65KiNF8ezlYDwmKhRVPt7dCf0N3Nm/RBavAfpIsZcb3GBrdIqhSfGME=",
            "3MHIo/eGjvrQIbZ/AKXp7klVEJN4Jko4IZdE89gAciA=",
        ),
    ),
    # m/44'/60'/0'/0/345
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x8a48A063C3CcE13E30Ad10A04Bd4d2fF9206E930",
            "0xb8f93b0fa233915ff7efd09bcd8f39f0a187e59e1344b9906dc86157e7814f5010b387cc9ea9e2c57fff8a274d91d5e8c9550be6ffbe4bf8824b69ba1e9e026e",
            "0c3f4304b5c3cd9722da12c15e05347404e4e2b61cab4fbd9dc1d649d95a1d49",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x8a48A063C3CcE13E30Ad10A04Bd4d2fF9206E930",
            "BLj5Ow+iM5Ff9+/Qm82POfChh+WeE0S5kG3IYVfngU9QELOHzJ6p4sV//4onTZHV6MlVC+b/vkv4gktpuh6eAm4=",
            "DD9DBLXDzZci2hLBXgU0dATk4rYcq0+9ncHWSdlaHUk=",
        ),
    ),
    # m/44'/60'/0'/0/346
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xa55711D7Fb50aF693E1eb476E1F5116b9a711d8D",
            "0x95c983bcd4325ef80c201cf3882f01e43f8909f880aada6666fc0eb60ef933ceb54d9d0456d68030a701217ead9b755cc6c0373bc473d9a225bbd9441705e225",
            "f8ca387bf589a14478d1d694f3ed792683093c19f6028b12454768171a1d25a7",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xa55711D7Fb50aF693E1eb476E1F5116b9a711d8D",
            "BJXJg7zUMl74DCAc84gvAeQ/iQn4gKraZmb8DrYO+TPOtU2dBFbWgDCnASF+rZt1XMbANzvEc9miJbvZRBcF4iU=",
            "+Mo4e/WJoUR40daU8+15JoMJPBn2AosSRUdoFxodJac=",
        ),
    ),
    # m/44'/60'/0'/0/347
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xfAFCf7DC13F9B7B79790916a8f3928Fd5D9db03B",
            "0xfc8aed31c9af42945f119a027d08b45b610162782a92741729a54bcb34be2d7f3fe7224786a060dcee76c81420136230cd99547e01cbfe028051cf4b3329cdfb",
            "118f4e7f0469466eb496a1ec17b6e311a03e0d257202298a1ac39b6c584571c4",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xfAFCf7DC13F9B7B79790916a8f3928Fd5D9db03B",
            "BPyK7THJr0KUXxGaAn0ItFthAWJ4KpJ0FymlS8s0vi1/P+ciR4agYNzudsgUIBNiMM2ZVH4By/4CgFHPSzMpzfs=",
            "EY9OfwRpRm60lqHsF7bjEaA+DSVyAimKGsObbFhFccQ=",
        ),
    ),
    # m/44'/60'/0'/0/348
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x149ec10A5D78FeD397f7392c7Dd9a2dCfAE31Bc2",
            "0x4ab9c6dae5cafb32c88e152ddb914b4bd77ce8f8691cb9da4a0103bbb507e84ca1f223d0653da96b4b4ffa77647d39bd83338f88cd4b6e85bb936ae4c1daacb7",
            "e5535a83fa90028a8bf6dbc70246ab92c25d3b6b70796832df1075b93e872f95",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x149ec10A5D78FeD397f7392c7Dd9a2dCfAE31Bc2",
            "BEq5xtrlyvsyyI4VLduRS0vXfOj4aRy52koBA7u1B+hMofIj0GU9qWtLT/p3ZH05vYMzj4jNS26Fu5Nq5MHarLc=",
            "5VNag/qQAoqL9tvHAkarksJdO2tweWgy3xB1uT6HL5U=",
        ),
    ),
    # m/44'/60'/0'/0/349
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x148346FD4dcE1da6a65915859544770b780eA576",
            "0x937d5d4e95be627f41286cb0e16f04ba95e65e0f6df5864eb2e9e79c08cfb89dac1fbf24a2549971db2fb5eeabbc8b55cef1dbc0a23c84cc33e4127c02fe5ff0",
            "0a9919935f0dc766a17fe3e297d694fd01e3f4027af6c47aae11095b7f25cc23",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x148346FD4dcE1da6a65915859544770b780eA576",
            "BJN9XU6VvmJ/QShssOFvBLqV5l4PbfWGTrLp55wIz7idrB+/JKJUmXHbL7Xuq7yLVc7x28CiPITMM+QSfAL+X/A=",
            "CpkZk18Nx2ahf+Pil9aU/QHj9AJ69sR6rhEJW38lzCM=",
        ),
    ),
    # m/44'/60'/0'/0/350
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x5817654075fE4735eb10C55a3EfF7114A9f25337",
            "0xf5304fcb0c0c4e49fe9a9d37bf413dc9330c52383f4ddb08e767a57d3badd123417c2a665fcdc1aafb2b15d39f6f9e7315c0403943472c1c45fd14da142e9915",
            "2d1ae80c39a8f4ac71ccd0f470db5cf2913eff14c965696440b1934a198b63e8",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x5817654075fE4735eb10C55a3EfF7114A9f25337",
            "BPUwT8sMDE5J/pqdN79BPckzDFI4P03bCOdnpX07rdEjQXwqZl/Nwar7KxXTn2+ecxXAQDlDRywcRf0U2hQumRU=",
            "LRroDDmo9KxxzND0cNtc8pE+/xTJZWlkQLGTShmLY+g=",
        ),
    ),
    # m/44'/60'/0'/0/351
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x93EE925a4272664CC732C6F5B72837211952de4d",
            "0xb41adc25448af6affe77c6bceac87100dfce8aa39a9ea996aab56166f5f92c910c29734b3e2ad448f83f7ac61bcc9df0c7a819d880931dc489cf66833bb72fa8",
            "1da0141968a8b7d0147723220a405779b383a471bda6ff96f9bedcb6da04b12a",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x93EE925a4272664CC732C6F5B72837211952de4d",
            "BLQa3CVEivav/nfGvOrIcQDfzoqjmp6plqq1YWb1+SyRDClzSz4q1Ej4P3rGG8yd8MeoGdiAkx3Eic9mgzu3L6g=",
            "HaAUGWiot9AUdyMiCkBXebODpHG9pv+W+b7cttoEsSo=",
        ),
    ),
    # m/44'/60'/0'/0/352
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x9Ed7E5Df4720109A6Cf345717e067504bA1c29D2",
            "0xca78095ba398aa2760b159fab51ec2a5c385ae797cea01a678cad0af2a2c32f36e904fd52d745055442394098f8d12733405aa39decc836c642c3f852215956a",
            "1eb7fb1bcaade9df4b12e7ff3965094833bac64e1ca3b27a1a6dca1446c4d74b",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x9Ed7E5Df4720109A6Cf345717e067504bA1c29D2",
            "BMp4CVujmKonYLFZ+rUewqXDha55fOoBpnjK0K8qLDLzbpBP1S10UFVEI5QJj40SczQFqjnezINsZCw/hSIVlWo=",
            "Hrf7G8qt6d9LEuf/OWUJSDO6xk4co7J6Gm3KFEbE10s=",
        ),
    ),
    # m/44'/60'/0'/0/353
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xE1a9A507538E949056A9b148384f314fC11014DE",
            "0x2624a4da0e4b3ac6246db64c6964f4b891da9d528c1f14b7f758ce1c68f71de795a1b253597073df53ed63c3201e8b9c1dc30a7bc2cfca8fda53acdf32f9428f",
            "a76ac5e1ae6c3752487855cc8363e54aac3dcf165795923c23b0679fac3fddaa",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xE1a9A507538E949056A9b148384f314fC11014DE",
            "BCYkpNoOSzrGJG22TGlk9LiR2p1SjB8Ut/dYzhxo9x3nlaGyU1lwc99T7WPDIB6LnB3DCnvCz8qP2lOs3zL5Qo8=",
            "p2rF4a5sN1JIeFXMg2PlSqw9zxZXlZI8I7Bnn6w/3ao=",
        ),
    ),
    # m/44'/60'/0'/0/354
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xeEaDD747e89779857C9E6BFFda5463A8e9557640",
            "0x05791a1a133a29edf04384fa7824cc3e50998ede5ea83f798e1e4a4d47a788bb7ad6c4ee355a8eb42f9c8ea08420b11a762b9190f17bef07e9cf6cb5f34234bf",
            "3122c219e8c59a293044b628a931004cc86d1f43c9f4df7bc31efda9b2c091ed",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xeEaDD747e89779857C9E6BFFda5463A8e9557640",
            "BAV5GhoTOint8EOE+ngkzD5QmY7eXqg/eY4eSk1Hp4i7etbE7jVajrQvnI6ghCCxGnYrkZDxe+8H6c9stfNCNL8=",
            "MSLCGejFmikwRLYoqTEATMhtH0PJ9N97wx79qbLAke0=",
        ),
    ),
    # m/44'/60'/0'/0/355
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x210504f7CC9fF329ab1Bb1E10871C5718464D636",
            "0x12d647c2feb030848ab25ca73f08d464e6f555701df9a2ab79da76f95a0418ca320c09533ece6a3b0325f88060601536a56888ad4a738aaeaaabdee18d0198e7",
            "b4d7216dfff7ea86fdcb1bea9586170672b367420490165bba2111fdf2712013",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x210504f7CC9fF329ab1Bb1E10871C5718464D636",
            "BBLWR8L+sDCEirJcpz8I1GTm9VVwHfmiq3nadvlaBBjKMgwJUz7OajsDJfiAYGAVNqVoiK1Kc4quqqve4Y0BmOc=",
            "tNchbf/36ob9yxvqlYYXBnKzZ0IEkBZbuiER/fJxIBM=",
        ),
    ),
    # m/44'/60'/0'/0/356
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x882d054cb3ffd32B4Eef37e0ce7852427a3E22c1",
            "0x81de99784207deb97b2818f450d7b13992ba710fe1c48f0977acf02e1af07cfea16af67219bbd5b1ee4e1f01139cfce8e02ed17b1aea4076832463566a690a3a",
            "40306220bc693f706d3f3c939ef8f809f8a825a5f063dccdccc98f73bbd62222",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x882d054cb3ffd32B4Eef37e0ce7852427a3E22c1",
            "BIHemXhCB965eygY9FDXsTmSunEP4cSPCXes8C4a8Hz+oWr2chm71bHuTh8BE5z86OAu0Xsa6kB2gyRjVmppCjo=",
            "QDBiILxpP3BtPzyTnvj4CfioJaXwY9zNzMmPc7vWIiI=",
        ),
    ),
    # m/44'/60'/0'/0/357
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xfD4C06a4173970831Bf5809120e812c774eE108f",
            "0x09b47a12a9522f468ffd858b5b574e3e641b7ce1b720b15dff27f817daaa1339078e34810617143e656d45dcf96543523fad361a8861399f9cebe8ad7a010f7c",
            "4c495d32f126eed57f459759d1263474427fe0280115d3c4e33cc522155432f0",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xfD4C06a4173970831Bf5809120e812c774eE108f",
            "BAm0ehKpUi9Gj/2Fi1tXTj5kG3zhtyCxXf8n+BfaqhM5B440gQYXFD5lbUXc+WVDUj+tNhqIYTmfnOvorXoBD3w=",
            "TEldMvEm7tV/RZdZ0SY0dEJ/4CgBFdPE4zzFIhVUMvA=",
        ),
    ),
    # m/44'/60'/0'/0/358
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x29d99bF64d76cC39e2BEC468d6E205510DF54298",
            "0x971829dde61a23e75344ba837a1bd1e77ad9196cc76d0e13a57ffbc8156e4ab9801081c6c5ce9bc5aa115fa04220bc2e4cd99d3b5e8a55164a92b83f89b6a40a",
            "669ff2f10ddd19250f8a62a22babd7c8449d6db78e6c0ffdf4442d5b2f251fbd",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x29d99bF64d76cC39e2BEC468d6E205510DF54298",
            "BJcYKd3mGiPnU0S6g3ob0ed62Rlsx20OE6V/+8gVbkq5gBCBxsXOm8WqEV+gQiC8LkzZnTteilUWSpK4P4m2pAo=",
            "Zp/y8Q3dGSUPimKiK6vXyESdbbeObA/99EQtWy8lH70=",
        ),
    ),
    # m/44'/60'/0'/0/359
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xcD8368fab5918A2f4FfaDF93Ce5B59d4d49E9968",
            "0xa889bc88af83c89012442b72fc3792a67f13d65452df77cd27bd5986547b3b2a796879c2837fb2a125dee31e7cd49a81c11fe00ab76e62360cebe2ac580b5a8c",
            "52deaeb3a7cab23e5c29d88772115cd8c8952bb36e7bb89a852f03972a72ba20",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xcD8368fab5918A2f4FfaDF93Ce5B59d4d49E9968",
            "BKiJvIivg8iQEkQrcvw3kqZ/E9ZUUt93zSe9WYZUezsqeWh5woN/sqEl3uMefNSagcEf4Aq3bmI2DOvirFgLWow=",
            "Ut6us6fKsj5cKdiHchFc2MiVK7Nue7iahS8DlypyuiA=",
        ),
    ),
    # m/44'/60'/0'/0/360
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x1768819Bc4Ab8b1B86F3AeF0167508bdc78CB03a",
            "0x851d9e0f9bcfa007774045bfdab291650dbf6fe7702009ef50609d77d504a0f20fface9d784b59e35cffef7f32cd5d89d768ed81383ec9d5f9caaf7694d9d9da",
            "74587addd9faeab4d1e35dbaa987c954ab53c920a565b271d180f420fa0f493a",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x1768819Bc4Ab8b1B86F3AeF0167508bdc78CB03a",
            "BIUdng+bz6AHd0BFv9qykWUNv2/ncCAJ71BgnXfVBKDyD/rOnXhLWeNc/+9/Ms1diddo7YE4PsnV+cqvdpTZ2do=",
            "dFh63dn66rTR4126qYfJVKtTySClZbJx0YD0IPoPSTo=",
        ),
    ),
    # m/44'/60'/0'/0/361
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xAd7D290F94f3a427a8F57747D6d8DdD0Aece2A4F",
            "0xff016f3db6f6ed4d533d2db0953f73dd9947b38f6441d066d08c3a6046f3b4159c69652a30394b4e04988c10ac22f078829ab347cd0f5a930001c5b42245e283",
            "8a82c23a9dc7b197c62fa3f34cf11e8a886ed0b1cf11693dd1cc8201c6e03b02",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xAd7D290F94f3a427a8F57747D6d8DdD0Aece2A4F",
            "BP8Bbz229u1NUz0tsJU/c92ZR7OPZEHQZtCMOmBG87QVnGllKjA5S04EmIwQrCLweIKas0fND1qTAAHFtCJF4oM=",
            "ioLCOp3HsZfGL6PzTPEeiohu0LHPEWk90cyCAcbgOwI=",
        ),
    ),
    # m/44'/60'/0'/0/362
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x9599f9160BF187E3794A9F8D35b102B61a5A156b",
            "0xea3aecf771f69db3ec21d6ca386bc7287292105e7ceed783933b4c11cdab5a26ed29d81a5262d64b939810f4c721b8c43843739091b750e6f4964fd66767bee2",
            "311332040374f2f90eba7300e0165e5e5657cbb7a403b0b87ee5dca6cf8450da",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x9599f9160BF187E3794A9F8D35b102B61a5A156b",
            "BOo67Pdx9p2z7CHWyjhrxyhykhBefO7Xg5M7TBHNq1om7SnYGlJi1kuTmBD0xyG4xDhDc5CRt1Dm9JZP1mdnvuI=",
            "MRMyBAN08vkOunMA4BZeXlZXy7ekA7C4fuXcps+EUNo=",
        ),
    ),
    # m/44'/60'/0'/0/363
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xFb71bdE6357eF0c0C6041019020993128E0c6Eda",
            "0xc56a766cfbcfb6492854f7c7039bd020a39d3332b7f90cc37ffa3f69d74febbbb4ba8295f89bd94ed9532baa5018e6e471b090e84658a31ce4e0ca1a18d9652a",
            "5c7c2e7e43b48ef07c09e8f341e0bcb3df8ee535f8ffba3d326945d1e9626651",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xFb71bdE6357eF0c0C6041019020993128E0c6Eda",
            "BMVqdmz7z7ZJKFT3xwOb0CCjnTMyt/kMw3/6P2nXT+u7tLqClfib2U7ZUyuqUBjm5HGwkOhGWKMc5ODKGhjZZSo=",
            "XHwufkO0jvB8CejzQeC8s9+O5TX4/7o9MmlF0eliZlE=",
        ),
    ),
    # m/44'/60'/0'/0/364
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x3806c719c7D01Fe7452bc449030D128952F0Cb6a",
            "0x82be395891ede40b7be1010e676551e16e038a2b6d6ff618f25bb25d7b2beab72a18160c4eed4dc87ae0cd33990e03f9d10e40e26135726b342d98e52e833de7",
            "48831504d2538f3e5406d3a973a5df96bed1fc11a2f0aeb9c9c26fa425fbfbe1",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x3806c719c7D01Fe7452bc449030D128952F0Cb6a",
            "BIK+OViR7eQLe+EBDmdlUeFuA4orbW/2GPJbsl17K+q3KhgWDE7tTch64M0zmQ4D+dEOQOJhNXJrNC2Y5S6DPec=",
            "SIMVBNJTjz5UBtOpc6Xflr7R/BGi8K65ycJvpCX7++E=",
        ),
    ),
    # m/44'/60'/0'/0/365
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xdc28B5D0032cE315e070DB5bAd1E675EE6F974E2",
            "0x31b08a0b18abe1ef7b7b36f468ab7ff5980642d10780c2a7212f6f8c76eac2ef827187875ee65243d4792cbe7b68ed8eb6085fe6087cd79a094537972c56734e",
            "229ca34f93df346b22823f495d28ede937d21ad00e0a81130489d305d8e8f056",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xdc28B5D0032cE315e070DB5bAd1E675EE6F974E2",
            "BDGwigsYq+Hve3s29Girf/WYBkLRB4DCpyEvb4x26sLvgnGHh17mUkPUeSy+e2jtjrYIX+YIfNeaCUU3lyxWc04=",
            "IpyjT5PfNGsigj9JXSjt6TfSGtAOCoETBInTBdjo8FY=",
        ),
    ),
    # m/44'/60'/0'/0/366
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x0CBFee842c40567907fF18245734034598a0f3fB",
            "0x3cd7b640f56ff108be97fba2cda3f480487810d539037acf3a5fd77f577c131d9453b5f90d313ffd3c13834b39d5a1a00e2aeeafaa391e424b726a8685cab44f",
            "f1f52e1df53b6b6a6f76177d5b53fa6ac8bcbde56c5ab2fdcd4dcf95d3ce89e8",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x0CBFee842c40567907fF18245734034598a0f3fB",
            "BDzXtkD1b/EIvpf7os2j9IBIeBDVOQN6zzpf139XfBMdlFO1+Q0xP/08E4NLOdWhoA4q7q+qOR5CS3JqhoXKtE8=",
            "8fUuHfU7a2pvdhd9W1P6asi8veVsWrL9zU3PldPOieg=",
        ),
    ),
    # m/44'/60'/0'/0/367
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x2d396EE4A3F00C7D14e023432a8Adc326D6A8876",
            "0x793737ab201fb9ab50f3c29abe8dcf60db1d9ee304ba729d24b0c097d9e2b0330ca272ef060112a037b25bb92334173e0133138dd70da2c8edd805f68c430dad",
            "8125f06b227368c25366a1200ba77fa283390443db96ed62f8dab52fbffbb7b5",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x2d396EE4A3F00C7D14e023432a8Adc326D6A8876",
            "BHk3N6sgH7mrUPPCmr6Nz2DbHZ7jBLpynSSwwJfZ4rAzDKJy7wYBEqA3slu5IzQXPgEzE43XDaLI7dgF9oxDDa0=",
            "gSXwayJzaMJTZqEgC6d/ooM5BEPblu1i+Nq1L7/7t7U=",
        ),
    ),
    # m/44'/60'/0'/0/368
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x651E46E1D990dA0b27640Be5eA92A8FeC2340984",
            "0xf47de0450305533f9de6b8ac7bae0e243396e907b15782da6e2251d49291b7eacf8dea049795028cddf47a5ea6cb25e759e05f7677e8d7fe118fbae148e66bb8",
            "a546aab6ae1b66ab0372f300c303cb98b143447b95fa9e8c26f1aa64c5c72911",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x651E46E1D990dA0b27640Be5eA92A8FeC2340984",
            "BPR94EUDBVM/nea4rHuuDiQzlukHsVeC2m4iUdSSkbfqz43qBJeVAozd9Hpepssl51ngX3Z36Nf+EY+64Ujma7g=",
            "pUaqtq4bZqsDcvMAwwPLmLFDRHuV+p6MJvGqZMXHKRE=",
        ),
    ),
    # m/44'/60'/0'/0/369
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xbF1825BB52708A6da93d3371cBB575869EBC2271",
            "0xe5d6cc1e1b5bef1188a88cb9301116aae749cdf8dfc2b8b3735f8c8973aa3cd53fe8c2844d93468de57d69f56165090b19d0358766a8511837caee2c68ef6926",
            "cc71ebb311957480005a4e31199fe2bc5ad0db16bb24fa5b799d3684f458f03f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xbF1825BB52708A6da93d3371cBB575869EBC2271",
            "BOXWzB4bW+8RiKiMuTARFqrnSc3438K4s3NfjIlzqjzVP+jChE2TRo3lfWn1YWUJCxnQNYdmqFEYN8ruLGjvaSY=",
            "zHHrsxGVdIAAWk4xGZ/ivFrQ2xa7JPpbeZ02hPRY8D8=",
        ),
    ),
    # m/44'/60'/0'/0/370
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x8e9C2791887B019B7b47A39D82E6BF001c5f8a7C",
            "0xe40eaf30485c0a3b15c5fdd5df29b4a1b4827a34d440cca1abc6754e8ce83bf50ab66608cc1cb0802f6283b5ef430d035223ab9b97dab7eee27a65956245a26f",
            "f4ba1cc2c3d57d10b6e5adf063dbd19a1cd64322653e24ade3404df8d7019def",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x8e9C2791887B019B7b47A39D82E6BF001c5f8a7C",
            "BOQOrzBIXAo7FcX91d8ptKG0gno01EDMoavGdU6M6Dv1CrZmCMwcsIAvYoO170MNA1Ijq5uX2rfu4npllWJFom8=",
            "9LocwsPVfRC25a3wY9vRmhzWQyJlPiSt40BN+NcBne8=",
        ),
    ),
    # m/44'/60'/0'/0/371
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x675B6FC05D3e19159ed953d67df8D437314f56f2",
            "0x587b36fb2db6ce16669346aa5d9ab626273b178494c5491fb7c75b71ee596ec46268a597405dc78e7a4b88ab98eda395732c6cb0f5eb2b8fc69be1397abe5f6a",
            "496bef0d5da7a735fbf57d56b1c61e52d199861a89e8cee47830cc9d77535386",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x675B6FC05D3e19159ed953d67df8D437314f56f2",
            "BFh7Nvstts4WZpNGql2atiYnOxeElMVJH7fHW3HuWW7EYmill0Bdx456S4irmO2jlXMsbLD16yuPxpvhOXq+X2o=",
            "SWvvDV2npzX79X1WscYeUtGZhhqJ6M7keDDMnXdTU4Y=",
        ),
    ),
    # m/44'/60'/0'/0/372
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x81565972007061c7Cc475D0B6F92b208F845f837",
            "0x575753637ab7ff411672a951223098a48a95f263ca7020df1de6f3be37420198e65a219bddbb5c0df19ca151455e0d621869d5b4f3fde3557cd33e1410fe5bed",
            "edb6d53c702b03811c983e3c7f98e7a11200d5b454980be04cde780a5446b883",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x81565972007061c7Cc475D0B6F92b208F845f837",
            "BFdXU2N6t/9BFnKpUSIwmKSKlfJjynAg3x3m8743QgGY5lohm927XA3xnKFRRV4NYhhp1bTz/eNVfNM+FBD+W+0=",
            "7bbVPHArA4EcmD48f5jnoRIA1bRUmAvgTN54ClRGuIM=",
        ),
    ),
    # m/44'/60'/0'/0/373
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xE800457913Df65944Cd3cf57D191E149D14b69dB",
            "0xb69487f3e15f180b919fea3cff0500f61b627f2d50a9632529f66a6045751b64267e4de61580298347372cbbbd0e76215c6a969a40a1bebb44ef5c08281ad0f4",
            "8b1c7b7ce9c02c2b3480b7eba2183fda5b40e15592155e436fcc327bff70f73e",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xE800457913Df65944Cd3cf57D191E149D14b69dB",
            "BLaUh/PhXxgLkZ/qPP8FAPYbYn8tUKljJSn2amBFdRtkJn5N5hWAKYNHNyy7vQ52IVxqlppAob67RO9cCCga0PQ=",
            "ixx7fOnALCs0gLfrohg/2ltA4VWSFV5Db8wye/9w9z4=",
        ),
    ),
    # m/44'/60'/0'/0/374
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x01a8Db748F34651C77C8B81e5C1b2450f55C7CE5",
            "0x6616d17c5a3418916884aa1c19da1e623d64a7e5e6104170715f43b34b0d11d720bb9214cbc45179b1cca62c19d0e29626eb2ba6884592405ca2b1408e134274",
            "8f8228f9dce32a3dc6014de95d17bbf7e6efd6dabe1c5be005a2a8bb56523bad",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x01a8Db748F34651C77C8B81e5C1b2450f55C7CE5",
            "BGYW0XxaNBiRaISqHBnaHmI9ZKfl5hBBcHFfQ7NLDRHXILuSFMvEUXmxzKYsGdDilibrK6aIRZJAXKKxQI4TQnQ=",
            "j4Io+dzjKj3GAU3pXRe79+bv1tq+HFvgBaKou1ZSO60=",
        ),
    ),
    # m/44'/60'/0'/0/375
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xB4F2111452619c29d293e920bbE73e2eF8433588",
            "0x36047520a64894889b26ae1ea5393cf25bbc8e7d024d5f66e3264a316acd1778df237d864a24f3e8e0374a1b7fa95f081feae882b76d86b491c10a76fac6abd6",
            "1bd6afb57ce0052fdf79d14c062fe604fe2c60aa24b7b6ed52d0a6fa3bedf511",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xB4F2111452619c29d293e920bbE73e2eF8433588",
            "BDYEdSCmSJSImyauHqU5PPJbvI59Ak1fZuMmSjFqzRd43yN9hkok8+jgN0obf6lfCB/q6IK3bYa0kcEKdvrGq9Y=",
            "G9avtXzgBS/fedFMBi/mBP4sYKokt7btUtCm+jvt9RE=",
        ),
    ),
    # m/44'/60'/0'/0/376
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xC7A8FadE7dbf1596474e2fD29E3778d2Cb74B4db",
            "0xd446007195e5900abbc0e5d1277e098ae900acf80b1c9643916fd665b426fc4fb0e1383f5a88e7ccdefa5893862a837a4ea740e8be3da632b8d0e6794b914719",
            "e9f6b6586d6d35431f95df8d5db19f5d25ead71d0055561ea5a0428550b7d48c",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xC7A8FadE7dbf1596474e2fD29E3778d2Cb74B4db",
            "BNRGAHGV5ZAKu8Dl0Sd+CYrpAKz4CxyWQ5Fv1mW0JvxPsOE4P1qI58ze+liThiqDek6nQOi+PaYyuNDmeUuRRxk=",
            "6fa2WG1tNUMfld+NXbGfXSXq1x0AVVYepaBChVC31Iw=",
        ),
    ),
    # m/44'/60'/0'/0/377
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xdC28197b19347d8520De2fa3568DE757B81aE7d6",
            "0x22f31a7812b14fffb88144fa6d7f5a27da63a6a8e69af2bcf51d85ee33cc64f4109d04365017e7513d41788bcff1b0002fe9c0002c15fdfce5363cd039081e22",
            "3d9fd1e2cd83f9c563b2482d453f5e558e88e4110b047828511d55afae67a74d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xdC28197b19347d8520De2fa3568DE757B81aE7d6",
            "BCLzGngSsU//uIFE+m1/WifaY6ao5pryvPUdhe4zzGT0EJ0ENlAX51E9QXiLz/GwAC/pwAAsFf385TY80DkIHiI=",
            "PZ/R4s2D+cVjskgtRT9eVY6I5BELBHgoUR1Vr65np00=",
        ),
    ),
    # m/44'/60'/0'/0/378
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xd6f4D29D144609d6d866b20FbE51436EC4ceA35D",
            "0x7828a21d8eae4ad5a45f84579584dc520e5cd0e8c5e03690f4a7856a72a8a40a44b8bbd4f7ee7c629f263b0a2d914d9ae5b20296def163d241d31f973eba0751",
            "e83b482e7c7227753e1ab08862a2462c069a8f4c521fca3e648b17612145772e",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xd6f4D29D144609d6d866b20FbE51436EC4ceA35D",
            "BHgooh2OrkrVpF+EV5WE3FIOXNDoxeA2kPSnhWpyqKQKRLi71PfufGKfJjsKLZFNmuWyApbe8WPSQdMflz66B1E=",
            "6DtILnxyJ3U+GrCIYqJGLAaaj0xSH8o+ZIsXYSFFdy4=",
        ),
    ),
    # m/44'/60'/0'/0/379
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xE3C6f3c6E1e1d45fc87C5C52a6a3ae6489f4fB3F",
            "0xef4e31e4c51613cbf8ddf456d559eba9ea63d08b73c1d6566d8a347ebeeb018c13af7f34287325433f67fd5722ca52b3c14658d7915e4341020a7717deeec2e5",
            "25bf51a3476671ac40e3f5a5cfcf8aa934010093af6d039a9d7ff14472fecd34",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xE3C6f3c6E1e1d45fc87C5C52a6a3ae6489f4fB3F",
            "BO9OMeTFFhPL+N30VtVZ66nqY9CLc8HWVm2KNH6+6wGME69/NChzJUM/Z/1XIspSs8FGWNeRXkNBAgp3F97uwuU=",
            "Jb9Ro0dmcaxA4/Wlz8+KqTQBAJOvbQOanX/xRHL+zTQ=",
        ),
    ),
    # m/44'/60'/0'/0/380
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x236FE49A9e4254925Deb8a17C3e379FfA233142b",
            "0x54fcace9185fae920c36b0096743ff62c520c7966133c10e4b7699f136fc597665c8fc5ceb154dd0aa93f94e6e2128d196e398e0339ef56d228c6691820ae02c",
            "6ead0c3cade8d623893a584fe438d85f71c0065d1e84aeb7ca5235d83c2bcb7e",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x236FE49A9e4254925Deb8a17C3e379FfA233142b",
            "BFT8rOkYX66SDDawCWdD/2LFIMeWYTPBDkt2mfE2/Fl2Zcj8XOsVTdCqk/lObiEo0ZbjmOAznvVtIoxmkYIK4Cw=",
            "bq0MPK3o1iOJOlhP5DjYX3HABl0ehK63ylI12Dwry34=",
        ),
    ),
    # m/44'/60'/0'/0/381
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x9EeCD6a13FddF31Ee2176dC36CBA6372363fdFbC",
            "0x2a195042c9c0338e3aec1765b74cf55845e0c4997ccfd1017f1f337168a34130be05f1bcfcb677174e59c7d8fbd75dbf4a95f8486df34f6e1abb31a5a9beff8c",
            "bf48ef78776f5c535b0e9ad32cda61f1cea779c67dd29fd19c7441600b7f070c",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x9EeCD6a13FddF31Ee2176dC36CBA6372363fdFbC",
            "BCoZUELJwDOOOuwXZbdM9VhF4MSZfM/RAX8fM3Foo0EwvgXxvPy2dxdOWcfY+9ddv0qV+Eht809uGrsxpam+/4w=",
            "v0jveHdvXFNbDprTLNph8c6necZ90p/RnHRBYAt/Bww=",
        ),
    ),
    # m/44'/60'/0'/0/382
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x976B35a8b5c47CDef26f79b750E1A0e8Af79c200",
            "0xa095b037d3113b217c36fa3edbf078ea2690053a63472fae12b94fd36b33285ae33d6ea5939defcfbd54a5dd9aa768778c17f41af65116420a1a456a814c5d0c",
            "9156a99ca69048cfed9848e23e770559598698f321dfef0c21c9291ee20e42a9",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x976B35a8b5c47CDef26f79b750E1A0e8Af79c200",
            "BKCVsDfTETshfDb6PtvweOomkAU6Y0cvrhK5T9NrMyha4z1upZOd78+9VKXdmqdod4wX9Br2URZCChpFaoFMXQw=",
            "kVapnKaQSM/tmEjiPncFWVmGmPMh3+8MIckpHuIOQqk=",
        ),
    ),
    # m/44'/60'/0'/0/383
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x4c2A67De650B04264d977d99584E44C9F5C3aBDb",
            "0x864d581db41d530d8f35bd9f8fd10271a0006fe16587eda446c061d2087951615c51593a9606f9d6e5a906d6d3db4a8bcce8b3fcbebf808e2c3fd76e8d3335ac",
            "cc90417799f3238629f106388490ed6e09fb523d0aa26428af9b072e81e7f946",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x4c2A67De650B04264d977d99584E44C9F5C3aBDb",
            "BIZNWB20HVMNjzW9n4/RAnGgAG/hZYftpEbAYdIIeVFhXFFZOpYG+dblqQbW09tKi8zos/y+v4COLD/Xbo0zNaw=",
            "zJBBd5nzI4Yp8QY4hJDtbgn7Uj0KomQor5sHLoHn+UY=",
        ),
    ),
    # m/44'/60'/0'/0/384
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xd3759a2f5953C697Cd07a6d98b5a852868D5e4E4",
            "0x5895d0dad04aef8f90aa8cb5f29c25a6047d23311368c3bd0bfd7e6bae871686525d4abf4f2672b7eba4184e326674d118b27d4f556ce7974ce2257d1d913f09",
            "b5a7a711253e64c01c4827bbe71e016af19c99a8a38cbb8ef2ae98d2f706c5cc",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xd3759a2f5953C697Cd07a6d98b5a852868D5e4E4",
            "BFiV0NrQSu+PkKqMtfKcJaYEfSMxE2jDvQv9fmuuhxaGUl1Kv08mcrfrpBhOMmZ00RiyfU9VbOeXTOIlfR2RPwk=",
            "taenESU+ZMAcSCe75x4BavGcmaijjLuO8q6Y0vcGxcw=",
        ),
    ),
    # m/44'/60'/0'/0/385
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x9C8E416c84A24ed17A5F1Bb47fA698Aa3cE540aC",
            "0xb9d281fead26dbeaefae5b8fc462ab69337904f01c151cc2b58b5c50b412467ad6b1ea21a9bd00ebc02663b0a24fa6ceaa796e24844ab2bb422ff860ec0c492a",
            "7c389526130c04b9c04618f9d3d50fd681c27e4d565bcea72f5e61f2650f8fc2",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x9C8E416c84A24ed17A5F1Bb47fA698Aa3cE540aC",
            "BLnSgf6tJtvq765bj8Riq2kzeQTwHBUcwrWLXFC0EkZ61rHqIam9AOvAJmOwok+mzqp5biSESrK7Qi/4YOwMSSo=",
            "fDiVJhMMBLnARhj509UP1oHCfk1WW86nL15h8mUPj8I=",
        ),
    ),
    # m/44'/60'/0'/0/386
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xdE03af24aaa138Fa2D034C2F7A0462c4Af5bfBAd",
            "0x299f90af0008c49755e2cd61015142b638f0abc0172877e33f37de0d1aa2fa517409ebe6fa8bff7351d8d3aa2c53ca8bec6ce4c0dbd6cb4ab25f039f9aa7e54e",
            "d11b7fb37c4e08c79e37d8bd8a070ed4446a47d5df5f04bcca67b8dad4ec225c",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xdE03af24aaa138Fa2D034C2F7A0462c4Af5bfBAd",
            "BCmfkK8ACMSXVeLNYQFRQrY48KvAFyh34z833g0aovpRdAnr5vqL/3NR2NOqLFPKi+xs5MDb1stKsl8Dn5qn5U4=",
            "0Rt/s3xOCMeeN9i9igcO1ERqR9XfXwS8yme42tTsIlw=",
        ),
    ),
    # m/44'/60'/0'/0/387
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x8DD3496a5B0d757FfC7aE514E134D4Bc3FEaC60C",
            "0xa96216ed902b1c94a8f02348963da22e477ffb2621d74983f4205aac1cdb4a59e84c58372fd21a4fab579513d4c3f02b2c402adfb2b41b9eb2586648eb37c02e",
            "d1d51fe20d2023c5503829fe84dbb66c5aa8929e0add85f389784d6229255621",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x8DD3496a5B0d757FfC7aE514E134D4Bc3FEaC60C",
            "BKliFu2QKxyUqPAjSJY9oi5Hf/smIddJg/QgWqwc20pZ6ExYNy/SGk+rV5UT1MPwKyxAKt+ytBueslhmSOs3wC4=",
            "0dUf4g0gI8VQOCn+hNu2bFqokp4K3YXziXhNYiklViE=",
        ),
    ),
    # m/44'/60'/0'/0/388
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x43a0E9c785fC4d2152d9dE7AF6BBB373E439026f",
            "0xcef7d296b58c9b2d3392ea4a2d05f57815f14e461d0c70a5114a2d5d62a0f2afdd14c186457ddf95c03e05adb39d68476feaf5027eb85f02c9b32e83aa59b23a",
            "cca52f60d3e8647fdb5ab4f7717bb9b4e28263f47ce4d4b5ba0318f0a2b73726",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x43a0E9c785fC4d2152d9dE7AF6BBB373E439026f",
            "BM730pa1jJstM5LqSi0F9XgV8U5GHQxwpRFKLV1ioPKv3RTBhkV935XAPgWts51oR2/q9QJ+uF8CybMug6pZsjo=",
            "zKUvYNPoZH/bWrT3cXu5tOKCY/R85NS1ugMY8KK3NyY=",
        ),
    ),
    # m/44'/60'/0'/0/389
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x5759624D73334Cd065fFBB6950863D44406D050D",
            "0xb6d08ae60b4e0328bcacb454752beda66d9ca02a05511d679bd695a80d043563e7d5ff22064cd14a62e1c4b50c40e92c6411e096f7ba006cdee9d6d7cc725794",
            "8d30008ecb45d9de11228f9cc34eb97f11bfadf2889fd4b0ed27e60354836a5b",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x5759624D73334Cd065fFBB6950863D44406D050D",
            "BLbQiuYLTgMovKy0VHUr7aZtnKAqBVEdZ5vWlagNBDVj59X/IgZM0Upi4cS1DEDpLGQR4Jb3ugBs3unW18xyV5Q=",
            "jTAAjstF2d4RIo+cw065fxG/rfKIn9Sw7SfmA1SDals=",
        ),
    ),
    # m/44'/60'/0'/0/390
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xfBE2E054C8034d5cb25E41D3dcC8D986682081C7",
            "0x48291d12a3367ecec76058221bc91b33a639f657c4506802481adfd024a375d177fc52f839827e5a1322889da596263848b78d188b9037488063094060267840",
            "ac4bd1e22fe1f51a0b2c7ca2f6970c7029b3f7117dea4d10ec9a5d86a8a6c964",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xfBE2E054C8034d5cb25E41D3dcC8D986682081C7",
            "BEgpHRKjNn7Ox2BYIhvJGzOmOfZXxFBoAkga39Ako3XRd/xS+DmCfloTIoidpZYmOEi3jRiLkDdIgGMJQGAmeEA=",
            "rEvR4i/h9RoLLHyi9pcMcCmz9xF96k0Q7JpdhqimyWQ=",
        ),
    ),
    # m/44'/60'/0'/0/391
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x165db67D13297C34C7241a8bc8844Ae9eAd70e64",
            "0xda49439a0902befb34d10682abf0059209bf339ace030a1dc726007c04ca8907f4a3b4015c133f71d26baae084d5c3cf0b459863291fa39b557b7ac0ad5ccdf8",
            "cd646094354e8219ab41297eceab4782d4297593183deeaec207fb15fc871ba0",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x165db67D13297C34C7241a8bc8844Ae9eAd70e64",
            "BNpJQ5oJAr77NNEGgqvwBZIJvzOazgMKHccmAHwEyokH9KO0AVwTP3HSa6rghNXDzwtFmGMpH6ObVXt6wK1czfg=",
            "zWRglDVOghmrQSl+zqtHgtQpdZMYPe6uwgf7FfyHG6A=",
        ),
    ),
    # m/44'/60'/0'/0/392
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xb790A2e10F76e8bED568c2fB294120e3b6B94344",
            "0xac9aaedb1fe44d72ae66a5854735b71bcacfc1bdc1bf1c4b4a2ad5476cf200089bce02429cbebff17471c227c7365dd9887b1152bee7f8abfa351115a5fdcb15",
            "e5bce7ff05b49c228704d0cd78e52ad4e55bdf8996957022150d6f9db553e863",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xb790A2e10F76e8bED568c2fB294120e3b6B94344",
            "BKyartsf5E1yrmalhUc1txvKz8G9wb8cS0oq1Uds8gAIm84CQpy+v/F0ccInxzZd2Yh7EVK+5/ir+jURFaX9yxU=",
            "5bzn/wW0nCKHBNDNeOUq1OVb34mWlXAiFQ1vnbVT6GM=",
        ),
    ),
    # m/44'/60'/0'/0/393
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x124dA20F7D39E18c19B54659eEA9808A8fa99249",
            "0x62d1a7b856c976b13991c72d056e621cd56a4e334ecdddce21c71dc2fe5df3f030e275cc46cdcae44a60d7c96ad4c44bfefdd964b54d6146db3ac0d27eef89a4",
            "471ea036aaaaba8d97a3f93603077537dd8b895a726c3eb0b38f5e432434be76",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x124dA20F7D39E18c19B54659eEA9808A8fa99249",
            "BGLRp7hWyXaxOZHHLQVuYhzVak4zTs3dziHHHcL+XfPwMOJ1zEbNyuRKYNfJatTES/792WS1TWFG2zrA0n7viaQ=",
            "Rx6gNqqquo2Xo/k2Awd1N92LiVpybD6ws49eQyQ0vnY=",
        ),
    ),
    # m/44'/60'/0'/0/394
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xA155B7DFFaa06bF25bb928dcCfBf74aA86487e3C",
            "0xcc9eb82185485ca008ec15a2fd1a3826d2e4308f921d312ae537d969130db83e439ed57c7338a1019275dc4bfc67ca134fce10cf462e0112596f131ea4f29f3b",
            "c7c4db1d5b8380ac87282423a261443974025c1b58b1f6431e4e159cab28f73d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xA155B7DFFaa06bF25bb928dcCfBf74aA86487e3C",
            "BMyeuCGFSFygCOwVov0aOCbS5DCPkh0xKuU32WkTDbg+Q57VfHM4oQGSddxL/GfKE0/OEM9GLgESWW8THqTynzs=",
            "x8TbHVuDgKyHKCQjomFEOXQCXBtYsfZDHk4VnKso9z0=",
        ),
    ),
    # m/44'/60'/0'/0/395
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x030F47137766381723983EE340538f20695995FD",
            "0x7518f160149697be0d99d605d265d18f65059de4258cd96fccaf1914f350913fdd6b2265284e86fcd7c242c20d59db2aa3dd2407176a9a72747c0ba1b18d9218",
            "f3258c1f98bf7c11f3b4f31978305ae6e4c46689c6901159d763aa8fa9f04250",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x030F47137766381723983EE340538f20695995FD",
            "BHUY8WAUlpe+DZnWBdJl0Y9lBZ3kJYzZb8yvGRTzUJE/3WsiZShOhvzXwkLCDVnbKqPdJAcXappydHwLobGNkhg=",
            "8yWMH5i/fBHztPMZeDBa5uTEZonGkBFZ12Oqj6nwQlA=",
        ),
    ),
    # m/44'/60'/0'/0/396
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xCAE156602EbE14ffd2EA966dE1cB45A810C22444",
            "0x21aa30aa0df59e89947f9c9150e0cea1ef7598041acaa5d4bde7c5ca58497a0e65c066006891e177aef3d75c0301b3538addeebc819a5162d45f7ee2b8a51c0b",
            "a7863b141b9a735d450440720de6c61403eff18166982e5b400c24b0aae2f077",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xCAE156602EbE14ffd2EA966dE1cB45A810C22444",
            "BCGqMKoN9Z6JlH+ckVDgzqHvdZgEGsql1L3nxcpYSXoOZcBmAGiR4Xeu89dcAwGzU4rd7ryBmlFi1F9+4rilHAs=",
            "p4Y7FBuac11FBEByDebGFAPv8YFmmC5bQAwksKri8Hc=",
        ),
    ),
    # m/44'/60'/0'/0/397
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x336d815fbF169F70a33C4f52b70B97dA04423f34",
            "0x6bdad594ca7cb5e94000eec6a07073cd1e84ca85521bc696d190ce88e861cb3ffe15af57b2a7ee5950da2387ddb15ad34c70be6270e2dc2be861a4be50d99b13",
            "2531d7b342762447ef44b5798c27419b21c12bee8676ef3b5eca2be926618568",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x336d815fbF169F70a33C4f52b70B97dA04423f34",
            "BGva1ZTKfLXpQADuxqBwc80ehMqFUhvGltGQzojoYcs//hWvV7Kn7llQ2iOH3bFa00xwvmJw4twr6GGkvlDZmxM=",
            "JTHXs0J2JEfvRLV5jCdBmyHBK+6Gdu87Xsor6SZhhWg=",
        ),
    ),
    # m/44'/60'/0'/0/398
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x13f3B68f1dE1C3acd9349E75f0690636B8a780E8",
            "0x2be268dbe38a46b46ef2fa7b72d5738bdf82833a6a2e878a5d941d4d549ad212fe9c90082985f2e87fdedd8b8ba12a6d6f3029c84abb68f6095717697cbb9fbc",
            "cbd7df79a591aee1ed3f43db89d305c51811609c58c842d3b77022827bf6f70d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x13f3B68f1dE1C3acd9349E75f0690636B8a780E8",
            "BCviaNvjika0bvL6e3LVc4vfgoM6ai6Hil2UHU1UmtIS/pyQCCmF8uh/3t2Li6EqbW8wKchKu2j2CVcXaXy7n7w=",
            "y9ffeaWRruHtP0PbidMFxRgRYJxYyELTt3Aignv29w0=",
        ),
    ),
    # m/44'/60'/0'/0/399
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x5e580A961E9C9Cb34e797a174A8742C8791f3Db7",
            "0xd3f42b73bc3f47a2a05f3e9918026068c53b9e404fc3efeaaed2105649906f16d6c336ba9eb34c253e8e94255b34046d45c3891454ee065c80d408bc126b8173",
            "120ee66c084d38fd5b8bf0a73813b088422c4f149e31b48a165ebd9758dcc263",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x5e580A961E9C9Cb34e797a174A8742C8791f3Db7",
            "BNP0K3O8P0eioF8+mRgCYGjFO55AT8Pv6q7SEFZJkG8W1sM2up6zTCU+jpQlWzQEbUXDiRRU7gZcgNQIvBJrgXM=",
            "Eg7mbAhNOP1bi/CnOBOwiEIsTxSeMbSKFl69l1jcwmM=",
        ),
    ),
    # m/44'/60'/0'/0/400
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x718F1Df449C6Fce4c21C21C2A0AdC3Fb68f377c8",
            "0xee28701098cc868ff3d10d100465a5854e9c18a922f417b6524a6e527319cde6f4368b9512c73b45232909e200b053b71151a449cfefd9a6dd42727b02ba0a32",
            "7fc8f22609fe40f840aad259793d95e8fed5f6b490482c948f61f85053b355a5",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x718F1Df449C6Fce4c21C21C2A0AdC3Fb68f377c8",
            "BO4ocBCYzIaP89ENEARlpYVOnBipIvQXtlJKblJzGc3m9DaLlRLHO0UjKQniALBTtxFRpEnP79mm3UJyewK6CjI=",
            "f8jyJgn+QPhAqtJZeT2V6P7V9rSQSCyUj2H4UFOzVaU=",
        ),
    ),
    # m/44'/60'/0'/0/401
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xA40CbA879e97B542Dfec43e728241dF1F84caE2a",
            "0xb68b3bdc72f263fcebe6d0b41d37e1c2bd87f5507be4c8012eb06080b9e7e5a3eaf98c5dde81135c02a06ce37dd25759643f6a6fe98f9da42d4109aaa2598b0f",
            "e38e51f65035b62d6bc9577df73a473f89eb20ce0d2b0c51ca5a152302315660",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xA40CbA879e97B542Dfec43e728241dF1F84caE2a",
            "BLaLO9xy8mP86+bQtB034cK9h/VQe+TIAS6wYIC55+Wj6vmMXd6BE1wCoGzjfdJXWWQ/am/pj52kLUEJqqJZiw8=",
            "445R9lA1ti1ryVd99zpHP4nrIM4NKwxRyloVIwIxVmA=",
        ),
    ),
    # m/44'/60'/0'/0/402
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xD0919D4942Ed9752344Dea6b88cC667665c3DfA9",
            "0xd649676146f54d63a94b1b1a7008625bcfa13c3058151e161f3401c23433d8445c4bfc23a967ae3b22d42c4c3d4413083f561c41e1ebb84ecc04857488042288",
            "f27f81925880f5f35fc276fda82b957c9f276bdd065daf9ee25acac1239257cd",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xD0919D4942Ed9752344Dea6b88cC667665c3DfA9",
            "BNZJZ2FG9U1jqUsbGnAIYlvPoTwwWBUeFh80AcI0M9hEXEv8I6lnrjsi1CxMPUQTCD9WHEHh67hOzASFdIgEIog=",
            "8n+BkliA9fNfwnb9qCuVfJ8na90GXa+e4lrKwSOSV80=",
        ),
    ),
    # m/44'/60'/0'/0/403
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xD3e5Aa673f0CeB8de6385B1a21Aef33BB4E62753",
            "0xf142e5f9d8d49b47dfb6ff907955698920e1da29f21e454705c7c51a1b5ac89a6be88587902b1ca8cdae40033539130177b584544b2efe4e0a814903b478d716",
            "874809bc1762f2267d8f157e190ead72cc70ac89ec561d9c1bf5bdb83b31c60a",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xD3e5Aa673f0CeB8de6385B1a21Aef33BB4E62753",
            "BPFC5fnY1JtH37b/kHlVaYkg4dop8h5FRwXHxRobWsiaa+iFh5ArHKjNrkADNTkTAXe1hFRLLv5OCoFJA7R41xY=",
            "h0gJvBdi8iZ9jxV+GQ6tcsxwrInsVh2cG/W9uDsxxgo=",
        ),
    ),
    # m/44'/60'/0'/0/404
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xfb884a26002B3E07c9798F58821144048A6b25eC",
            "0xc53b565566d9f83d1411f9acb4cdc418e0f14b065879291fef07f79f08d5740e0779deef8451dbf38c42d356ac9a1a81148247ca7c957eb8cd2965f7d1b23f20",
            "f49621e064e42ec64d3fe31819b654d8853a8fbf81351efeb6cba7d10f70856b",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xfb884a26002B3E07c9798F58821144048A6b25eC",
            "BMU7VlVm2fg9FBH5rLTNxBjg8UsGWHkpH+8H958I1XQOB3ne74RR2/OMQtNWrJoagRSCR8p8lX64zSll99GyPyA=",
            "9JYh4GTkLsZNP+MYGbZU2IU6j7+BNR7+tsun0Q9whWs=",
        ),
    ),
    # m/44'/60'/0'/0/405
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x4169BA2c89e4D7cA2c8980cF6c46BCDB54015a3a",
            "0x731667bc4f85b8dce47b90da82481670033f32e9b015d7a7da07a530106be0d98c13ee3cedbdf25faf15cfff1c68945b6c669d8e53ad5a7ff40415635cdb0dca",
            "50fedbcf5bbe0701659d1187388ba65d7deec3e80105e42434f146187f0a9f45",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x4169BA2c89e4D7cA2c8980cF6c46BCDB54015a3a",
            "BHMWZ7xPhbjc5HuQ2oJIFnADPzLpsBXXp9oHpTAQa+DZjBPuPO298l+vFc//HGiUW2xmnY5TrVp/9AQVY1zbDco=",
            "UP7bz1u+BwFlnRGHOIumXX3uw+gBBeQkNPFGGH8Kn0U=",
        ),
    ),
    # m/44'/60'/0'/0/406
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xF1D6452414b86f34163b98485709e946E18294e1",
            "0x1fcf7f7ae1247c2ecf99dbccba6614d5c4b917efd9bcb50277cff74e018cdc8742ea3d2d8d1d2b27cf775d848aa86c49442fe9236c547feee6817c987e63b724",
            "e194ef95f97ddc9aa1056cfe66e5f0aa60f080d2ea45cebf373975385520a9b5",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xF1D6452414b86f34163b98485709e946E18294e1",
            "BB/Pf3rhJHwuz5nbzLpmFNXEuRfv2by1AnfP904BjNyHQuo9LY0dKyfPd12EiqhsSUQv6SNsVH/u5oF8mH5jtyQ=",
            "4ZTvlfl93JqhBWz+ZuXwqmDwgNLqRc6/Nzl1OFUgqbU=",
        ),
    ),
    # m/44'/60'/0'/0/407
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x5fd81E5c8501D5DEB54F922f6B69c9244Df68b82",
            "0x08af46f08129592573270bc9fb3e618983c7afe7668422e43ed6416a9534fa125dc39f04f9dde3a3e4ba0ccff0b0fb473b2048cab3d967fa8dfc712f6aea5c55",
            "5c9a140878cab7abcd0f6783e2c3744572e2918a9d6228bd7356cf9662000038",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x5fd81E5c8501D5DEB54F922f6B69c9244Df68b82",
            "BAivRvCBKVklcycLyfs+YYmDx6/nZoQi5D7WQWqVNPoSXcOfBPnd46PkugzP8LD7RzsgSMqz2Wf6jfxxL2rqXFU=",
            "XJoUCHjKt6vND2eD4sN0RXLikYqdYii9c1bPlmIAADg=",
        ),
    ),
    # m/44'/60'/0'/0/408
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x1A6170d97b733E69AA9f8B3F12C19c1B7d825325",
            "0x0b25885d4a15b9e0a09f1d434129899b3f39f75706015437d922146bca41309a5a1fd014c657551623226b8e4113ceee57f6a5a03bea00a5e5ae1ddc1ac86b92",
            "7d2df04643b5baf557906148b38b9b222421bbfb712923c91fbba96a40226304",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x1A6170d97b733E69AA9f8B3F12C19c1B7d825325",
            "BAsliF1KFbngoJ8dQ0EpiZs/OfdXBgFUN9kiFGvKQTCaWh/QFMZXVRYjImuOQRPO7lf2paA76gCl5a4d3BrIa5I=",
            "fS3wRkO1uvVXkGFIs4ubIiQhu/txKSPJH7upakAiYwQ=",
        ),
    ),
    # m/44'/60'/0'/0/409
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xF22da2ea599390BA582eAf047A7Cf880905Ef89D",
            "0x732250b9e8e8ab9c9a971a6c37dc4d918e9b2f14da7486e53c4c16a7dccccd83d4663350468aad788fb1d21898740e21fe5c4890e5d2fbc5d98cbf38c0679366",
            "4a004780efa7b23233d6ae32498a4492c95ac6ce447a5e045fd0bc1360e6c14b",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xF22da2ea599390BA582eAf047A7Cf880905Ef89D",
            "BHMiULno6KucmpcabDfcTZGOmy8U2nSG5TxMFqfczM2D1GYzUEaKrXiPsdIYmHQOIf5cSJDl0vvF2Yy/OMBnk2Y=",
            "SgBHgO+nsjIz1q4ySYpEkslaxs5Eel4EX9C8E2DmwUs=",
        ),
    ),
    # m/44'/60'/0'/0/410
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x7171d7ed770e8AE726d2BB6CE028305f42BFDa32",
            "0x957d7eb130c2ac8fb4bc5707249f0441e2cf53d7c6af2d8b373d42ea75ee1a9d4f94ed279cb22cf148545491ad512a1dd7ab131d2ae1378a031129be05dbc069",
            "616bb92766767f501a7d0b47824b1b2489de6ba6ed3061117da69e1254382b78",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x7171d7ed770e8AE726d2BB6CE028305f42BFDa32",
            "BJV9frEwwqyPtLxXBySfBEHiz1PXxq8tizc9Qup17hqdT5TtJ5yyLPFIVFSRrVEqHderEx0q4TeKAxEpvgXbwGk=",
            "YWu5J2Z2f1AafQtHgksbJInea6btMGERfaaeElQ4K3g=",
        ),
    ),
    # m/44'/60'/0'/0/411
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xF0a47bdAa80308EE5123d6CCa041fEc0bA192424",
            "0x6344aedc8eb1b9775f764f3560ec666994382f11b518025bec147b5034c498444f335ccc2d97f9d205af0b317a1b836375a9fd6209c3840fa1afc2c283e6050c",
            "b884aba7d3b140d1c375e49aff430fd4d66a163653e1b603bc1e1bf5a9649ff6",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xF0a47bdAa80308EE5123d6CCa041fEc0bA192424",
            "BGNErtyOsbl3X3ZPNWDsZmmUOC8RtRgCW+wUe1A0xJhETzNczC2X+dIFrwsxehuDY3Wp/WIJw4QPoa/CwoPmBQw=",
            "uISrp9OxQNHDdeSa/0MP1NZqFjZT4bYDvB4b9alkn/Y=",
        ),
    ),
    # m/44'/60'/0'/0/412
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x48e2b02d5b37628520E926697205f128F962Ddf4",
            "0x88d1673c2b6663ff6f8a5b4ca0711655b63dbb8410526b00735641fbc4b814596ef4116b0aab71901b0e24cacf58980eb7804252969130d972db54da55650531",
            "8b2cba1e6382faa24aab3160a17088a16aba78aaf19c6e59fe09e0e1f70eaa3d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x48e2b02d5b37628520E926697205f128F962Ddf4",
            "BIjRZzwrZmP/b4pbTKBxFlW2PbuEEFJrAHNWQfvEuBRZbvQRawqrcZAbDiTKz1iYDreAQlKWkTDZcttU2lVlBTE=",
            "iyy6HmOC+qJKqzFgoXCIoWq6eKrxnG5Z/gng4fcOqj0=",
        ),
    ),
    # m/44'/60'/0'/0/413
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x3abC048809da6D8c99adD496E9CbAB3117B22d24",
            "0x0a4e9e72c493d650a4a6cf03f271f83c7134c0b0af897a0a5b91c48323bcc82eb05e4c352d8c1c58fec7e1fa0cf45432aec990d1ded4da38ed1d8dc60fe90721",
            "606110dad1c6308689a4400aea37c2693240cd8bac39b1bcb2e100249c9017ef",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x3abC048809da6D8c99adD496E9CbAB3117B22d24",
            "BApOnnLEk9ZQpKbPA/Jx+DxxNMCwr4l6CluRxIMjvMgusF5MNS2MHFj+x+H6DPRUMq7JkNHe1No47R2Nxg/pByE=",
            "YGEQ2tHGMIaJpEAK6jfCaTJAzYusObG8suEAJJyQF+8=",
        ),
    ),
    # m/44'/60'/0'/0/414
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x2431c1275D18b9BB2729186328D33Cc663F3712e",
            "0x7ad1db2a92f6ce1a59c2a327b6eb064c559421d6c0371f21bfe8363332cf7b343c5b22faf7bbfdf0137aa675b43c3aa3b7c4cadaf9a71946dbc401df643bfaa3",
            "bb250de506b64d6a51334aab88399a97787695bbf03494765e1e6b7683ab5e78",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x2431c1275D18b9BB2729186328D33Cc663F3712e",
            "BHrR2yqS9s4aWcKjJ7brBkxVlCHWwDcfIb/oNjMyz3s0PFsi+ve7/fATeqZ1tDw6o7fEytr5pxlG28QB32Q7+qM=",
            "uyUN5Qa2TWpRM0qriDmal3h2lbvwNJR2Xh5rdoOrXng=",
        ),
    ),
    # m/44'/60'/0'/0/415
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x36eCbF336489FE325a78c093af6aAbea0EF7b39f",
            "0x93448589df2fdb4dbd12f7e4ad63943907cd3fc1f3e358874fb741e0b7159a9b117833ed90572ff8ec42630012d72a9994e30d4edb91cad07847230b2003eac6",
            "c932d6baedb7c5291b0adcfcbc11a39f8679d30b0b5ff5e3f1e87d6a66e0d9bd",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x36eCbF336489FE325a78c093af6aAbea0EF7b39f",
            "BJNEhYnfL9tNvRL35K1jlDkHzT/B8+NYh0+3QeC3FZqbEXgz7ZBXL/jsQmMAEtcqmZTjDU7bkcrQeEcjCyAD6sY=",
            "yTLWuu23xSkbCtz8vBGjn4Z50wsLX/Xj8eh9ambg2b0=",
        ),
    ),
    # m/44'/60'/0'/0/416
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xa2bfb949A5ce329aa6c5cB4c69aD600665713f9a",
            "0xe9e5d47272ec5623c1e24583f56eb3c8a853206bd3d6e180ed6bc4d18c54acc1d7ba643e2325425b4b2946911dc0fd4090d4a59173071e2ca3e73950aa70a3ff",
            "9bb023f920a685d7804c80dbe88572370bf063294b8c7a590286e982d4ea69cd",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xa2bfb949A5ce329aa6c5cB4c69aD600665713f9a",
            "BOnl1HJy7FYjweJFg/Vus8ioUyBr09bhgO1rxNGMVKzB17pkPiMlQltLKUaRHcD9QJDUpZFzBx4so+c5UKpwo/8=",
            "m7Aj+SCmhdeATIDb6IVyNwvwYylLjHpZAobpgtTqac0=",
        ),
    ),
    # m/44'/60'/0'/0/417
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xdA4475ec722e8FB77795bC46AEba46291Cd777d8",
            "0x6b8f2ce3e5710b3279d03a9d4a6f62eba688f0a5492eacb7e70a0f415e5e76e0f17f3eca1b9766afafd27c4c3d36ec0c4fba4bae294c9da2888e4fa3b6f9dbb2",
            "633a430a53d80f3d678e53266f9120908f6346333213e4b257ab35682a284579",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xdA4475ec722e8FB77795bC46AEba46291Cd777d8",
            "BGuPLOPlcQsyedA6nUpvYuumiPClSS6st+cKD0FeXnbg8X8+yhuXZq+v0nxMPTbsDE+6S64pTJ2iiI5Po7b527I=",
            "YzpDClPYDz1njlMmb5EgkI9jRjMyE+SyV6s1aCooRXk=",
        ),
    ),
    # m/44'/60'/0'/0/418
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xEfB3B36Fec702ad5782461f731934d4a5C4761F6",
            "0xe79f8718adff4da3df0d41cd7c56cd8c8a5745706aff480dd4d2e54fb3b07426f49d8af7a23ea4b4f182ea4cc1d3795103a7c5d44441c5417dd18e78030ed625",
            "901a41d7a85932052cb5266587021cb669bdd4d23293e49c68782864c50bfebb",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xEfB3B36Fec702ad5782461f731934d4a5C4761F6",
            "BOefhxit/02j3w1BzXxWzYyKV0Vwav9IDdTS5U+zsHQm9J2K96I+pLTxgupMwdN5UQOnxdREQcVBfdGOeAMO1iU=",
            "kBpB16hZMgUstSZlhwIctmm91NIyk+ScaHgoZMUL/rs=",
        ),
    ),
    # m/44'/60'/0'/0/419
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x0767baFB691A860D0643b6B36433A779BEF19F2C",
            "0xaa85f9ac53db0f6dacd3d5a19c0d64b693d7dacddbba09536d9655b9410a1672af4fb6344b7dcc7f4e285764c791442a774cd5a3dcf9d2b26553292777cc24dd",
            "ffe3235de1b8e9149178096c5fafc838d8644b71b2342dddc29d4bd05384bc77",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x0767baFB691A860D0643b6B36433A779BEF19F2C",
            "BKqF+axT2w9trNPVoZwNZLaT19rN27oJU22WVblBChZyr0+2NEt9zH9OKFdkx5FEKndM1aPc+dKyZVMpJ3fMJN0=",
            "/+MjXeG46RSReAlsX6/IONhkS3GyNC3dwp1L0FOEvHc=",
        ),
    ),
    # m/44'/60'/0'/0/420
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x068BE76Cba419949ac56C3000Fd168A471BBcFF8",
            "0x4862969b1a5571b81ef90b5cbd6269018462e7fe25c358c6c7c999a77009b7431c30575df5dd820fbd4648883877795ec3e20988484ca4d80b73080627ec10fd",
            "08c41611939960e770cd3da972cd963bf7006a22eeb71b8625a93f76101b43f7",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x068BE76Cba419949ac56C3000Fd168A471BBcFF8",
            "BEhilpsaVXG4HvkLXL1iaQGEYuf+JcNYxsfJmadwCbdDHDBXXfXdgg+9RkiIOHd5XsPiCYhITKTYC3MIBifsEP0=",
            "CMQWEZOZYOdwzT2pcs2WO/cAaiLutxuGJak/dhAbQ/c=",
        ),
    ),
    # m/44'/60'/0'/0/421
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x857b07ba16bDd2BC30aa2d7c4F9b50437Ecb263C",
            "0xa281719533fc9e1e85f6d2199bd12ebbdacd9965f8ca11985f055aa47a147f790b18f9898dba028e2158aee9a7955fd3ce1b41ba37cac576dd215500d9a4c48c",
            "97fbe41c6f11e83a8ec28c4d2de3f155fd17585d7a7826deb87d1bd947840fc5",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x857b07ba16bDd2BC30aa2d7c4F9b50437Ecb263C",
            "BKKBcZUz/J4ehfbSGZvRLrvazZll+MoRmF8FWqR6FH95Cxj5iY26Ao4hWK7pp5Vf084bQbo3ysV23SFVANmkxIw=",
            "l/vkHG8R6DqOwoxNLePxVf0XWF16eCbeuH0b2UeED8U=",
        ),
    ),
    # m/44'/60'/0'/0/422
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x57Df5c865a3d3957cDA4a856996943d541184055",
            "0xe078065ff7422de5c368a0432eac33c8967435de7a86e3e93929fb6dfb8cfdc663a457e8ae948e695327478141b790ebd91359ad3f057ef760ca80ef68831de0",
            "140b8c4211da787b8b79963d3eb2f4f5e52a59d2f68279893cb0b8389a0b7011",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x57Df5c865a3d3957cDA4a856996943d541184055",
            "BOB4Bl/3Qi3lw2igQy6sM8iWdDXeeobj6Tkp+237jP3GY6RX6K6UjmlTJ0eBQbeQ69kTWa0/BX73YMqA72iDHeA=",
            "FAuMQhHaeHuLeZY9PrL09eUqWdL2gnmJPLC4OJoLcBE=",
        ),
    ),
    # m/44'/60'/0'/0/423
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x2fDd4cEC481857666e70B5eB8324af615166b297",
            "0x44defecda156480222e1df55957855319362768e98a6417cd8e176a28b045760ceed917ad309329662c8dfcdd72aac244bb50c1e9b6475a46ab0d486ea3aade2",
            "be370d200e38d082e6ddfaea3b855a057aee2952124edc0240f5b89dea8470f8",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x2fDd4cEC481857666e70B5eB8324af615166b297",
            "BETe/s2hVkgCIuHfVZV4VTGTYnaOmKZBfNjhdqKLBFdgzu2RetMJMpZiyN/N1yqsJEu1DB6bZHWkarDUhuo6reI=",
            "vjcNIA440ILm3frqO4VaBXruKVISTtwCQPW4neqEcPg=",
        ),
    ),
    # m/44'/60'/0'/0/424
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x5AF2874c21e6ef3A5550f43540289169B5dB6e78",
            "0xd200a12baacde889614e3e8742be0f798092081eca3bd7a9d096996e0931e3f79787f6273f35ba45066cdbc1f46705ff2b33b20c8d74906c78f4c45b9695b5a7",
            "694079d868c0d4d8c5903ca7f11bc2b5c2111fbce89f0306c04e7fae07f6435d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x5AF2874c21e6ef3A5550f43540289169B5dB6e78",
            "BNIAoSuqzeiJYU4+h0K+D3mAkggeyjvXqdCWmW4JMeP3l4f2Jz81ukUGbNvB9GcF/yszsgyNdJBsePTEW5aVtac=",
            "aUB52GjA1NjFkDyn8RvCtcIRH7zonwMGwE5/rgf2Q10=",
        ),
    ),
    # m/44'/60'/0'/0/425
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x1259c7eD8cF3A9bc3B70e965422f7ccBb375F7Bb",
            "0x3ad4491c6d5379e8e67bbf91624612ab3546e42707a469bdc18a8b2dce7a322ee19b262632a06b17b84749628eeaafa74098970674d70a1410721271e3a017fc",
            "b657e2b59d6ace88b321c890d1e6130cb09b5415a120183448f26816fdff18dc",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x1259c7eD8cF3A9bc3B70e965422f7ccBb375F7Bb",
            "BDrUSRxtU3no5nu/kWJGEqs1RuQnB6RpvcGKiy3OejIu4ZsmJjKgaxe4R0lijuqvp0CYlwZ01woUEHISceOgF/w=",
            "tlfitZ1qzoizIciQ0eYTDLCbVBWhIBg0SPJoFv3/GNw=",
        ),
    ),
    # m/44'/60'/0'/0/426
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xC987d253712D9B7c999674647f2cCBBE23315F58",
            "0x1a01e93465dd54f3085e8a29397e932e902bf9994bee03370c764dd18d7994861a9618b9e961bdd8223275036ce3bbb5f368f1069c815c9f05441df11869d42b",
            "27fea57c4c183bb7eb8f3536d66a2b8961bb618bff03f42e18c2d57d2e07b047",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xC987d253712D9B7c999674647f2cCBBE23315F58",
            "BBoB6TRl3VTzCF6KKTl+ky6QK/mZS+4DNwx2TdGNeZSGGpYYuelhvdgiMnUDbOO7tfNo8QacgVyfBUQd8Rhp1Cs=",
            "J/6lfEwYO7frjzU21moriWG7YYv/A/QuGMLVfS4HsEc=",
        ),
    ),
    # m/44'/60'/0'/0/427
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xeb9f815EF8bA594DF46947501d91c286690EC8D4",
            "0x74a64529f8c27e6330b2c3abb2ffffda7fd08e4e39f3bddb8b7368810716a5dc8f56ea62bbd565362db48adde11910a7102cca9e5e246a61e0c4f8852fa1a500",
            "4d523e17532f0503c0470fbf4ec5dcad08b0f404e44b8f95b1842706a2937390",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xeb9f815EF8bA594DF46947501d91c286690EC8D4",
            "BHSmRSn4wn5jMLLDq7L//9p/0I5OOfO924tzaIEHFqXcj1bqYrvVZTYttIrd4RkQpxAsyp5eJGph4MT4hS+hpQA=",
            "TVI+F1MvBQPARw+/TsXcrQiw9ATkS4+VsYQnBqKTc5A=",
        ),
    ),
    # m/44'/60'/0'/0/428
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x7492778A6Eb4173EdD5aeF6c7ec01aDdfEcFF8c3",
            "0x462496e0aaff690fca4f502fbdcbab199b65b5f50d29863d024d514b4be2dd78ab545a686c1e4381478d873ed2a4a82def551f9fdc69c22bc46abd94e90f7730",
            "48a02ffee0525c5700499c970d8e9d4f0ef7aebb9cfde79ada1620e4ff2c8924",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x7492778A6Eb4173EdD5aeF6c7ec01aDdfEcFF8c3",
            "BEYkluCq/2kPyk9QL73LqxmbZbX1DSmGPQJNUUtL4t14q1RaaGweQ4FHjYc+0qSoLe9VH5/cacIrxGq9lOkPdzA=",
            "SKAv/uBSXFcASZyXDY6dTw73rruc/eea2hYg5P8siSQ=",
        ),
    ),
    # m/44'/60'/0'/0/429
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x6fd4817eeaa2b3e466CF011fb980Bc0F99dAc0e8",
            "0x54007fe321d88e4d0ffaa8e32402165e63ba19601be1e287adcf781c6d8a791ea27abca598cece044cb4e047688cb8361c2a9b36601cb12158c10468111335c1",
            "778a61b43f572610fb1cdef97512dbb530f1813a1f35afbcfe70cc614a5813d1",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x6fd4817eeaa2b3e466CF011fb980Bc0F99dAc0e8",
            "BFQAf+Mh2I5ND/qo4yQCFl5juhlgG+Hih63PeBxtinkeonq8pZjOzgRMtOBHaIy4NhwqmzZgHLEhWMEEaBETNcE=",
            "d4phtD9XJhD7HN75dRLbtTDxgTofNa+8/nDMYUpYE9E=",
        ),
    ),
    # m/44'/60'/0'/0/430
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x84285607B42A6738a03729B43786127C84824164",
            "0x3f042b47ae4d908d3f96c600508ecc9b722966463825d14e7a430d0c30db53516866e3c09faf720e47baf8ee28876eae6e4b3894498942ef0bd77cd354334af0",
            "ff8ee2a7350aadfd2012d277395bd5ea2fbb83fc0c05fe59c917c6504bc891ee",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x84285607B42A6738a03729B43786127C84824164",
            "BD8EK0euTZCNP5bGAFCOzJtyKWZGOCXRTnpDDQww21NRaGbjwJ+vcg5HuvjuKIdurm5LOJRJiULvC9d801QzSvA=",
            "/47ipzUKrf0gEtJ3OVvV6i+7g/wMBf5ZyRfGUEvIke4=",
        ),
    ),
    # m/44'/60'/0'/0/431
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x558c1bF6267f5e1Be2AfF8BC7B91b9923C8303FA",
            "0x435f56d0989b62c91931c3752c3d37100d82edbc2dcd9edd8150ba85b6d6fc16eb2d8596c09902211dcb6e1dc781092c0010ada5f11f6f26baa9deb78a4bb105",
            "9ac3bbeb2dc8caa966a3eb22270705d39ebad2e7e2b530a5c59c851ec300f9f8",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x558c1bF6267f5e1Be2AfF8BC7B91b9923C8303FA",
            "BENfVtCYm2LJGTHDdSw9NxANgu28Lc2e3YFQuoW21vwW6y2FlsCZAiEdy24dx4EJLAAQraXxH28muqnet4pLsQU=",
            "msO76y3Iyqlmo+siJwcF05660ufitTClxZyFHsMA+fg=",
        ),
    ),
    # m/44'/60'/0'/0/432
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x23888c0b31062e049bD55E05fd5189c128D68574",
            "0xc66fe4191b6e97184122eef21b704936d2778d510013371a23769ad6a96000e91fec7f8ba278033059f58e9cdf23a48219a3ea64ad3920be629b575cb42e81ca",
            "ad488e4007e62fc6824e7f3b5966ffef846fa68b3e15451d1aa523b0af00d2a3",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x23888c0b31062e049bD55E05fd5189c128D68574",
            "BMZv5BkbbpcYQSLu8htwSTbSd41RABM3GiN2mtapYADpH+x/i6J4AzBZ9Y6c3yOkghmj6mStOSC+YptXXLQugco=",
            "rUiOQAfmL8aCTn87WWb/74Rvpos+FUUdGqUjsK8A0qM=",
        ),
    ),
    # m/44'/60'/0'/0/433
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x24B3dB79017e6b473f757523F0D26184f1cE0226",
            "0x63b665b35aac014413d74ccf5400478cfe80c4369be18b19309b0f459ff014f97f8e25221c36944c21b677bc56dcb3945390f5c0f46ee5e98a5fe4a5f515840e",
            "5969025f79215efc5e24324798da1527e0e88c4047b2b39283614d9e5d8aacc2",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x24B3dB79017e6b473f757523F0D26184f1cE0226",
            "BGO2ZbNarAFEE9dMz1QAR4z+gMQ2m+GLGTCbD0Wf8BT5f44lIhw2lEwhtne8VtyzlFOQ9cD0buXpil/kpfUVhA4=",
            "WWkCX3khXvxeJDJHmNoVJ+DojEBHsrOSg2FNnl2KrMI=",
        ),
    ),
    # m/44'/60'/0'/0/434
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xbFB36E2157F60d01AD8e77c296ec7d60bd8F37FA",
            "0x8668ee6fca750e1a05f27c0b874a0906c2dbc14eda5185e721d2c5b88924086894a60f4c9c7c9e3dab6e4f63eb4b37936cd3c4c4949b58a835eb4d6420c856df",
            "96875bb2e5766a802bfea8cf2e8b8074974c97b6cc40ac51302ca8bc5ef9dc53",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xbFB36E2157F60d01AD8e77c296ec7d60bd8F37FA",
            "BIZo7m/KdQ4aBfJ8C4dKCQbC28FO2lGF5yHSxbiJJAholKYPTJx8nj2rbk9j60s3k2zTxMSUm1ioNetNZCDIVt8=",
            "lodbsuV2aoAr/qjPLouAdJdMl7bMQKxRMCyovF753FM=",
        ),
    ),
    # m/44'/60'/0'/0/435
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x79C7cFA11B6B5de8066B3de02c32b7BcECAC89E2",
            "0xff6aa9e6cdff4504165ea9fec24466fb741795d31e35c9c29908164b3a41f3773ed50208a6d4d0f62ca1c394393b2077e155e28b2f10d25d31f80a57b032902f",
            "346da745830524d288cc291e7a2a850a47a2e13e34c652535d215040e9d7e29d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x79C7cFA11B6B5de8066B3de02c32b7BcECAC89E2",
            "BP9qqebN/0UEFl6p/sJEZvt0F5XTHjXJwpkIFks6QfN3PtUCCKbU0PYsocOUOTsgd+FV4osvENJdMfgKV7AykC8=",
            "NG2nRYMFJNKIzCkeeiqFCkei4T40xlJTXSFQQOnX4p0=",
        ),
    ),
    # m/44'/60'/0'/0/436
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x5F511d3aDf5002A8Fe82C33D7168d0DD4d404584",
            "0x9ab050a2eadfbc235720935fb8aee00b7f563bb7c1ea850b5ed4444820c19584f49d9e5cb60989da2ff7e7fd4660ceda197537827ad5a375eb73203be7057dca",
            "e071506e4df59ae2e3ce39f12ea56bc28686ac888d07416957175ce039e4a73b",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x5F511d3aDf5002A8Fe82C33D7168d0DD4d404584",
            "BJqwUKLq37wjVyCTX7iu4At/Vju3weqFC17UREggwZWE9J2eXLYJidov9+f9RmDO2hl1N4J61aN163MgO+cFfco=",
            "4HFQbk31muLjzjnxLqVrwoaGrIiNB0FpVxdc4Dnkpzs=",
        ),
    ),
    # m/44'/60'/0'/0/437
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x0ae17565A149eC7f53f9237Fe20DC24E68271C35",
            "0x4e60c8d8599bf8cab43778122ecb81af4fbbc39cc3d1d182bc90f056b49a667269517d2f3a8ff1b7f3621164492b90c8c8f960b0faed5324c241b042dc3a6e1e",
            "13008b1f7a5ab0ca29d0e77cf96b1e1da195a2d32ac19909d37a5996ec164c24",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x0ae17565A149eC7f53f9237Fe20DC24E68271C35",
            "BE5gyNhZm/jKtDd4Ei7Lga9Pu8Ocw9HRgryQ8Fa0mmZyaVF9LzqP8bfzYhFkSSuQyMj5YLD67VMkwkGwQtw6bh4=",
            "EwCLH3pasMop0Od8+WseHaGVotMqwZkJ03pZluwWTCQ=",
        ),
    ),
    # m/44'/60'/0'/0/438
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x9D3Ac92f00DF8d2C2A6Db4113195745d242DBF3f",
            "0xa610583f2e757f59694fbc31eff19f5fda80287ace0d5fde4c37da5ce0d9669033f8dc2430fbffb697bc803f3487ac2c8623e289f7fd2c0d8a4e6de0acb4b748",
            "e47e7323dbd7ce853153caa62476bc5159f325fb3dd049cb5aabe11c5325049a",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x9D3Ac92f00DF8d2C2A6Db4113195745d242DBF3f",
            "BKYQWD8udX9ZaU+8Me/xn1/agCh6zg1f3kw32lzg2WaQM/jcJDD7/7aXvIA/NIesLIYj4on3/SwNik5t4Ky0t0g=",
            "5H5zI9vXzoUxU8qmJHa8UVnzJfs90EnLWqvhHFMlBJo=",
        ),
    ),
    # m/44'/60'/0'/0/439
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x08512617e568C45cbe602C591503c8b68024C0eD",
            "0xa05d926f14efb3fc2750b9a02fa69e0940b336700005caec9c42e4a8d8f9bc12dd62d069fede6d81b762f15fc6feac9109a223349884b90d3ee4c040c645f01f",
            "2f97b0426073b565c757d486593d8409d0a7dac5d72fa60e82b42e3a2da65c78",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x08512617e568C45cbe602C591503c8b68024C0eD",
            "BKBdkm8U77P8J1C5oC+mnglAszZwAAXK7JxC5KjY+bwS3WLQaf7ebYG3YvFfxv6skQmiIzSYhLkNPuTAQMZF8B8=",
            "L5ewQmBztWXHV9SGWT2ECdCn2sXXL6YOgrQuOi2mXHg=",
        ),
    ),
    # m/44'/60'/0'/0/440
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xf7035510A568A73B74BABE2670415ec1d74fE542",
            "0x58f35075f873a50836470820fb115b99e5d95fa9fe4ddaa0aae31f65af6939dcfb9a82e11b8b6f3c4e757102f7ae57a2b626a71b7277b246f111d87299b4aa7d",
            "373abdd78a2a23281d3822d041ffaa54604e9b11df4248f1376abbc342bdd621",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xf7035510A568A73B74BABE2670415ec1d74fE542",
            "BFjzUHX4c6UINkcIIPsRW5nl2V+p/k3aoKrjH2WvaTnc+5qC4RuLbzxOdXEC965XorYmpxtyd7JG8RHYcpm0qn0=",
            "Nzq914oqIygdOCLQQf+qVGBOmxHfQkjxN2q7w0K91iE=",
        ),
    ),
    # m/44'/60'/0'/0/441
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x03DddDae07CFa6ce5f0c6eF3793Bb6331E152c0b",
            "0x49d20f3697a9956ce6511aa04fdc5346fc3d0e432ba575e998e11396c99f22f91db184df4e926ac4b1647891fdef60da28e2ed6580e0cf9492ca2ebfca253945",
            "e0461eaa51a0a3e7fc1b05bb2ff15a4b89c7506d6ce4418fa253cd9cd4f9c27b",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x03DddDae07CFa6ce5f0c6eF3793Bb6331E152c0b",
            "BEnSDzaXqZVs5lEaoE/cU0b8PQ5DK6V16ZjhE5bJnyL5HbGE306SasSxZHiR/e9g2iji7WWA4M+Uksouv8olOUU=",
            "4EYeqlGgo+f8GwW7L/FaS4nHUG1s5EGPolPNnNT5wns=",
        ),
    ),
    # m/44'/60'/0'/0/442
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x4234704756A3EF118350e7eedDFa3C0DFb92c1e4",
            "0x9c5f2123c2fb02635348a5f21dcc25c8eb7cf3841c6ebe99648889ea8dfbe5aca20be33ca1cb3eebba09c1c5f9b08ec837e786761a634e88ea75c3d11e88cd14",
            "dca80a10c32e6579357f86194165e4c38ab673a9e683db50a5171bee64caffea",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x4234704756A3EF118350e7eedDFa3C0DFb92c1e4",
            "BJxfISPC+wJjU0il8h3MJcjrfPOEHG6+mWSIieqN++WsogvjPKHLPuu6CcHF+bCOyDfnhnYaY06I6nXD0R6IzRQ=",
            "3KgKEMMuZXk1f4YZQWXkw4q2c6nmg9tQpRcb7mTK/+o=",
        ),
    ),
    # m/44'/60'/0'/0/443
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x47CE99b5F9CA04649584f2edD9c79301B6021027",
            "0xa99346bfa93ceaaad57a55b2bb5d2a539ee4c21a0490a51bda3f77e18750f9b7a5394e84382a7e3cdf4ae2ce4d074b11a0b16fa80bb8ba1f9f6ccdfe60a41153",
            "ba79bf60b68d4330ee1930783a71106377df009fd10bb72eca53a1bfc4b45879",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x47CE99b5F9CA04649584f2edD9c79301B6021027",
            "BKmTRr+pPOqq1XpVsrtdKlOe5MIaBJClG9o/d+GHUPm3pTlOhDgqfjzfSuLOTQdLEaCxb6gLuLofn2zN/mCkEVM=",
            "unm/YLaNQzDuGTB4OnEQY3ffAJ/RC7cuylOhv8S0WHk=",
        ),
    ),
    # m/44'/60'/0'/0/444
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x90379336edeB6023Fb3e2Eba76aD3314069EBDB1",
            "0x6ed5a6c33fefd44377ae100ec524d23b8414ea23d018d228f744727512b70addf49b1b0568dedb7116682a540803bbeb214e276247691f161916a26142baa7ea",
            "3e0434a67c9699127c469d4319df83495f79dee0d94c3bde2a289172ecf026ca",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x90379336edeB6023Fb3e2Eba76aD3314069EBDB1",
            "BG7VpsM/79RDd64QDsUk0juEFOoj0BjSKPdEcnUStwrd9JsbBWje23EWaCpUCAO76yFOJ2JHaR8WGRaiYUK6p+o=",
            "PgQ0pnyWmRJ8Rp1DGd+DSV953uDZTDveKiiRcuzwJso=",
        ),
    ),
    # m/44'/60'/0'/0/445
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x61aB1a946F196529C306C96F80F85bde01D44A44",
            "0xa27a4b6c8cb9fbf37fb1c18a2e82edfd25c4c70f1e717a4cb80f33298f988016524843c637df44165295f16d7520a28dad0ea9b8fa62e45edfc6d8b2f1b5ed9f",
            "2f738c8b645623fc6e79e3d72953671a269987f1b4d9e6a26755b35fd63c787e",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x61aB1a946F196529C306C96F80F85bde01D44A44",
            "BKJ6S2yMufvzf7HBii6C7f0lxMcPHnF6TLgPMymPmIAWUkhDxjffRBZSlfFtdSCija0Oqbj6YuRe38bYsvG17Z8=",
            "L3OMi2RWI/xueePXKVNnGiaZh/G02eaiZ1WzX9Y8eH4=",
        ),
    ),
    # m/44'/60'/0'/0/446
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xEAEc1436925b39d97287ad655C8BeAfeB7fbe9Cd",
            "0x88f7050cdccd2e0346546d711a1392734cd58db5b2021760248c4bcedca39b9fb4f9644eda53d2ddf083ebf5ac59bbd493f80b9782089ef947fe765a00d35a96",
            "89e30ae93b7f70cd0485369aeabc0b9425678b9318fc830c0963d122901e1359",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xEAEc1436925b39d97287ad655C8BeAfeB7fbe9Cd",
            "BIj3BQzczS4DRlRtcRoTknNM1Y21sgIXYCSMS87co5uftPlkTtpT0t3wg+v1rFm71JP4C5eCCJ75R/52WgDTWpY=",
            "ieMK6Tt/cM0EhTaa6rwLlCVni5MY/IMMCWPRIpAeE1k=",
        ),
    ),
    # m/44'/60'/0'/0/447
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x81ba319DB377c50a95b84B65FcbE9AdAd301F925",
            "0xdc6ba43ec93fb229a794ee3447cfad287f213ae8c39c2383c84938634a1171944c794efc7abb786adf4e9bd17a35d372502dd6541eb6dcc5701c9710f804c0a9",
            "f74895103cefac0d04788adf3997bcda3e7bd75e22fc58509cd475856c92753d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x81ba319DB377c50a95b84B65FcbE9AdAd301F925",
            "BNxrpD7JP7Ipp5TuNEfPrSh/ITrow5wjg8hJOGNKEXGUTHlO/Hq7eGrfTpvRejXTclAt1lQettzFcByXEPgEwKk=",
            "90iVEDzvrA0EeIrfOZe82j57114i/FhQnNR1hWySdT0=",
        ),
    ),
    # m/44'/60'/0'/0/448
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xf854277D5E82d4a9E4B8c2b2F31E2ae9a905b3D8",
            "0x4e6104d3091e0c9b5c2d69730dcdacd78eb6e3fd008d5917582dcec976c72c53c0c58f918f01fb51252362a4842d7af2427756b261a7bf3ab5f1db75f6a43e67",
            "78acfd4ae1465a0a3feb4fe4e6541f9c89f04e5c56da40413256f5a574828f9f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xf854277D5E82d4a9E4B8c2b2F31E2ae9a905b3D8",
            "BE5hBNMJHgybXC1pcw3NrNeOtuP9AI1ZF1gtzsl2xyxTwMWPkY8B+1ElI2KkhC168kJ3VrJhp786tfHbdfakPmc=",
            "eKz9SuFGWgo/60/k5lQfnInwTlxW2kBBMlb1pXSCj58=",
        ),
    ),
    # m/44'/60'/0'/0/449
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x5B391622a3b2289a93F915f6C9EDB9B710e776B5",
            "0x2413248cdfefbc8e2feb550e1f51dccea76fb2db4cbd2b7b62a5ea666148f5f01a144bfaaad3ab28975aba18c298719d6cc50fc0ed44a5f75f7692f9f12da9f5",
            "7d0b57e1b385ba5410ef7925c1afa0bb35d5dfc4ca05bd11e1d42b9d5fc6f8fd",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x5B391622a3b2289a93F915f6C9EDB9B710e776B5",
            "BCQTJIzf77yOL+tVDh9R3M6nb7LbTL0re2Kl6mZhSPXwGhRL+qrTqyiXWroYwphxnWzFD8DtRKX3X3aS+fEtqfU=",
            "fQtX4bOFulQQ73klwa+guzXV38TKBb0R4dQrnV/G+P0=",
        ),
    ),
    # m/44'/60'/0'/0/450
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x7446A85224E3846296bdb475913b1dA670AF02bd",
            "0x6776f350f5a8b5c5fdd1a383dce7aeecc37dd015034ecdb46b092456606589bed3f8be6dcf758a5175f53627d6c9c035643b0c5c08052e509ac06537e92cfb6a",
            "aab87a90fc308db1decdf22f71d603490cf759cac6040caf7b4a55dc92f3da06",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x7446A85224E3846296bdb475913b1dA670AF02bd",
            "BGd281D1qLXF/dGjg9znruzDfdAVA07NtGsJJFZgZYm+0/i+bc91ilF19TYn1snANWQ7DFwIBS5QmsBlN+ks+2o=",
            "qrh6kPwwjbHezfIvcdYDSQz3WcrGBAyve0pV3JLz2gY=",
        ),
    ),
    # m/44'/60'/0'/0/451
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x768Afa3195B8787aa460093D4986c1aceB41c039",
            "0x3d166c9a538764e14a5bd91827cb608bbd42142ebb47d82e78c4c61b2a8d5c4889de83ff3b7df9ad2ff6ec003b7e9b78184a5dceede250c5930fec726984fa6e",
            "2108ca5d88d4dc21366ae498f4b2b1088cac53472c7c7a036552c064f4bee738",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x768Afa3195B8787aa460093D4986c1aceB41c039",
            "BD0WbJpTh2ThSlvZGCfLYIu9QhQuu0fYLnjExhsqjVxIid6D/zt9+a0v9uwAO36beBhKXc7t4lDFkw/scmmE+m4=",
            "IQjKXYjU3CE2auSY9LKxCIysU0csfHoDZVLAZPS+5zg=",
        ),
    ),
    # m/44'/60'/0'/0/452
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x1fc4bCe721ebB4e63cb94040507D92BbA831829A",
            "0xb758d55c0ffe24d635f473d7dc112573b6939ff231ca36686c3c1e9150560d0b0c93f987394dcb96ee24598bc75df1ea2061c680917dc1077004c6ab2c900277",
            "c63fedb9c499702ab4ebcfb21b690c8d334f52634e7065eec286ce0cbd1e0b4a",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x1fc4bCe721ebB4e63cb94040507D92BbA831829A",
            "BLdY1VwP/iTWNfRz19wRJXO2k5/yMco2aGw8HpFQVg0LDJP5hzlNy5buJFmLx13x6iBhxoCRfcEHcATGqyyQAnc=",
            "xj/tucSZcCq068+yG2kMjTNPUmNOcGXuwobODL0eC0o=",
        ),
    ),
    # m/44'/60'/0'/0/453
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x04906141578A5e502A98c7f1908f46Fe5F0C4fFE",
            "0x3c18970e2f03f4b846cec7d9fa0e8d7fa689c60e2ba2229f5fe967662a251dc6afa365cd9911f753dfab49628965a85b93f2cec426618e10416548eb46b9b028",
            "34e559da6eefe62d8627ee8f5d3aa0fdcc6283996fc745c9d05e941dc1974101",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x04906141578A5e502A98c7f1908f46Fe5F0C4fFE",
            "BDwYlw4vA/S4Rs7H2foOjX+micYOK6Iin1/pZ2YqJR3Gr6NlzZkR91Pfq0liiWWoW5PyzsQmYY4QQWVI60a5sCg=",
            "NOVZ2m7v5i2GJ+6PXTqg/cxig5lvx0XJ0F6UHcGXQQE=",
        ),
    ),
    # m/44'/60'/0'/0/454
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xdABe13c359c8827B19696119a47F67E189022Cd0",
            "0x6fb14b22833fad5102fb460eb517508ab5da98249b63dfe031b21cf587f3606011962ebe9f3be26dd1ce7fda22b4e653cd62374a24ec9d6e0bfe534caaec3a08",
            "9dd73b21298c5d31d78258633250ba3b70f9d820216721c7c2917d225e580330",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xdABe13c359c8827B19696119a47F67E189022Cd0",
            "BG+xSyKDP61RAvtGDrUXUIq12pgkm2Pf4DGyHPWH82BgEZYuvp874m3Rzn/aIrTmU81iN0ok7J1uC/5TTKrsOgg=",
            "ndc7ISmMXTHXglhjMlC6O3D52CAhZyHHwpF9Il5YAzA=",
        ),
    ),
    # m/44'/60'/0'/0/455
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xD31A05787e4b4D2fe36a92cbA018bF0Bf92aafBc",
            "0x77eebb8394f1884c2c565911abec90ab2ec7484d7236f9dc728e4e840f6488d15c42ba57b5700ef3f8eef7397a77e2c7b956c5ebfbe434a72982308419e6a973",
            "f90d6c79a8a2d97fe1646b4c296b7a725553bd858d11d180cdbd8f7ae0dc8dbc",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xD31A05787e4b4D2fe36a92cbA018bF0Bf92aafBc",
            "BHfuu4OU8YhMLFZZEavskKsux0hNcjb53HKOToQPZIjRXEK6V7VwDvP47vc5enfix7lWxev75DSnKYIwhBnmqXM=",
            "+Q1seaii2X/hZGtMKWt6clVTvYWNEdGAzb2PeuDcjbw=",
        ),
    ),
    # m/44'/60'/0'/0/456
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x48637F5Fb0B26e4fd23df2F4cAe79D31e8519837",
            "0xd6385250aead31dd6363ae136020d66f6817d41098dc778fbb5d260b3e7952fef4fd3077d2b754b8d1555b8977a12fd8b42ed976de9e06f18c1414a518282f01",
            "1d5aaad6ec4083a61b6d56c2d73c7a673d83cc549601b78ae5fc1897b315312a",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x48637F5Fb0B26e4fd23df2F4cAe79D31e8519837",
            "BNY4UlCurTHdY2OuE2Ag1m9oF9QQmNx3j7tdJgs+eVL+9P0wd9K3VLjRVVuJd6Ev2LQu2XbengbxjBQUpRgoLwE=",
            "HVqq1uxAg6YbbVbC1zx6Zz2DzFSWAbeK5fwYl7MVMSo=",
        ),
    ),
    # m/44'/60'/0'/0/457
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xE594A3C8DBC90E398099eA09Ab876aB79279Fe89",
            "0x2c848db834133ccb612b3cf6b0f9640780316b3223c7ce0f20eb80460d8e92712b60f9db8df6b7a5d8cecff84f848d452d58cd347f664c69b1e651ac1344785a",
            "18445f990815b5e4d51382579ebbd85c9481eaa5c365cbceac099933b7471bf8",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xE594A3C8DBC90E398099eA09Ab876aB79279Fe89",
            "BCyEjbg0EzzLYSs89rD5ZAeAMWsyI8fODyDrgEYNjpJxK2D52432t6XYzs/4T4SNRS1YzTR/ZkxpseZRrBNEeFo=",
            "GERfmQgVteTVE4JXnrvYXJSB6qXDZcvOrAmZM7dHG/g=",
        ),
    ),
    # m/44'/60'/0'/0/458
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x9F455C8Aea380018C57458e8Cb1b90e1f5e78F09",
            "0x55c5de3e059fa97a6cf3370b548ffa82278b986c49060ab8d9a78d3c52f0219851de02ed739d52feacfebcdfbd2a57ef0d1035f0b0146de0b5d16a2fc0927892",
            "886aa4f20218b83cb5d302d4495ac62b2ead114a37f9e79f4d57ea4b4b27933f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x9F455C8Aea380018C57458e8Cb1b90e1f5e78F09",
            "BFXF3j4Fn6l6bPM3C1SP+oIni5hsSQYKuNmnjTxS8CGYUd4C7XOdUv6s/rzfvSpX7w0QNfCwFG3gtdFqL8CSeJI=",
            "iGqk8gIYuDy10wLUSVrGKy6tEUo3+eefTVfqS0snkz8=",
        ),
    ),
    # m/44'/60'/0'/0/459
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x8402d1AF6Bd1d3c68Ead29469c128c8457f2CDDC",
            "0xaf74f1e5863c3533a84dc7fce927949d49ff0f04f06d22a25d86af0999f7d60f58635304b867cefa8bd2dfb9c8d4ec0c5c4e95bc615241b5987c322f4e517040",
            "61f45b88df425d76edd18840cf86476d81d1d271e1724a78ee41e95ce0550358",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x8402d1AF6Bd1d3c68Ead29469c128c8457f2CDDC",
            "BK908eWGPDUzqE3H/OknlJ1J/w8E8G0iol2GrwmZ99YPWGNTBLhnzvqL0t+5yNTsDFxOlbxhUkG1mHwyL05RcEA=",
            "YfRbiN9CXXbt0YhAz4ZHbYHR0nHhckp47kHpXOBVA1g=",
        ),
    ),
    # m/44'/60'/0'/0/460
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x7727da4041E5eDE894c64CeD883dabE220fed771",
            "0x56883393b3d87950a5690dfed1ac9d9f3cee0a30957d09597dd87a195545808cd5672c1ee56840885b1324916a2a8aa32a1a9fbfeebc81fd55531787c7dc313d",
            "fd49ef03486ec4a472a259bc3fd61f03d35b20fa45f9514733569dbe2a668b48",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x7727da4041E5eDE894c64CeD883dabE220fed771",
            "BFaIM5Oz2HlQpWkN/tGsnZ887gowlX0JWX3YehlVRYCM1WcsHuVoQIhbEySRaiqKoyoan7/uvIH9VVMXh8fcMT0=",
            "/UnvA0huxKRyolm8P9YfA9NbIPpF+VFHM1advipmi0g=",
        ),
    ),
    # m/44'/60'/0'/0/461
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xAbF04BdEa60cFcEacb9D8fbca24a980AEe259764",
            "0x5d2a0138ecce589ad09bc622e91177f0879aaeeabce3c09798ec2e3dc421b37e328267fbc0802144700e8b641df0bed7264de99ab3872d45ef4eacdce0c6a669",
            "8e3cb605854cc0e90a34678d7772bd140ba90293071d3f270ecec26e8178c810",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xAbF04BdEa60cFcEacb9D8fbca24a980AEe259764",
            "BF0qATjszlia0JvGIukRd/CHmq7qvOPAl5jsLj3EIbN+MoJn+8CAIURwDotkHfC+1yZN6Zqzhy1F706s3ODGpmk=",
            "jjy2BYVMwOkKNGeNd3K9FAupApMHHT8nDs7CboF4yBA=",
        ),
    ),
    # m/44'/60'/0'/0/462
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x52563f44160ff79520c9D889b81Bf7341E88625e",
            "0x61f6a2daea55bb89b1473dd091cb0c666dc30232796a78df1626ae2d4fe359dc8b0b31ae4402aabf2c3d923a5d13225935299d647147ac07d94626f8018e46a6",
            "f8e0084a03b48b47241b249917d8aa5c24bb78201882797e835a588f7fecfa9e",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x52563f44160ff79520c9D889b81Bf7341E88625e",
            "BGH2otrqVbuJsUc90JHLDGZtwwIyeWp43xYmri1P41nciwsxrkQCqr8sPZI6XRMiWTUpnWRxR6wH2UYm+AGORqY=",
            "+OAISgO0i0ckGySZF9iqXCS7eCAYgnl+g1pYj3/s+p4=",
        ),
    ),
    # m/44'/60'/0'/0/463
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x4BacbeA956E3cE38EF73C3c4b16fE55c4b6b0941",
            "0x5575329dcc5f0989c2649468fd97940755d3e8292662b0a5e97e38bd125a621e2b82b2c2eeae25fc1495eae75a525a20b8bc32fe396f33d1049cb25857523d6b",
            "03c44b17ee6035e6c06ca5bb2d9c5175961da702da944b7078f11b342a2c6260",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x4BacbeA956E3cE38EF73C3c4b16fE55c4b6b0941",
            "BFV1Mp3MXwmJwmSUaP2XlAdV0+gpJmKwpel+OL0SWmIeK4Kywu6uJfwUlernWlJaILi8Mv45bzPRBJyyWFdSPWs=",
            "A8RLF+5gNebAbKW7LZxRdZYdpwLalEtwePEbNCosYmA=",
        ),
    ),
    # m/44'/60'/0'/0/464
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xE7915Bb65a670850713Bb309C62566E90F7947B2",
            "0xe7480fd6bb97694e691dedd34190c6403b2f3549cf32904b68672a74bfeeaab667426c5b6cdf1bd1085a74d1f3da2726b4126b2932ae44f23aab755a4762bae4",
            "e9aa8ca12a29e20d78dc25cfff0cf24c5041073cf84bfe12e2190ac90e88fe66",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xE7915Bb65a670850713Bb309C62566E90F7947B2",
            "BOdID9a7l2lOaR3t00GQxkA7LzVJzzKQS2hnKnS/7qq2Z0JsW2zfG9EIWnTR89onJrQSaykyrkTyOqt1WkdiuuQ=",
            "6aqMoSop4g143CXP/wzyTFBBBzz4S/4S4hkKyQ6I/mY=",
        ),
    ),
    # m/44'/60'/0'/0/465
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x37DDeefae31aDC8f36F3a799A0784f779a5f8263",
            "0xfeb22078e50eb5274e77189069340e7c26a2658305e88603e2ece6babf71f04a5534cb612446bbd06e5ac0282fd2dd1e7daf9b54e0721e61aefed3ab5cd16987",
            "d0426042fcca1c0afe1f2cfeef253b3022d933440b116c9943a68c7fc00b182f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x37DDeefae31aDC8f36F3a799A0784f779a5f8263",
            "BP6yIHjlDrUnTncYkGk0DnwmomWDBeiGA+Ls5rq/cfBKVTTLYSRGu9BuWsAoL9LdHn2vm1Tgch5hrv7Tq1zRaYc=",
            "0EJgQvzKHAr+Hyz+7yU7MCLZM0QLEWyZQ6aMf8ALGC8=",
        ),
    ),
    # m/44'/60'/0'/0/466
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x6373426a8A8A2f68CD37f5AE34ce621fD4E78805",
            "0xe46c0bc9d7cbfd3dde97e537ea09e7de0f500e4644a79cc54adcd89bfb8fd70ab3767ecf1a5545c09cef53fc126f6837e2e683168ea894df1cfaa60e081d5b0f",
            "bf94c26955920e21597df21435635046091f423045dc05eef67d0b1f7df149ce",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x6373426a8A8A2f68CD37f5AE34ce621fD4E78805",
            "BORsC8nXy/093pflN+oJ594PUA5GRKecxUrc2Jv7j9cKs3Z+zxpVRcCc71P8Em9oN+LmgxaOqJTfHPqmDggdWw8=",
            "v5TCaVWSDiFZffIUNWNQRgkfQjBF3AXu9n0LH33xSc4=",
        ),
    ),
    # m/44'/60'/0'/0/467
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xe8AC970081585aBdbDB2A918Ca0Eb721248D06b0",
            "0xb3c0bbd706114ef3c88d20122ec39e8878bfad0f2f8054101f2e250c1f63d948aec1d8bf9c83afc501877baea245167ea867e7e10ffeb6f436b6ca3ea87b665e",
            "cbf7424cba11305ee45b8decd6f3a4fc015417bec47df17e7536d6ffa237503b",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xe8AC970081585aBdbDB2A918Ca0Eb721248D06b0",
            "BLPAu9cGEU7zyI0gEi7Dnoh4v60PL4BUEB8uJQwfY9lIrsHYv5yDr8UBh3uuokUWfqhn5+EP/rb0NrbKPqh7Zl4=",
            "y/dCTLoRMF7kW43s1vOk/AFUF77EffF+dTbW/6I3UDs=",
        ),
    ),
    # m/44'/60'/0'/0/468
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xF230f65Ec7c3F7AD09bDDCfDA19e3b43638A70F2",
            "0xeea0ff64321e7884b20b0cb91fc48721de0ecb05c4d2dd238c6ad4a528c5745fbf0fc7f088475690eb5132f0c8517ec7e302d5b9ad8e2b50edd5422942e0d551",
            "c0c0ce3bd0a750dda35752a8b675f0b8517c36d8bf637e5192135fd92d4f2d8c",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xF230f65Ec7c3F7AD09bDDCfDA19e3b43638A70F2",
            "BO6g/2QyHniEsgsMuR/EhyHeDssFxNLdI4xq1KUoxXRfvw/H8IhHVpDrUTLwyFF+x+MC1bmtjitQ7dVCKULg1VE=",
            "wMDOO9CnUN2jV1KotnXwuFF8Nti/Y35RkhNf2S1PLYw=",
        ),
    ),
    # m/44'/60'/0'/0/469
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x53D200cC20D164CD4A16881083aFF59A36aF70f5",
            "0xb2deccec114b84c79195e7f4137f2017218a17b88c1c0b0ba23106cf0527c17c026d89de7ad2589b5e3adf1241d28340d947bed145a717b0c6a94c06ab9eda67",
            "a96eec2c16af3e53d514d9f44367758294412dddf2710969100ae08db81fd135",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x53D200cC20D164CD4A16881083aFF59A36aF70f5",
            "BLLezOwRS4THkZXn9BN/IBchihe4jBwLC6IxBs8FJ8F8Am2J3nrSWJteOt8SQdKDQNlHvtFFpxewxqlMBque2mc=",
            "qW7sLBavPlPVFNn0Q2d1gpRBLd3ycQlpEArgjbgf0TU=",
        ),
    ),
    # m/44'/60'/0'/0/470
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x074E27C6776E0A2d6DDD3a406D4bb0E2Dcd8E1F7",
            "0x39b4968ea157c1681dd82e53d37cf1332123a59c54813267d8c20050e93ff6677053ccf41b3cbedf8cc4def2509d90f566263b16ce0292f30d6ce468fbeca07c",
            "bf51326ffe0688f6e9fbfd1ad3a8dffce38388bcb09a476faf3f920b2813ece0",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x074E27C6776E0A2d6DDD3a406D4bb0E2Dcd8E1F7",
            "BDm0lo6hV8FoHdguU9N88TMhI6WcVIEyZ9jCAFDpP/ZncFPM9Bs8vt+MxN7yUJ2Q9WYmOxbOApLzDWzkaPvsoHw=",
            "v1Eyb/4GiPbp+/0a06jf/OODiLywmkdvrz+SCygT7OA=",
        ),
    ),
    # m/44'/60'/0'/0/471
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xf238D81Ef5679EEa27E6775F481b54CfdFB4d928",
            "0x492b278d264846a035db75aca4acbd78f0784eda2df27f756de0d183b734b4c10f9e16eed254717ff382425a4ad53c70c85facf0e3791cadc938fee21a228013",
            "b457563b4721b1da43061fbf2e987d92a292515525f234d5d7f1a0ef1538f862",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xf238D81Ef5679EEa27E6775F481b54CfdFB4d928",
            "BEkrJ40mSEagNdt1rKSsvXjweE7aLfJ/dW3g0YO3NLTBD54W7tJUcX/zgkJaStU8cMhfrPDjeRytyTj+4hoigBM=",
            "tFdWO0chsdpDBh+/Lph9kqKSUVUl8jTV1/Gg7xU4+GI=",
        ),
    ),
    # m/44'/60'/0'/0/472
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xB8F67f1EF1F4B5Ca203E944aA9B90Bdee896c07D",
            "0xb3563b4a063d000fe3fffaac5e1ed9f3cb6b27e7aee6df3d523590b8486f9a5b4e8fd1d0048e1d9d88b3e96389e8fa9130fd561764f929534337e1622cf33f30",
            "c0693ab129feecffe73bdaf8053ff569cbf90b2ed5686b785144297dc831540a",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xB8F67f1EF1F4B5Ca203E944aA9B90Bdee896c07D",
            "BLNWO0oGPQAP4//6rF4e2fPLayfnrubfPVI1kLhIb5pbTo/R0ASOHZ2Is+ljiej6kTD9Vhdk+SlTQzfhYizzPzA=",
            "wGk6sSn+7P/nO9r4BT/1acv5Cy7VaGt4UUQpfcgxVAo=",
        ),
    ),
    # m/44'/60'/0'/0/473
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xdbD92bd9375A0A8de08a3AC9C386481A15B3ba43",
            "0x9bb0bc858ab4c0be946983bfc72886c6d2b387e1356d94c83e18b142b60fca9b5e70a943cd1bd806a77f4bcfff34adea07f0a0a3fd04a4dd1ecf5fdd5b77e9",
            "86977ec06142d5e93fb2308268a8c9b6d7498ec613b8650c8795dcb03a2280ec",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xdbD92bd9375A0A8de08a3AC9C386481A15B3ba43",
            "BJuwvIWKtMC+lGmDv8cohsbSs4fhNW2UyD4YsUK2D8qbXnCpQ80b2Aanf0vP/zSt6gfwoKP9BKTdHs9f3Vt36Q==",
            "hpd+wGFC1ek/sjCCaKjJttdJjsYTuGUMh5XcsDoigOw=",
        ),
    ),
    # m/44'/60'/0'/0/474
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xb63C4c288e697d757F420FD48254402232549B4a",
            "0xcee4e5e347284b8dbb2515cd156580bcb73e6b3b0958c13d784917527eaff70ccc154b0c61b3d5f1cc632f934673b3eb00be127ef54d23259cd05c2e16f5288f",
            "435d64d29176a6cbf959dd450900bda67e0e00c7a5afa0a68a25ad5b15042ca7",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xb63C4c288e697d757F420FD48254402232549B4a",
            "BM7k5eNHKEuNuyUVzRVlgLy3Pms7CVjBPXhJF1J+r/cMzBVLDGGz1fHMYy+TRnOz6wC+En71TSMlnNBcLhb1KI8=",
            "Q11k0pF2psv5Wd1FCQC9pn4OAMelr6CmiiWtWxUELKc=",
        ),
    ),
    # m/44'/60'/0'/0/475
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x95e2D2701B343Ddfe1F71ccDf06e4A6b21f42515",
            "0x4f5d78885a9ab689b612db1d16fa23496a8584655b8adfa9643819b7089918b1fa9e8571dd0c500ff75e7ea354fac1586ebe207729c776d951f16531aed39141",
            "902f349af9091f85e8de374d99fc735fd60fc7471081432842b62327621a0c13",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x95e2D2701B343Ddfe1F71ccDf06e4A6b21f42515",
            "BE9deIhamraJthLbHRb6I0lqhYRlW4rfqWQ4GbcImRix+p6Fcd0MUA/3Xn6jVPrBWG6+IHcpx3bZUfFlMa7TkUE=",
            "kC80mvkJH4Xo3jdNmfxzX9YPx0cQgUMoQrYjJ2IaDBM=",
        ),
    ),
    # m/44'/60'/0'/0/476
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x5D41d75e302292821841418D705bbBebb4580f70",
            "0x8a150f422b59edae057a4525e5194fc274be9b7c53e06073ba4bf047daf2a4990bda6867148fc0cb59e4c7761e2ff4088ccda255e2a1204bf6712d63ea276d14",
            "0d48a06f9661db2aadc6d135b999e260351ef516111011500b5cf64b6677fa97",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x5D41d75e302292821841418D705bbBebb4580f70",
            "BIoVD0IrWe2uBXpFJeUZT8J0vpt8U+Bgc7pL8Efa8qSZC9poZxSPwMtZ5Md2Hi/0CIzNolXioSBL9nEtY+onbRQ=",
            "DUigb5Zh2yqtxtE1uZniYDUe9RYREBFQC1z2S2Z3+pc=",
        ),
    ),
    # m/44'/60'/0'/0/477
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x95E981b03529C6a15B1D248Bd8173CCD1E103b12",
            "0xbf7d74aa5850b3492e3d3f280537722054b689fcf64896de4df4c9eb527256e0bf525434039479ce310220321f4a9d2d7b8362510f0527b00f027795bf17746a",
            "8f74d64b9a979e97fa36cfadbaf8e1c2bb1f921ad5c2df52b02029f8fab582c1",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x95E981b03529C6a15B1D248Bd8173CCD1E103b12",
            "BL99dKpYULNJLj0/KAU3ciBUton89kiW3k30yetSclbgv1JUNAOUec4xAiAyH0qdLXuDYlEPBSewDwJ3lb8XdGo=",
            "j3TWS5qXnpf6Ns+tuvjhwrsfkhrVwt9SsCAp+Pq1gsE=",
        ),
    ),
    # m/44'/60'/0'/0/478
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x09339215Bd77B9C2410FcFBb509800540e6046f2",
            "0x7062e0e72cf29315b183ebb7d1276198c743938802705a39d6d59973602ba3eec0c8c4947aefc08305c52dc23bb1b2f89eb2e76ed5517684d66877e486ffa9bd",
            "e7be80687600e9e98e579f4fe4c2c6f56791ad5387a62e85c1912ad3e7d91ba1",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x09339215Bd77B9C2410FcFBb509800540e6046f2",
            "BHBi4Ocs8pMVsYPrt9EnYZjHQ5OIAnBaOdbVmXNgK6PuwMjElHrvwIMFxS3CO7Gy+J6y527VUXaE1mh35Ib/qb0=",
            "576AaHYA6emOV59P5MLG9WeRrVOHpi6FwZEq0+fZG6E=",
        ),
    ),
    # m/44'/60'/0'/0/479
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xcC4F7464F26Ae109F58fda5Aa26899Af5295bfE4",
            "0x26fc735bd255ee31207e0028ba35af1ce62ba4fdaeb694cfc6bef753d28fce47f71957adc133e646c97c5f297be6c36f08cbbcd4b0b5815b939e1f99a57d9aa9",
            "15369c91c93ac013de38a8d70de23dee4074a227ae78954cf1361e3b5feb0ef8",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xcC4F7464F26Ae109F58fda5Aa26899Af5295bfE4",
            "BCb8c1vSVe4xIH4AKLo1rxzmK6T9rraUz8a+91PSj85H9xlXrcEz5kbJfF8pe+bDbwjLvNSwtYFbk54fmaV9mqk=",
            "FTackck6wBPeOKjXDeI97kB0oieueJVM8TYeO1/rDvg=",
        ),
    ),
    # m/44'/60'/0'/0/480
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xB110185da110cC8a1631AAE0502a8F6B4D53AfAd",
            "0x28bc7e4e626365ec1455016cb49c047306a0d83e2ef013ecc69b72b38b47c69496ffd8250bec4de0f6fbfc67bd2410418e39b4ba12dec12e0acf53861f8a373f",
            "5b44a9c7243b03fd0d9df0015c661a004bd5c6c20e2038ae75ff79a03422bcab",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xB110185da110cC8a1631AAE0502a8F6B4D53AfAd",
            "BCi8fk5iY2XsFFUBbLScBHMGoNg+LvAT7MabcrOLR8aUlv/YJQvsTeD2+/xnvSQQQY45tLoS3sEuCs9Thh+KNz8=",
            "W0SpxyQ7A/0NnfABXGYaAEvVxsIOIDiudf95oDQivKs=",
        ),
    ),
    # m/44'/60'/0'/0/481
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xE1f65cEc05a4B246582DCd0B4c819180BC0C8043",
            "0x4b95e4968110ac90a1f7e57c6213a672072e3ae9542fdcbaae119f6d8d4a22b6d58e11a3f69e7a6d91e6bca6c7553a2d13f99f831fcc90ed63c2a823a3925561",
            "912a7b3b7cde2435bdcd3776fcdcb6453d608caa59a2555bc4325b4609514578",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xE1f65cEc05a4B246582DCd0B4c819180BC0C8043",
            "BEuV5JaBEKyQofflfGITpnIHLjrpVC/cuq4Rn22NSiK21Y4Ro/aeem2R5rymx1U6LRP5n4MfzJDtY8KoI6OSVWE=",
            "kSp7O3zeJDW9zTd2/Ny2RT1gjKpZolVbxDJbRglRRXg=",
        ),
    ),
    # m/44'/60'/0'/0/482
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x94E171664f843A067A994DA9b8A4E5603A09BcF8",
            "0xda9b493294bb032a8faea6dad019523fbb07698943eaabdfd2962d7739170c94beb0ad1df8758c4e1ded68ade03de74f47c3d3aeb3e1a2c07009ad03cc26c05e",
            "19c3a56898f52174063b226ba40c5920daa13ab57e02b85488a34cbbc1b88be9",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x94E171664f843A067A994DA9b8A4E5603A09BcF8",
            "BNqbSTKUuwMqj66m2tAZUj+7B2mJQ+qr39KWLXc5FwyUvrCtHfh1jE4d7Wit4D3nT0fD066z4aLAcAmtA8wmwF4=",
            "GcOlaJj1IXQGOyJrpAxZINqhOrV+ArhUiKNMu8G4i+k=",
        ),
    ),
    # m/44'/60'/0'/0/483
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x108186e50b90dd7c8DD57B8BC64ABa7d590cee09",
            "0x94497c20eab84a94f46a49549def8d0a82544a90c5b367b7a852fcdeed080ba6c25c2b5615b02f7803f2ba6c29a344e17def1afb2cc985c45e2441cf9a679a11",
            "350cddb6fe25a8d2d5cf6e2a949f5deaa4b9080aca45139ccada1027558ef63f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x108186e50b90dd7c8DD57B8BC64ABa7d590cee09",
            "BJRJfCDquEqU9GpJVJ3vjQqCVEqQxbNnt6hS/N7tCAumwlwrVhWwL3gD8rpsKaNE4X3vGvssyYXEXiRBz5pnmhE=",
            "NQzdtv4lqNLVz24qlJ9d6qS5CArKRROcytoQJ1WO9j8=",
        ),
    ),
    # m/44'/60'/0'/0/484
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x6F1C0762d954E824A7034D2eC18Ecd16BCd23284",
            "0x878deb47b6fedcbb2d5f538d0241f8e66334e9cbf32a84e376c5807012f6d338ac47f50a6c7359a5df338c4193908c814868450138fab9d053ad7c3006a4dadc",
            "c240cf3ee80f34ac2834c400d8023314aa257c4ad9734f4060f4003837c1423b",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x6F1C0762d954E824A7034D2eC18Ecd16BCd23284",
            "BIeN60e2/ty7LV9TjQJB+OZjNOnL8yqE43bFgHAS9tM4rEf1CmxzWaXfM4xBk5CMgUhoRQE4+rnQU618MAak2tw=",
            "wkDPPugPNKwoNMQA2AIzFKolfErZc09AYPQAODfBQjs=",
        ),
    ),
    # m/44'/60'/0'/0/485
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x5a6AE82799F087BB6F1622B5fDC411f03338B94C",
            "0x33e48d905d9dda599d4c9867278f9d046cf72a021739ef4afc3616adb6da31d055c3e68eadd1fd7a7be32fc6f28c0c3d4ba78e95071523048d0114d8ad546a82",
            "dd87db5663c79cf12beb9aa26ce2a511aeaf58d3ae74fe3fb828d0a3e98e7b2c",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x5a6AE82799F087BB6F1622B5fDC411f03338B94C",
            "BDPkjZBdndpZnUyYZyePnQRs9yoCFznvSvw2Fq222jHQVcPmjq3R/Xp74y/G8owMPUunjpUHFSMEjQEU2K1UaoI=",
            "3YfbVmPHnPEr65qibOKlEa6vWNOudP4/uCjQo+mOeyw=",
        ),
    ),
    # m/44'/60'/0'/0/486
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xA5DAB8dc66630bE673A012fC6DfF1467b1239660",
            "0xe52d9c618dcd4200f948b6ed00f53e703cc072fe9db51006b35995a1c14730a8d8aa85202c64b1fe132bf34d3ee72bda8fc65a4292d98fa66044ade26d8d0899",
            "88b1f10bf280020734f8b139579845c049de5de1bcbd22c42090dc962e0b3dea",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xA5DAB8dc66630bE673A012fC6DfF1467b1239660",
            "BOUtnGGNzUIA+Ui27QD1PnA8wHL+nbUQBrNZlaHBRzCo2KqFICxksf4TK/NNPucr2o/GWkKS2Y+mYESt4m2NCJk=",
            "iLHxC/KAAgc0+LE5V5hFwEneXeG8vSLEIJDcli4LPeo=",
        ),
    ),
    # m/44'/60'/0'/0/487
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x69CE4C16C0210508B14B4976d9EF15eE25F0750C",
            "0x24f9dd58bed39c590856fec414121232278c9e80e25fe0a16d02178762a1c54f644b0dbfb6b220d9d8a15b2a1a6e32dc07072b101b7f76b01692ee69b87bc574",
            "cbb334c4664b25fe7c795a764f478aabb7ec15752d60d7f51ab777cc593573af",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x69CE4C16C0210508B14B4976d9EF15eE25F0750C",
            "BCT53Vi+05xZCFb+xBQSEjInjJ6A4l/goW0CF4diocVPZEsNv7ayINnYoVsqGm4y3AcHKxAbf3awFpLuabh7xXQ=",
            "y7M0xGZLJf58eVp2T0eKq7fsFXUtYNf1Grd3zFk1c68=",
        ),
    ),
    # m/44'/60'/0'/0/488
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x0eAe94F8B7930a14F78823080b6003b403824F5E",
            "0xa60891c8ff50f452ac9a74c7c95c1396a0b922235c955d257385e9fb1ec717b9d94914116536f3a6cfc1a57e3e2c86b0051c0097d00ed8d178aa9f88cace176b",
            "bdde205f9387d5dd4cc13e06b8536aaee24d02f3a35339547f85ba3de7297c73",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x0eAe94F8B7930a14F78823080b6003b403824F5E",
            "BKYIkcj/UPRSrJp0x8lcE5aguSIjXJVdJXOF6fsexxe52UkUEWU286bPwaV+PiyGsAUcAJfQDtjReKqfiMrOF2s=",
            "vd4gX5OH1d1MwT4GuFNqruJNAvOjUzlUf4W6PecpfHM=",
        ),
    ),
    # m/44'/60'/0'/0/489
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x79ACeb9b439f65d11a835507a158E69C3A315F35",
            "0x93a40dc2834e42eb6009a73784179f0f66f6af39fc54897f2acd5f50093ca833b20a936c02539739e717fdfb5e9ecdc4f8dedec5d99f5bbb47becbe403a55f72",
            "5430f44293079dda6f23869f3476342e2b4cf9485e6317606ee9afd07865a032",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x79ACeb9b439f65d11a835507a158E69C3A315F35",
            "BJOkDcKDTkLrYAmnN4QXnw9m9q85/FSJfyrNX1AJPKgzsgqTbAJTlznnF/37Xp7NxPje3sXZn1u7R77L5AOlX3I=",
            "VDD0QpMHndpvI4afNHY0LitM+UheYxdgbumv0HhloDI=",
        ),
    ),
    # m/44'/60'/0'/0/490
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x70D6c4Ddf9529B546aaff2CD82A0CbF214E3533C",
            "0xaaedcf21b95cd5d473cb36f79aef999a7634b447d23a099e42e1f18c60374e554a4f1fc28b3c0b6871bc96b9aa1f2066dc48be8abd63b9c1c5ec9905d705c6fa",
            "0676ab596b9f1fa418df9becdf7a172034aa6868552a0f1ab5a3e36af1b3bc9c",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x70D6c4Ddf9529B546aaff2CD82A0CbF214E3533C",
            "BKrtzyG5XNXUc8s295rvmZp2NLRH0joJnkLh8YxgN05VSk8fwos8C2hxvJa5qh8gZtxIvoq9Y7nBxeyZBdcFxvo=",
            "BnarWWufH6QY35vs33oXIDSqaGhVKg8ataPjavGzvJw=",
        ),
    ),
    # m/44'/60'/0'/0/491
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xfA05B972da6E1624DE64395631A89B0f8460B4be",
            "0x8678286059cf450bf27d26159147a969132513692b41c6ec9e51c7e25876f2904bbd32968e515e3743c0241920781929ad60d77ff2314eb1a796db190fd07ca5",
            "5501fa3ba2798aadedd7fbd8649215c226677c01da986ec7ecf5085c924cc463",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xfA05B972da6E1624DE64395631A89B0f8460B4be",
            "BIZ4KGBZz0UL8n0mFZFHqWkTJRNpK0HG7J5Rx+JYdvKQS70ylo5RXjdDwCQZIHgZKa1g13/yMU6xp5bbGQ/QfKU=",
            "VQH6O6J5iq3t1/vYZJIVwiZnfAHamG7H7PUIXJJMxGM=",
        ),
    ),
    # m/44'/60'/0'/0/492
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xADCdC7c891F0086eDdBfaE6623969d9Aa225e0b5",
            "0x0a57ed443cd815e37a60df2c58c6210586e0826edb71a30459ffb930efe797787fd0bfa46ce69430ab064f4509f94a182b9daa30fca0ccfffbacccb240c93afa",
            "cb461cc60cfc582d8a2a5eccc50c2a391c569c1a819eaace195d548e7a474ea5",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xADCdC7c891F0086eDdBfaE6623969d9Aa225e0b5",
            "BApX7UQ82BXjemDfLFjGIQWG4IJu23GjBFn/uTDv55d4f9C/pGzmlDCrBk9FCflKGCudqjD8oMz/+6zMskDJOvo=",
            "y0Ycxgz8WC2KKl7MxQwqORxWnBqBnqrOGV1UjnpHTqU=",
        ),
    ),
    # m/44'/60'/0'/0/493
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x327C44079B6f2D0Ea1c6d01626B4ba03e79DD386",
            "0xa0fb484be3489d158a79387a6d791cef92d12ca115470714dddecaffc330915ecf2d332b77a4f939c81f063aa4f4983fc77cca446b6b84f5cea2c52d5937c8cf",
            "539c24ba451947614cae93c9d2d27e3f6440e1e882d69172bd93c12c0924e3e4",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x327C44079B6f2D0Ea1c6d01626B4ba03e79DD386",
            "BKD7SEvjSJ0Vink4em15HO+S0SyhFUcHFN3eyv/DMJFezy0zK3ek+TnIHwY6pPSYP8d8ykRra4T1zqLFLVk3yM8=",
            "U5wkukUZR2FMrpPJ0tJ+P2RA4eiC1pFyvZPBLAkk4+Q=",
        ),
    ),
    # m/44'/60'/0'/0/494
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x72830dB576A6FbF8Db5820a4A6895710dc6f7fB4",
            "0xc991f904c69e8c90221e82d2f42fcde627b73c98b6011e2ec82794b7c0fb8b81543a4486fa4e22f6c17123df68cc722a057838996163f3f6ffdf1a71ad7a356b",
            "c2cfbf76996b8f4c0c656d4f848f9bbe38c65d9b566f6b8967d0057410a165fa",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x72830dB576A6FbF8Db5820a4A6895710dc6f7fB4",
            "BMmR+QTGnoyQIh6C0vQvzeYntzyYtgEeLsgnlLfA+4uBVDpEhvpOIvbBcSPfaMxyKgV4OJlhY/P2/98aca16NWs=",
            "ws+/dplrj0wMZW1PhI+bvjjGXZtWb2uJZ9AFdBChZfo=",
        ),
    ),
    # m/44'/60'/0'/0/495
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xBa4c05de2389aF1262e1AdF1265e160acC2DcC74",
            "0x67a92e748b49c0f378a6b15ec0d140b318d30f637845070a2c80fac9a95b64d14904c0aa467b7f76f1758149522618df223586e1c7981a4dbb285b83df9b3704",
            "153fe3a8a546f6ddf11237b558ad69b021af14cff8b37a98f2c8feeef2129e0c",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xBa4c05de2389aF1262e1AdF1265e160acC2DcC74",
            "BGepLnSLScDzeKaxXsDRQLMY0w9jeEUHCiyA+smpW2TRSQTAqkZ7f3bxdYFJUiYY3yI1huHHmBpNuyhbg9+bNwQ=",
            "FT/jqKVG9t3xEje1WK1psCGvFM/4s3qY8sj+7vISngw=",
        ),
    ),
    # m/44'/60'/0'/0/496
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x970Ef9e1ab0a55a4BA7bD76c4b69F8B7f788A549",
            "0x28a4327912c69dd5e217e05f6761350c648f28346a53d93f9fc1bd1d7e0db5da1cae577c0d434729ce68a6ff33d851b2d6dcf75c49cf6dc4127631f64fa8be3a",
            "27cacf5ae3d3d98ae2c95d6eac65c619a62070fee9fec7450e80b6f5ef1b46cf",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x970Ef9e1ab0a55a4BA7bD76c4b69F8B7f788A549",
            "BCikMnkSxp3V4hfgX2dhNQxkjyg0alPZP5/BvR1+DbXaHK5XfA1DRynOaKb/M9hRstbc91xJz23EEnYx9k+ovjo=",
            "J8rPWuPT2YriyV1urGXGGaYgcP7p/sdFDoC29e8bRs8=",
        ),
    ),
    # m/44'/60'/0'/0/497
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x15484e4B0C653662e199BF5Bc46BDAE56e438F93",
            "0xe0b3374dfa522dcba08290102bc83d50832028d6a0cac732e034e0b194bd48edc264376da5dd2ed0543c029032179d4ab53a85044923e9ba34e56d3f4a265cd8",
            "b1e6d076c29a35139c2a56afa12cb7488dad77c29d09023a99fcd77faad19af8",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x15484e4B0C653662e199BF5Bc46BDAE56e438F93",
            "BOCzN036Ui3LoIKQECvIPVCDICjWoMrHMuA04LGUvUjtwmQ3baXdLtBUPAKQMhedSrU6hQRJI+m6NOVtP0omXNg=",
            "sebQdsKaNROcKlavoSy3SI2td8KdCQI6mfzXf6rRmvg=",
        ),
    ),
    # m/44'/60'/0'/0/498
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x171f7c281e289D44A4529DEc073750b51442F007",
            "0x572a78cc945acd102df1e45dd7b814cb92b6906328b48cba6c36bd29e1058c4896d306a440b37a2666aaebd3f24ca93998cbca3eefc907f3b0c4fbe0b316a4ea",
            "b11bb5cfff751acee7946b2810bb86f17b7546a6fe745a6601042c0beb23d7a8",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x171f7c281e289D44A4529DEc073750b51442F007",
            "BFcqeMyUWs0QLfHkXde4FMuStpBjKLSMumw2vSnhBYxIltMGpECzeiZmquvT8kypOZjLyj7vyQfzsMT74LMWpOo=",
            "sRu1z/91Gs7nlGsoELuG8Xt1Rqb+dFpmAQQsC+sj16g=",
        ),
    ),
    # m/44'/60'/0'/0/499
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xE6016Ea2c9D4c6bC15f324557EcE4F3DE57b0630",
            "0x767317d5ca17bf9f636beaff3597e4940550074a3cd843ae5ed93b67532766021ea0e1086eb6cbf52fc033d7e1bf47eea8b79894a7d622764ad71f471a11cffa",
            "0deb903725505a131980fadf040873f907e50a33aad2427ff479700e53a12e93",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xE6016Ea2c9D4c6bC15f324557EcE4F3DE57b0630",
            "BHZzF9XKF7+fY2vq/zWX5JQFUAdKPNhDrl7ZO2dTJ2YCHqDhCG62y/UvwDPX4b9H7qi3mJSn1iJ2StcfRxoRz/o=",
            "DeuQNyVQWhMZgPrfBAhz+QflCjOq0kJ/9HlwDlOhLpM=",
        ),
    ),
    # m/44'/60'/0'/0/500
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x1cc2d6Fa426563fe54D48aFC5759DF5A5E94A28f",
            "0x94b8eacdee35aa5473c181ea84abd54b04b2005491d11d2fe4b5fb151a3ebd85547c508727f62308d9dcba9389fd9312c2f0450035febb03173dc24d016e42a2",
            "f46e86406777bbdc9f1e1fc39e489927a5e9ca97916dec261489f1d2f1036c13",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x1cc2d6Fa426563fe54D48aFC5759DF5A5E94A28f",
            "BJS46s3uNapUc8GB6oSr1UsEsgBUkdEdL+S1+xUaPr2FVHxQhyf2IwjZ3LqTif2TEsLwRQA1/rsDFz3CTQFuQqI=",
            "9G6GQGd3u9yfHh/DnkiZJ6XpypeRbewmFInx0vEDbBM=",
        ),
    ),
    # m/44'/60'/0'/0/501
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x7d7f52384F90d2280D0F8EcE2c8CDa5c2ec33969",
            "0xaf92f8bb9e806a52d372fec7836577b5acd893966caee1282808fc7909ef0806e71e753427fe5f47c9ae811904934dcb6edc8d8106fa4b64574eb207883e1f37",
            "b585c991c71d2d2790e0fc2fe339a3e9f7d5bc72543bb4b30572c5cadcb2a9da",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x7d7f52384F90d2280D0F8EcE2c8CDa5c2ec33969",
            "BK+S+LuegGpS03L+x4Nld7Ws2JOWbK7hKCgI/HkJ7wgG5x51NCf+X0fJroEZBJNNy27cjYEG+ktkV06yB4g+Hzc=",
            "tYXJkccdLSeQ4Pwv4zmj6ffVvHJUO7SzBXLFytyyqdo=",
        ),
    ),
    # m/44'/60'/0'/0/502
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x1a07077772629460F0631523D83DA11F1238C4de",
            "0x6120ebf0b13ca814d2c143dd0cea4ba396a0d0b8fd57b813084c151eef798572410886b0936aa4d0d34d50bb59522d8117cf75b8c74811fd3334bf413eaf2355",
            "f77d8244b69df4ce9dd3429ab5154ed1e4a30b6ad350a5579548b6d8ee89f27d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x1a07077772629460F0631523D83DA11F1238C4de",
            "BGEg6/CxPKgU0sFD3QzqS6OWoNC4/Ve4EwhMFR7veYVyQQiGsJNqpNDTTVC7WVItgRfPdbjHSBH9MzS/QT6vI1U=",
            "932CRLad9M6d00KatRVO0eSjC2rTUKVXlUi22O6J8n0=",
        ),
    ),
    # m/44'/60'/0'/0/503
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x1b01ad22C9b3D59d56775a59bc8D56185625253E",
            "0x70c70f0bf3617c52b1680b79640c31d78c97c0902bc97fec02aece00570c5e83a7c58f54ec281a5114300dde127c1e10ecfa3f172b5d6d592cc503284c14446b",
            "38db6e4ea9ffc07fd94f40cd6345e50aa4ffb23fa47d4faa41fb3d396c79880a",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x1b01ad22C9b3D59d56775a59bc8D56185625253E",
            "BHDHDwvzYXxSsWgLeWQMMdeMl8CQK8l/7AKuzgBXDF6Dp8WPVOwoGlEUMA3eEnweEOz6PxcrXW1ZLMUDKEwURGs=",
            "ONtuTqn/wH/ZT0DNY0XlCqT/sj+kfU+qQfs9OWx5iAo=",
        ),
    ),
    # m/44'/60'/0'/0/504
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x9515852b4b83732Cac24F9754beD8c832455AD46",
            "0x3928f55adf1adb57c8a922c956b187d3756e8764c4c85de842581673739687417b6ce939ae92f6a257ee572f4620537a537385d45907a88e499ce96eb31b8df4",
            "d1d5d977ffe8ec84527aa1d979217128da503e0ebdab266d4d36e09367f592e9",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x9515852b4b83732Cac24F9754beD8c832455AD46",
            "BDko9VrfGttXyKkiyVaxh9N1bodkxMhd6EJYFnNzlodBe2zpOa6S9qJX7lcvRiBTelNzhdRZB6iOSZzpbrMbjfQ=",
            "0dXZd//o7IRSeqHZeSFxKNpQPg69qyZtTTbgk2f1kuk=",
        ),
    ),
    # m/44'/60'/0'/0/505
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x3b0FDD284AD838A4448D76418c9dA8e6E8a1B950",
            "0xc14bb9823eb5b8b4adb6354e350779a214d34c94c9de26522b2e14ed129b0e3da5a548f6e29564a09a8085457b4e69d0f83dedd9b77f626a8e6aeaaf012968a7",
            "f3bd93000216c802b9296fdf0213ff0826be64aca36453f13496a9eb469e339b",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x3b0FDD284AD838A4448D76418c9dA8e6E8a1B950",
            "BMFLuYI+tbi0rbY1TjUHeaIU00yUyd4mUisuFO0Smw49paVI9uKVZKCagIVFe05p0Pg97dm3f2JqjmrqrwEpaKc=",
            "872TAAIWyAK5KW/fAhP/CCa+ZKyjZFPxNJap60aeM5s=",
        ),
    ),
    # m/44'/60'/0'/0/506
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xFC75d8c467a713A6a8409D15EABeB627eFD90609",
            "0x2fc298e89fae59be021be6fe8a9feb582ebe7087c6ad3c480fcee5b5173ad5405c262945fac577b48e61a9f2254d41f2ba31f632c61f7fda535015c5a5abaf0d",
            "21dbbddc1318a0713cdda439dc59d55edf08c5827552e1bdfcc0cabddc9c4f7c",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xFC75d8c467a713A6a8409D15EABeB627eFD90609",
            "BC/CmOifrlm+Ahvm/oqf61guvnCHxq08SA/O5bUXOtVAXCYpRfrFd7SOYanyJU1B8rox9jLGH3/aU1AVxaWrrw0=",
            "Idu93BMYoHE83aQ53FnVXt8IxYJ1UuG9/MDKvdycT3w=",
        ),
    ),
    # m/44'/60'/0'/0/507
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xa6CF6Ec996066F85aB200dAbD673CDd3da6BF1E6",
            "0x2abb366a6c4b3b0a83852bbb755f11bc19785b4eae4707445f84eb31e7facb182adff4bf295cc78ac47d783662bd381cc024df414204de6a42da0d41b2797982",
            "019cf9e2bdb9b8e16224f75bcd410f58ace12b15b4ef75aeb0f19af1cbf87cc8",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xa6CF6Ec996066F85aB200dAbD673CDd3da6BF1E6",
            "BCq7NmpsSzsKg4Uru3VfEbwZeFtOrkcHRF+E6zHn+ssYKt/0vylcx4rEfXg2Yr04HMAk30FCBN5qQtoNQbJ5eYI=",
            "AZz54r25uOFiJPdbzUEPWKzhKxW073WusPGa8cv4fMg=",
        ),
    ),
    # m/44'/60'/0'/0/508
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x72E3C619Fa67A9CB493d248D6405557c2a3f7bb6",
            "0x2fa03f9f95f8eab0abd4e62b8aed1c965b8b07ccce61a40933918b60de454cf173b8facaaea96cfbe153852bf183d975fa6fcc925b5f0b059b62381849b206ab",
            "cf4c9529f5f14c2f4efa30a8e335ffb6260a383f3a41128f2e9a23fcafaad455",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x72E3C619Fa67A9CB493d248D6405557c2a3f7bb6",
            "BC+gP5+V+Oqwq9TmK4rtHJZbiwfMzmGkCTORi2DeRUzxc7j6yq6pbPvhU4Ur8YPZdfpvzJJbXwsFm2I4GEmyBqs=",
            "z0yVKfXxTC9O+jCo4zX/tiYKOD86QRKPLpoj/K+q1FU=",
        ),
    ),
    # m/44'/60'/0'/0/509
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x45755Fba7676f604318dBb921432507b4F3065c6",
            "0x99c5d004d6ee9ca53cad299646547b2d6c463a918a8918e5f5ce9daad79b20f7af73711213d194f82c7652e45bde13bc7753779d6ee09edbea9d70c0161a74d7",
            "7b1140d6d8c432e438c950578e927492549f92a76117beb8a41494496f254139",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x45755Fba7676f604318dBb921432507b4F3065c6",
            "BJnF0ATW7pylPK0plkZUey1sRjqRiokY5fXOnarXmyD3r3NxEhPRlPgsdlLkW94TvHdTd51u4J7b6p1wwBYadNc=",
            "exFA1tjEMuQ4yVBXjpJ0klSfkqdhF764pBSUSW8lQTk=",
        ),
    ),
    # m/44'/60'/0'/0/510
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xAAeeCDB1953AC97D2B588fbE4c3d9642cc7eD20E",
            "0xc53e4da837dc5279954f68a2bd554122394029ff11ef8217daa1a04076505926f555d5896332e2075be9448a3ab0efc4757ed8658b559175dab304203e907bed",
            "d527b07a52b773c2b88aa6a640f430b86676e411f5eac405e46d4008f9cf9c02",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xAAeeCDB1953AC97D2B588fbE4c3d9642cc7eD20E",
            "BMU+Tag33FJ5lU9oor1VQSI5QCn/Ee+CF9qhoEB2UFkm9VXViWMy4gdb6USKOrDvxHV+2GWLVZF12rMEID6Qe+0=",
            "1SewelK3c8K4iqamQPQwuGZ25BH16sQF5G1ACPnPnAI=",
        ),
    ),
    # m/44'/60'/0'/0/511
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x2D028179097f7493F128ABb8d110B28203DB73a0",
            "0x577183e20c0cdcddab2167957c1aa8c4204719ab0ec4a81b68f16c43e792955b1c8231c57aa217199497ef0f4f6e33703a05b8160f906b33f9eae269e4de7f72",
            "248b2c0a3758613252aee6a2b0b6d49b04b402f0d4ec35f130426a938523577b",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x2D028179097f7493F128ABb8d110B28203DB73a0",
            "BFdxg+IMDNzdqyFnlXwaqMQgRxmrDsSoG2jxbEPnkpVbHIIxxXqiFxmUl+8PT24zcDoFuBYPkGsz+eriaeTef3I=",
            "JIssCjdYYTJSruaisLbUmwS0AvDU7DXxMEJqk4UjV3s=",
        ),
    ),
    # m/44'/60'/0'/0/512
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x4eB51067c7809d4f9D128264A98cDd4Ac7A952c4",
            "0x11b8d491e5c3d9c728a3b2346fc944909a1f6337cf2aa3d5160ff6132f5a75a5e196cfdecc0b50c72d1d7d952e6716009703fa5e25a374c16002bdbe4a23682e",
            "e7916b347c302c5943140b188bc80b01c23a276f9d36682120c979d05dac3171",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x4eB51067c7809d4f9D128264A98cDd4Ac7A952c4",
            "BBG41JHlw9nHKKOyNG/JRJCaH2M3zyqj1RYP9hMvWnWl4ZbP3swLUMctHX2VLmcWAJcD+l4lo3TBYAK9vkojaC4=",
            "55FrNHwwLFlDFAsYi8gLAcI6J2+dNmghIMl50F2sMXE=",
        ),
    ),
    # m/44'/60'/0'/0/513
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x6c2a29f01c7ceD396ACd078aE604a8fb55797Cf6",
            "0xc011ebc9e638c463e1ad36dd596e52c88f66b2254d8a8c24817fed483da92921867e538c7a3a633039ac4218f2a67459ec875f13e2fd4009b0fd4eb56f3a7d88",
            "6e4b2a2bbb78310076cfaf30451d0e045bfb9f121c6708ef779d8ed3077e42da",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x6c2a29f01c7ceD396ACd078aE604a8fb55797Cf6",
            "BMAR68nmOMRj4a023VluUsiPZrIlTYqMJIF/7Ug9qSkhhn5TjHo6YzA5rEIY8qZ0WeyHXxPi/UAJsP1OtW86fYg=",
            "bksqK7t4MQB2z68wRR0OBFv7nxIcZwjvd52O0wd+Qto=",
        ),
    ),
    # m/44'/60'/0'/0/514
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x0b1213118eD7B9D4ceE93a339b46705EFeb19cf2",
            "0xb5499b9dc42ad8fd95e8986f64209bffeb2cf8abca399513707c6deed181cc4f29eb1dbdede6180229c1a66c9c2679039bff949debc39703377b14261c86b611",
            "0d7efc0dc89305da58dbe67fcf24ba88b6f5288b8470f597c3265ce9f3682e8a",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x0b1213118eD7B9D4ceE93a339b46705EFeb19cf2",
            "BLVJm53EKtj9leiYb2Qgm//rLPiryjmVE3B8be7RgcxPKesdve3mGAIpwaZsnCZ5A5v/lJ3rw5cDN3sUJhyGthE=",
            "DX78DciTBdpY2+Z/zyS6iLb1KIuEcPWXwyZc6fNoLoo=",
        ),
    ),
    # m/44'/60'/0'/0/515
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x6B0Ab78c72c397626Be29e17d00E509E5d3c6e23",
            "0xca9533211b807497f2938e4f28b1bdefdef97917378844f0f73dd894286b59feab4bccce7e5cc3a77aca5dd8e0afd783e778ab7ea23e02201d4aec060a04e4ec",
            "f8fbd7548d556c148386ea0b6ff78347e2e7416b3f7f73883a099818a3dec8fe",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x6B0Ab78c72c397626Be29e17d00E509E5d3c6e23",
            "BMqVMyEbgHSX8pOOTyixve/e+XkXN4hE8Pc92JQoa1n+q0vMzn5cw6d6yl3Y4K/Xg+d4q36iPgIgHUrsBgoE5Ow=",
            "+PvXVI1VbBSDhuoLb/eDR+LnQWs/f3OIOgmYGKPeyP4=",
        ),
    ),
    # m/44'/60'/0'/0/516
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xd3CbC3f6cdc5e5A0A12DFf36DD0C345F67D932fA",
            "0xf4a7fab9809d9e53d7b0698f44057be4922e2252abe61813b1c04e3763fe8f874ae706a369b58f0cc75b76396c2a227123a4fc093421a4c3572b4ed01ef488bb",
            "b923d3ca55294a735498aee987e4e88a4ef76b02a25124902480bf80e587058e",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xd3CbC3f6cdc5e5A0A12DFf36DD0C345F67D932fA",
            "BPSn+rmAnZ5T17Bpj0QFe+SSLiJSq+YYE7HATjdj/o+HSucGo2m1jwzHW3Y5bCoicSOk/Ak0IaTDVytO0B70iLs=",
            "uSPTylUpSnNUmK7ph+Toik73awKiUSSQJIC/gOWHBY4=",
        ),
    ),
    # m/44'/60'/0'/0/517
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x4c47E89C31A7E9f8e34d7c910ECA480d34CDa100",
            "0x034b2aa9b0d5678f62422c81b5f78d6f29354741a441d09be80a2ab11590dd37fbe81f1bd26c9bbd601028fd6219c75dfdcd986917a085eb7205b7e176c7a498",
            "526e44fba953ff3a1b6ccb871f8785ea295ef19295229ccd16641ef51c465b46",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x4c47E89C31A7E9f8e34d7c910ECA480d34CDa100",
            "BANLKqmw1WePYkIsgbX3jW8pNUdBpEHQm+gKKrEVkN03++gfG9Jsm71gECj9YhnHXf3NmGkXoIXrcgW34XbHpJg=",
            "Um5E+6lT/zobbMuHH4eF6ile8ZKVIpzNFmQe9RxGW0Y=",
        ),
    ),
    # m/44'/60'/0'/0/518
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x6B5645b99E6C3C23eF85Ce54a33F6B2557057762",
            "0xc4bfee276968dcea5ec529e0356e109935f024e1e8ba14c1caf87299ffe7a4729f087677e2c845a01a6624d174a7f9478d39478cbf6855701447e6696cf76815",
            "1657a8c02cb916ecec59b331671bcf7914a2e81bc4573b471c30970ce182b08a",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x6B5645b99E6C3C23eF85Ce54a33F6B2557057762",
            "BMS/7idpaNzqXsUp4DVuEJk18CTh6LoUwcr4cpn/56Rynwh2d+LIRaAaZiTRdKf5R405R4y/aFVwFEfmaWz3aBU=",
            "FleowCy5FuzsWbMxZxvPeRSi6BvEVztHHDCXDOGCsIo=",
        ),
    ),
    # m/44'/60'/0'/0/519
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x5E403E81475Cc02e26328ee487f32157A52355CF",
            "0x77bfd2e1f3adf809d276a02734e5514f3b6e4dbdb8efdd2e23c18793a38850ae77a6ca449219090cad3c7eb62b3af316b4883f3757e41f248372592df42ab866",
            "321b671d8c5eb5dc740e80d5f7426c01a8b7345096a0805e8c9f7c8794f5c75b",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x5E403E81475Cc02e26328ee487f32157A52355CF",
            "BHe/0uHzrfgJ0nagJzTlUU87bk29uO/dLiPBh5OjiFCud6bKRJIZCQytPH62KzrzFrSIPzdX5B8kg3JZLfQquGY=",
            "MhtnHYxetdx0DoDV90JsAai3NFCWoIBejJ98h5T1x1s=",
        ),
    ),
    # m/44'/60'/0'/0/520
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xeb7b62375A98dCA988713dB684d8985438CAc7DA",
            "0x75f4c4380064c35660d4c057982857251e84ea27fd4a259788f9f1cc4c11a16957322e6a7426fd57867191376d5eb8e123f598733637bed00380897e760696cb",
            "a2f7635db859b5423bbeb0e7d37328c54d64c61a54752592e912df1ccf11af09",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xeb7b62375A98dCA988713dB684d8985438CAc7DA",
            "BHX0xDgAZMNWYNTAV5goVyUehOon/Uoll4j58cxMEaFpVzIuanQm/VeGcZE3bV644SP1mHM2N77QA4CJfnYGlss=",
            "ovdjXbhZtUI7vrDn03MoxU1kxhpUdSWS6RLfHM8Rrwk=",
        ),
    ),
    # m/44'/60'/0'/0/521
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xb10DaF3E56C4f56D510CEC85366df5EF68232042",
            "0xfee1b17e50e0aab442a522221f3d328d93f868d34f3b33acd9f235f609f423ccc22a21923918d78584f982a16f2ae6c335cb03a985f3d0462eb7d517d6604262",
            "7d39940814fa011ea06c38f988882acbf8ddf4b8d0021d190ce1c8ee3f7f9fcf",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xb10DaF3E56C4f56D510CEC85366df5EF68232042",
            "BP7hsX5Q4Kq0QqUiIh89Mo2T+GjTTzszrNnyNfYJ9CPMwiohkjkY14WE+YKhbyrmwzXLA6mF89BGLrfVF9ZgQmI=",
            "fTmUCBT6AR6gbDj5iIgqy/jd9LjQAh0ZDOHI7j9/n88=",
        ),
    ),
    # m/44'/60'/0'/0/522
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x6E7D20227b123E8e67b2109c75E70F9330F09899",
            "0xde9e9dae7d8a19e6bab8619843472c3289946996fc917a82c1a9d510fff963023388d6efb1193252b054346bef168cb8cb2ec207da01b348cb09b95d6a0cf396",
            "b687de138865328d70af3c26461c82e3a7b1463f3c346b3c20f60845c1f2aa23",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x6E7D20227b123E8e67b2109c75E70F9330F09899",
            "BN6ena59ihnmurhhmENHLDKJlGmW/JF6gsGp1RD/+WMCM4jW77EZMlKwVDRr7xaMuMsuwgfaAbNIywm5XWoM85Y=",
            "tofeE4hlMo1wrzwmRhyC46exRj88NGs8IPYIRcHyqiM=",
        ),
    ),
    # m/44'/60'/0'/0/523
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xD510E509CccAe79CeC7251689A136C2f7cdF9bA9",
            "0xc735bf44826c23ae2a81fbd7254e78141a1431c51d9fe375b63fb3c37f6256ce86fda077173756ef081178b64607839eb5a30568eb48bd17eaee50a37d42b877",
            "ec6393e26793a790b52450baff4b67200fa650d5d18ec3f5fa7797055cf092c9",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xD510E509CccAe79CeC7251689A136C2f7cdF9bA9",
            "BMc1v0SCbCOuKoH71yVOeBQaFDHFHZ/jdbY/s8N/YlbOhv2gdxc3Vu8IEXi2RgeDnrWjBWjrSL0X6u5Qo31CuHc=",
            "7GOT4meTp5C1JFC6/0tnIA+mUNXRjsP1+neXBVzwksk=",
        ),
    ),
    # m/44'/60'/0'/0/524
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x29b4e80eF9064ec5D1E7Ad3112b00a431efaa2E4",
            "0x16aa190a578a6d0822cf8e5b1aa98dcdcb4a2a6853bd7b651a9fb2926d93da6f05c9eb5b55ab50e45abd8b16e69a7ae5e93a82ded305861f281d2f1ab374a3cd",
            "f03649150cb4991c5fca502d7ecd7747c7fbdf330505034dab4ef27d46fd227a",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x29b4e80eF9064ec5D1E7Ad3112b00a431efaa2E4",
            "BBaqGQpXim0IIs+OWxqpjc3LSipoU717ZRqfspJtk9pvBcnrW1WrUORavYsW5pp65ek6gt7TBYYfKB0vGrN0o80=",
            "8DZJFQy0mRxfylAtfs13R8f73zMFBQNNq07yfUb9Ino=",
        ),
    ),
    # m/44'/60'/0'/0/525
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x3e43Ceb81A11A19652F1AB6FF1A00D94A5c05e57",
            "0x34bdb412d112cfc4ee3ded1a6ec958a8dc34a152af46a06ea716281ced501b42d22beb5d96651d68543437b0fced717593c7cd9968202cf0199a94ca2b9d1f72",
            "118fcf10f391913ee721635cd8391a356c7b0dab4d649fd3e5f5458d1f509a90",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x3e43Ceb81A11A19652F1AB6FF1A00D94A5c05e57",
            "BDS9tBLREs/E7j3tGm7JWKjcNKFSr0agbqcWKBztUBtC0ivrXZZlHWhUNDew/O1xdZPHzZloICzwGZqUyiudH3I=",
            "EY/PEPORkT7nIWNc2DkaNWx7DatNZJ/T5fVFjR9QmpA=",
        ),
    ),
    # m/44'/60'/0'/0/526
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xe3A2ab4Fa57E550A30355762d1801546cEbC9E6f",
            "0x8a184a45be0b27cf56582e8c634a8c7b99910020d52934b993bd825555d948da91d72c8df1e88d1c62e9f1ea9be6b708f74f2168c43acd576ffac334c430a4e5",
            "4f9019ce38a3f7fa3c58f30724c3c2887c964ac3997904fd0473f5a2f8965eed",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xe3A2ab4Fa57E550A30355762d1801546cEbC9E6f",
            "BIoYSkW+CyfPVlgujGNKjHuZkQAg1Sk0uZO9glVV2UjakdcsjfHojRxi6fHqm+a3CPdPIWjEOs1Xb/rDNMQwpOU=",
            "T5AZzjij9/o8WPMHJMPCiHyWSsOZeQT9BHP1oviWXu0=",
        ),
    ),
    # m/44'/60'/0'/0/527
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x4835Bf33c94D17Eee6286607ef4030C91178a94D",
            "0x5aae47ed243fe95d6d2a26213ec61644d6a0d182492c540ee84272fa23c5724a18b5c8bce74a8f33a20c7a2add7ae6ecddac7cf42fc0150af36e296d7bd84458",
            "6a816ecd16556ccabc645251e364efa0d17590c21538deaf6a8c1cf10cedaeb4",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x4835Bf33c94D17Eee6286607ef4030C91178a94D",
            "BFquR+0kP+ldbSomIT7GFkTWoNGCSSxUDuhCcvojxXJKGLXIvOdKjzOiDHoq3Xrm7N2sfPQvwBUK824pbXvYRFg=",
            "aoFuzRZVbMq8ZFJR42TvoNF1kMIVON6vaowc8QztrrQ=",
        ),
    ),
    # m/44'/60'/0'/0/528
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xa8A1fbD9B8069DA0d064EB5e600f5569c3c3aee3",
            "0x78708b6403362391886d9864da713c4464b990290a0fea97addc57e996a526572acf0af7d33be97813fccf36809c87146ca0a9502e93a60871ffea17953156f4",
            "87adb5746253e5c590704f687fa5dba58393ca10fd7570aaeeba4a3931b96972",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xa8A1fbD9B8069DA0d064EB5e600f5569c3c3aee3",
            "BHhwi2QDNiORiG2YZNpxPERkuZApCg/ql63cV+mWpSZXKs8K99M76XgT/M82gJyHFGygqVAuk6YIcf/qF5UxVvQ=",
            "h621dGJT5cWQcE9of6XbpYOTyhD9dXCq7rpKOTG5aXI=",
        ),
    ),
    # m/44'/60'/0'/0/529
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x577E6c7c9ca9F467Cb3311a6560b02D115cDa655",
            "0x1b1e73c741e8956eb69feb54b0ab3b161ceeec1395e901531fea00ddae817c8b7ef31d10916cc374eaefc7366f6997db8361d841551907d3337f54dc458ed10b",
            "17529863cc7da93f3708442e4354c9b9e1662188c91a38b7e71f9adc055646a5",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x577E6c7c9ca9F467Cb3311a6560b02D115cDa655",
            "BBsec8dB6JVutp/rVLCrOxYc7uwTlekBUx/qAN2ugXyLfvMdEJFsw3Tq78c2b2mX24Nh2EFVGQfTM39U3EWO0Qs=",
            "F1KYY8x9qT83CEQuQ1TJueFmIYjJGji35x+a3AVWRqU=",
        ),
    ),
    # m/44'/60'/0'/0/530
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x819Ac94B1D7dd753E790a929922Af40416666e84",
            "0x70c4208c1b7d2cc83f894f7c5a625e41bea2fa91d2396b359480dfe1b14143e3e02e952049e4d74ec8bf2acd87f13975dee36f1b49746ca51c1a78e6f8487d3b",
            "8bd1538dd762e5c080eb966458bb5ee85170ffed8fc109e8383194040d008410",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x819Ac94B1D7dd753E790a929922Af40416666e84",
            "BHDEIIwbfSzIP4lPfFpiXkG+ovqR0jlrNZSA3+GxQUPj4C6VIEnk107IvyrNh/E5dd7jbxtJdGylHBp45vhIfTs=",
            "i9FTjddi5cCA65ZkWLte6FFw/+2PwQnoODGUBA0AhBA=",
        ),
    ),
    # m/44'/60'/0'/0/531
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x651B682D073402ab1633BFEaBd103C3DD3Cd9B5D",
            "0x5fde1b29e42eb509a5dc00bced9a9bcb13d3920ab73d8d080df7e8da220f41044d7677d4489deb6bcc39ed502d52953714239e728c892196d95a20e2bc107fa1",
            "924bded44d8b55359e9c50ec8b13c4319487b0c747a592091f59aecd2162fc54",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x651B682D073402ab1633BFEaBd103C3DD3Cd9B5D",
            "BF/eGynkLrUJpdwAvO2am8sT05IKtz2NCA336NoiD0EETXZ31Eid62vMOe1QLVKVNxQjnnKMiSGW2Vog4rwQf6E=",
            "kkve1E2LVTWenFDsixPEMZSHsMdHpZIJH1muzSFi/FQ=",
        ),
    ),
    # m/44'/60'/0'/0/532
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x57C0606AfD21C3f2F603e077C2Fc0339e7909F12",
            "0xfff8556f251ed87518d4b56ef33340907a5bfe6e6d4f8e1338443142f5cfce986040ad4eaa06715da4cf643d858e1903aac900d378d6db304e324ba0285ab325",
            "6e6f499bc09cb038ba29b599e54010af5434e6a766a9278409c34d3ef5a6dd09",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x57C0606AfD21C3f2F603e077C2Fc0339e7909F12",
            "BP/4VW8lHth1GNS1bvMzQJB6W/5ubU+OEzhEMUL1z86YYECtTqoGcV2kz2Q9hY4ZA6rJANN41tswTjJLoChasyU=",
            "bm9Jm8CcsDi6KbWZ5UAQr1Q05qdmqSeECcNNPvWm3Qk=",
        ),
    ),
    # m/44'/60'/0'/0/533
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xaBE471f98AB0b8580bb3c2997B84cb65f52085be",
            "0xac91612041559812341e6c34dc3dee745b9aefeab25ee7f19013b70bf84c80e4aa68cd4a62b9cbd7341206a748739cebc804a46c20e82578105826d82cc6a982",
            "3bfefa55d9a4214090bd6be418930a27d30be7f17e9fed91b888eb924a139870",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xaBE471f98AB0b8580bb3c2997B84cb65f52085be",
            "BKyRYSBBVZgSNB5sNNw97nRbmu/qsl7n8ZATtwv4TIDkqmjNSmK5y9c0EganSHOc68gEpGwg6CV4EFgm2CzGqYI=",
            "O/76VdmkIUCQvWvkGJMKJ9ML5/F+n+2RuIjrkkoTmHA=",
        ),
    ),
    # m/44'/60'/0'/0/534
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x2b8Cb3CAdF15f103718b7522c612a89CC9100DCa",
            "0x3fd54906705d05327e2b281ee079085ba9f2637f1a184fc690d34a5c856f1b69f5aba8b11a85ef9935bc7b0e4fea2527b8edb4e948648c08de98d74d7ff6591f",
            "f6aba5b335e72c0448964ff6de8a6c61c3c68f77f94976ae8dc66e4c163cfc5a",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x2b8Cb3CAdF15f103718b7522c612a89CC9100DCa",
            "BD/VSQZwXQUyfisoHuB5CFup8mN/GhhPxpDTSlyFbxtp9auosRqF75k1vHsOT+olJ7jttOlIZIwI3pjXTX/2WR8=",
            "9qulszXnLARIlk/23opsYcPGj3f5SXaujcZuTBY8/Fo=",
        ),
    ),
    # m/44'/60'/0'/0/535
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x0E7812c28e29704C2f3b9A3C182238c3Fe1b0e8a",
            "0xd7150ecb1b7407af11e9832d9eb75861037d83808e9fc5d3506544847510761d67f175de4e3db69071f998532ce0fa7fdf586c26ba0a519c017c38704ad21ffa",
            "739bfdbbbf3122cf1a0545be633995106dc05be79afd2d8cec6463c7f18ffa1e",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x0E7812c28e29704C2f3b9A3C182238c3Fe1b0e8a",
            "BNcVDssbdAevEemDLZ63WGEDfYOAjp/F01BlRIR1EHYdZ/F13k49tpBx+ZhTLOD6f99YbCa6ClGcAXw4cErSH/o=",
            "c5v9u78xIs8aBUW+YzmVEG3AW+ea/S2M7GRjx/GP+h4=",
        ),
    ),
    # m/44'/60'/0'/0/536
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xE50eDdfC1Df8E4199a00da862Fb6F273cf8389c6",
            "0x90146f290c46815306999e08c1082228652be3a22d14ed204d284f6f643413090e04f5d9b773f71f82251c5e96dc128f9f24adb633ad371907e20f8f57cbdfb5",
            "ea47c117f813059bebcb4603f862608affa675dbdc52bcd5b710d3a2d1b9e594",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xE50eDdfC1Df8E4199a00da862Fb6F273cf8389c6",
            "BJAUbykMRoFTBpmeCMEIIihlK+OiLRTtIE0oT29kNBMJDgT12bdz9x+CJRxeltwSj58krbYzrTcZB+IPj1fL37U=",
            "6kfBF/gTBZvry0YD+GJgiv+mddvcUrzVtxDTotG55ZQ=",
        ),
    ),
    # m/44'/60'/0'/0/537
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x3f0747678770D7485fF4a6eE748217aeAeFB796d",
            "0x3882f7b40da337a6786615a93dfd6ba6f1ad17d1987767b87e6746b67efb2584931bba7f326329711fb29e1163862f9f9629c6656ae5593748c187c2de13eca1",
            "199f02737cc23cca6303eb6bc0b169cc653b320e730f33119f06ceeb13674bcc",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x3f0747678770D7485fF4a6eE748217aeAeFB796d",
            "BDiC97QNozemeGYVqT39a6bxrRfRmHdnuH5nRrZ++yWEkxu6fzJjKXEfsp4RY4Yvn5YpxmVq5Vk3SMGHwt4T7KE=",
            "GZ8Cc3zCPMpjA+trwLFpzGU7Mg5zDzMRnwbO6xNnS8w=",
        ),
    ),
    # m/44'/60'/0'/0/538
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xb13FcCe484fbEb49467F3350252f041775A29111",
            "0x13346e80a629e6b8ca7542997c457d664493461b695966249acae0877846f185d59f51f9671578cbf2c65a1f20ad93c652f9c927f2236f625ee9beaef4d5a9a9",
            "d5eb7cfec7773e2ae8f69fe7658cabc05d9d4122646fc10b3afaf7884b475dc6",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xb13FcCe484fbEb49467F3350252f041775A29111",
            "BBM0boCmKea4ynVCmXxFfWZEk0YbaVlmJJrK4Id4RvGF1Z9R+WcVeMvyxlofIK2TxlL5ySfyI29iXum+rvTVqak=",
            "1et8/sd3Piro9p/nZYyrwF2dQSJkb8ELOvr3iEtHXcY=",
        ),
    ),
    # m/44'/60'/0'/0/539
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xc5B64Dd44c927996258f83a91126Fa5F6Da65513",
            "0xcd29db2125f5e3bec27fa3a6119885606d95fb0df1b645114a1001f9383f0fcf38df976a5cec828039a33b2bc962139e50e3f080132edb07e57c2ca86cd4e7a2",
            "c6a9ed17567e02193a84fbdfc0a6e812d80cc23a8ca5c8c0b0e467c818663cf6",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xc5B64Dd44c927996258f83a91126Fa5F6Da65513",
            "BM0p2yEl9eO+wn+jphGYhWBtlfsN8bZFEUoQAfk4Pw/PON+XalzsgoA5ozsryWITnlDj8IATLtsH5XwsqGzU56I=",
            "xqntF1Z+Ahk6hPvfwKboEtgMwjqMpcjAsORnyBhmPPY=",
        ),
    ),
    # m/44'/60'/0'/0/540
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x5f219B320485E99F479EAe63203d8Ee0AfAB450C",
            "0xca3286ea0417d35fa7454bf7d48ac66e3cd48fdbb6bc093a116273f8ba0c2d879fcd0f3ee492c54efa528308c58ec690ff124787352339c48b89f315a8a76560",
            "07c86fc9727813936b244266cbcd3fc06a9c23e7b1c9329345765d959f5cc283",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x5f219B320485E99F479EAe63203d8Ee0AfAB450C",
            "BMoyhuoEF9Nfp0VL99SKxm481I/btrwJOhFic/i6DC2Hn80PPuSSxU76UoMIxY7GkP8SR4c1IznEi4nzFainZWA=",
            "B8hvyXJ4E5NrJEJmy80/wGqcI+exyTKTRXZdlZ9cwoM=",
        ),
    ),
    # m/44'/60'/0'/0/541
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xe4858dFe4655cFDb6eEdE735aF8D89e75d36e439",
            "0x9681213cfaccfb83f50567f4fedf8e7eb30d3d575d18c9b3c8345b7749f004ee753d65d7d06f79615b8957c213d6d60efc6ebbc91b6c061d900a4be377256664",
            "586db7f638bdb167aa8f75b1a3354b4b4da2f799e7a31bb70120c70b85e0bee2",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xe4858dFe4655cFDb6eEdE735aF8D89e75d36e439",
            "BJaBITz6zPuD9QVn9P7fjn6zDT1XXRjJs8g0W3dJ8ATudT1l19BveWFbiVfCE9bWDvxuu8kbbAYdkApL43clZmQ=",
            "WG239ji9sWeqj3WxozVLS02i95nnoxu3ASDHC4XgvuI=",
        ),
    ),
    # m/44'/60'/0'/0/542
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x772B7aA9d9417160F4fc7BD3d64f3dE22540e532",
            "0x458faddae857f89802d50413ddeb1ddfaa3fbd6692cb4f33bf2fd32906bc930440f3ae9b7721daa0fe53a14578bd9af24667f3e4b58f4a468f2948e1239d864f",
            "baf601548b21f777c70285b49eb09370406e816f17f6be3452e7eff79d207bf5",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x772B7aA9d9417160F4fc7BD3d64f3dE22540e532",
            "BEWPrdroV/iYAtUEE93rHd+qP71mkstPM78v0ykGvJMEQPOum3ch2qD+U6FFeL2a8kZn8+S1j0pGjylI4SOdhk8=",
            "uvYBVIsh93fHAoW0nrCTcEBugW8X9r40Uufv950ge/U=",
        ),
    ),
    # m/44'/60'/0'/0/543
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xd5d9d6B867b93a52784370d7FCeb1e9Fd1B648d5",
            "0x04473b17b59b4f8bf621bf1566b2f38188fc3dd4d2203401ab4744d23c0b053dc0d41f78f720415df50e6ac3475fd9822d33776c019093d9f186dae6c6994206",
            "d3436f3e01bdcbf2df79644599d5323a102ce8b4d12198623595a91ada491958",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xd5d9d6B867b93a52784370d7FCeb1e9Fd1B648d5",
            "BARHOxe1m0+L9iG/FWay84GI/D3U0iA0AatHRNI8CwU9wNQfePcgQV31DmrDR1/Zgi0zd2wBkJPZ8Yba5saZQgY=",
            "00NvPgG9y/LfeWRFmdUyOhAs6LTRIZhiNZWpGtpJGVg=",
        ),
    ),
    # m/44'/60'/0'/0/544
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x3896594783C6BcFD74a70c603C0a5613c2542CAE",
            "0xce5341c80bbc3ea4079c6763522608f526f99672dccd854c1b486855ea225dc7042b6934509b7194e828016dc0152ed1117852c068e7c560d41be2a1c839f343",
            "ed39c0e995f19751abd2349fb81312c1a951a4afec8742461a51ed31446c1f4d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x3896594783C6BcFD74a70c603C0a5613c2542CAE",
            "BM5TQcgLvD6kB5xnY1ImCPUm+ZZy3M2FTBtIaFXqIl3HBCtpNFCbcZToKAFtwBUu0RF4UsBo58Vg1Bviocg580M=",
            "7TnA6ZXxl1Gr0jSfuBMSwalRpK/sh0JGGlHtMURsH00=",
        ),
    ),
    # m/44'/60'/0'/0/545
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x8D39FA1f25e9236179F7b642afC9167fa8067BD5",
            "0x6cec627761e08a30437b8d7a809474c798d2635dec60fb9c85a9491624fb8a8c94d809741b53115e1cb29ab60f56fa1e46f21f8083083eead94043a8d8c334c0",
            "d215daea158c1115f7e459cb9a7b1d2bdb5e3f4fa412a3c4ef91cf432db6bbf6",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x8D39FA1f25e9236179F7b642afC9167fa8067BD5",
            "BGzsYndh4IowQ3uNeoCUdMeY0mNd7GD7nIWpSRYk+4qMlNgJdBtTEV4cspq2D1b6HkbyH4CDCD7q2UBDqNjDNMA=",
            "0hXa6hWMERX35FnLmnsdK9teP0+kEqPE75HPQy22u/Y=",
        ),
    ),
    # m/44'/60'/0'/0/546
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x188FF38350f13c70ab403253D79B27544F43c2EF",
            "0x40f78dc966b5cfa0e792e6f241345f1866654ebc66fcbe0d12ec1ccdf3acb9edb80ab4fe5528325aef40f99bca9aa9fa9a4dcb37db472ac21c2969054a90ee2d",
            "25f31484c0e62b3b26ef35ffbc04ad368ddab662fe3fd7649fd4d03f6d86771f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x188FF38350f13c70ab403253D79B27544F43c2EF",
            "BED3jclmtc+g55Lm8kE0XxhmZU68Zvy+DRLsHM3zrLntuAq0/lUoMlrvQPmbypqp+ppNyzfbRyrCHClpBUqQ7i0=",
            "JfMUhMDmKzsm7zX/vAStNo3atmL+P9dkn9TQP22Gdx8=",
        ),
    ),
    # m/44'/60'/0'/0/547
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x903f93380831D5359FcC40c81d923e15ad4ee0E4",
            "0x44579b9f70f1cb5afab6dda0e5b97494e3fc791af18bbe32f1566941bd63dc7dfedf034e106191331a22283b6ae11fdaed7d8c5f422d4001c44a113e2fa9675b",
            "bd8d45d49c8f0b384bc0aafbd287c9008b4fe8554f9d43614e7bad8352c23a9c",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x903f93380831D5359FcC40c81d923e15ad4ee0E4",
            "BERXm59w8cta+rbdoOW5dJTj/Hka8Yu+MvFWaUG9Y9x9/t8DThBhkTMaIig7auEf2u19jF9CLUABxEoRPi+pZ1s=",
            "vY1F1JyPCzhLwKr70ofJAItP6FVPnUNhTnutg1LCOpw=",
        ),
    ),
    # m/44'/60'/0'/0/548
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xaE5587eAefF7958b03aa8639918EC507B7332368",
            "0x050ac500872fad9840b6f772bf5edc614e830ba8415b735ae4c2c3053a8268d3c3bbcbbe72987057bc44f7ad4206c4008bbb2365f2080bfdb5a9c4bf8948572e",
            "ec6e8666957829d5c9821d85e526b770df88029fa217c55b980c82b09bed9310",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xaE5587eAefF7958b03aa8639918EC507B7332368",
            "BAUKxQCHL62YQLb3cr9e3GFOgwuoQVtzWuTCwwU6gmjTw7vLvnKYcFe8RPetQgbEAIu7I2XyCAv9tanEv4lIVy4=",
            "7G6GZpV4KdXJgh2F5Sa3cN+IAp+iF8VbmAyCsJvtkxA=",
        ),
    ),
    # m/44'/60'/0'/0/549
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x91Fb5c2b24E7a6B05305581170813e382dAebCB2",
            "0x2be9fdfec1fb9fb31280e9bb50f232f75923d29ba3b53b0ff6ae5ad3981aaa786c0e55b59953372b695ea0b1422c59a793869d1b51605379f52d5e260d0afe1e",
            "a0a77d1a727494ad12338819596dfbec019fe111d47d813e4de9720730c968d5",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x91Fb5c2b24E7a6B05305581170813e382dAebCB2",
            "BCvp/f7B+5+zEoDpu1DyMvdZI9Kbo7U7D/auWtOYGqp4bA5VtZlTNytpXqCxQixZp5OGnRtRYFN59S1eJg0K/h4=",
            "oKd9GnJ0lK0SM4gZWW377AGf4RHUfYE+TelyBzDJaNU=",
        ),
    ),
    # m/44'/60'/0'/0/550
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x4C9061A7F2147a48F0172c0e09bAE325775CE67F",
            "0xb0162663f4869c787289fd59410cf886aa5f514b42163a5544e36ec556647d37558c0f8e2d0dbc564344ed41f38929be1c7032200304b6ac65c61e8123a51747",
            "67d1d80dd94ca8b27b92ecc10ad12e8c8170f75002766daff23d177cc47f48e9",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x4C9061A7F2147a48F0172c0e09bAE325775CE67F",
            "BLAWJmP0hpx4con9WUEM+IaqX1FLQhY6VUTjbsVWZH03VYwPji0NvFZDRO1B84kpvhxwMiADBLasZcYegSOlF0c=",
            "Z9HYDdlMqLJ7kuzBCtEujIFw91ACdm2v8j0XfMR/SOk=",
        ),
    ),
    # m/44'/60'/0'/0/551
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xc18C847B507E9E2f3fc6Fa6076F188E1DAcB0322",
            "0x16597da8f63ba1c470fbe794348cd0b7911a894f761b1aa42fcc7fb9812e472e77d5d72d072dd06a75d6dfa72274c894b70844497b6050d6b2215ee44d9ad208",
            "b8cffac574f8eb6ef4df06d829c4a8af0011cec0ccc2750be07c9999bc37e892",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xc18C847B507E9E2f3fc6Fa6076F188E1DAcB0322",
            "BBZZfaj2O6HEcPvnlDSM0LeRGolPdhsapC/Mf7mBLkcud9XXLQct0Gp11t+nInTIlLcIREl7YFDWsiFe5E2a0gg=",
            "uM/6xXT462703wbYKcSorwARzsDMwnUL4HyZmbw36JI=",
        ),
    ),
    # m/44'/60'/0'/0/552
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x21c88Af54b33dC608dC55941A6fdfcf5aA3bE274",
            "0x9dac4f5e0a8bae470b20768d1687a3515e431f9f229fa964e8befe2962bfc5ee2f4d6a7151f35039e707bf28cbde479d2e30ca9512b19675958a41861a175524",
            "e932f0953d499737ea29c661d690a93ddf5e91bb80a39f34f443602f67ed7ef1",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x21c88Af54b33dC608dC55941A6fdfcf5aA3bE274",
            "BJ2sT14Ki65HCyB2jRaHo1FeQx+fIp+pZOi+/iliv8XuL01qcVHzUDnnB78oy95HnS4wypUSsZZ1lYpBhhoXVSQ=",
            "6TLwlT1JlzfqKcZh1pCpPd9ekbuAo5809ENgL2ftfvE=",
        ),
    ),
    # m/44'/60'/0'/0/553
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x444e632F723ab70B7264e990D1Df1e73E402ad69",
            "0xe373c0af5fd8d8d8b001b4ec671df53a4d5ec6d17ed89d0cc1a5d71d6ed18e3fcf77ffb6ce665d192c45fc2b533799bc22c8b8dd974abb970e24c0f65e6d87b5",
            "250813c31c81c550194153027afc3ff8818cbd302f8ece8f4fad354967395e40",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x444e632F723ab70B7264e990D1Df1e73E402ad69",
            "BONzwK9f2NjYsAG07Gcd9TpNXsbRftidDMGl1x1u0Y4/z3f/ts5mXRksRfwrUzeZvCLIuN2XSruXDiTA9l5th7U=",
            "JQgTwxyBxVAZQVMCevw/+IGMvTAvjs6PT601SWc5XkA=",
        ),
    ),
    # m/44'/60'/0'/0/554
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x121cF57f3ec8E12E537aAEbbD6B7535696D1c8dB",
            "0x432810f4156249f3573ea64cc009d847bd893646423d86710fbb45776776e3a4657589c870e79f735a020d7534d16fd08ffa91949d7441c67e49d428e2cada43",
            "97de5ecc7427b19928a1ec8e8624407bac1b2fd7ab34044c93d6976108a5c617",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x121cF57f3ec8E12E537aAEbbD6B7535696D1c8dB",
            "BEMoEPQVYknzVz6mTMAJ2Ee9iTZGQj2GcQ+7RXdnduOkZXWJyHDnn3NaAg11NNFv0I/6kZSddEHGfknUKOLK2kM=",
            "l95ezHQnsZkooeyOhiRAe6wbL9erNARMk9aXYQilxhc=",
        ),
    ),
    # m/44'/60'/0'/0/555
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x3F933ed29A819F64Bf37b592B143e4A46eC68f8d",
            "0xd0a0880fc9e5e5ce3cd41574c0192a2cff214b5e25d7378cd2cb9bb31c17a818037a1e9759d0df2bdfb8ed993aa87dcc7e0d968813d1ae5f355be52a66b8889d",
            "99bc4019fe4f5ec3e25febeebc44a5a375dc4f405e14e1b6703c3fa5fe6b67fd",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x3F933ed29A819F64Bf37b592B143e4A46eC68f8d",
            "BNCgiA/J5eXOPNQVdMAZKiz/IUteJdc3jNLLm7McF6gYA3oel1nQ3yvfuO2ZOqh9zH4NlogT0a5fNVvlKma4iJ0=",
            "mbxAGf5PXsPiX+vuvESlo3XcT0BeFOG2cDw/pf5rZ/0=",
        ),
    ),
    # m/44'/60'/0'/0/556
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x388731c60C71C4252aCB7E76F2dF8e76e51C73C2",
            "0x3bdd01c1a2c72c9376454798abf4944c3a547f8ae8d6375b5a13a053df910429879b14b22a9b2d01c16003bfef26ebe41e77947ffbfb4eba71c76bdc093cecef",
            "109b979e7536286f1c6b54a29629a25c5dd57a47a9e18aa9141871db919ffdd4",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x388731c60C71C4252aCB7E76F2dF8e76e51C73C2",
            "BDvdAcGixyyTdkVHmKv0lEw6VH+K6NY3W1oToFPfkQQph5sUsiqbLQHBYAO/7ybr5B53lH/7+066ccdr3Ak87O8=",
            "EJuXnnU2KG8ca1SilimiXF3Vekep4YqpFBhx25Gf/dQ=",
        ),
    ),
    # m/44'/60'/0'/0/557
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x944D2A071e7f81a62b16e9544c091C2A78692029",
            "0x616d5662144a1fd9038247290c2ddf1bd269a9eac0e7b400a0a9c83ca05be31e6f0e43e754a2d68dc10f401c724f95a7ba2bfba14bf657fe4c043c25fde288e9",
            "06ccb7de3494553c78dd0004f66f5db18f813e86023f7bda879ef5fd2616a840",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x944D2A071e7f81a62b16e9544c091C2A78692029",
            "BGFtVmIUSh/ZA4JHKQwt3xvSaanqwOe0AKCpyDygW+Mebw5D51Si1o3BD0Acck+Vp7or+6FL9lf+TAQ8Jf3iiOk=",
            "Bsy33jSUVTx43QAE9m9dsY+BPoYCP3vah571/SYWqEA=",
        ),
    ),
    # m/44'/60'/0'/0/558
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x25413305aA3dF71E1faF39cDC23BA178E64CAdC7",
            "0xf7b40c6c87ff159a90411746166e7f1de4ce093352615ff905454d5042b6bc063a79e71e1c091a76c9f9da2b14b6c107d750da07597126dbdfa787210cc2592e",
            "1bd3e19c4939e0695e94eb3faf6065a9238c3be6e06971a9b09ac4891bd4ef47",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x25413305aA3dF71E1faF39cDC23BA178E64CAdC7",
            "BPe0DGyH/xWakEEXRhZufx3kzgkzUmFf+QVFTVBCtrwGOnnnHhwJGnbJ+dorFLbBB9dQ2gdZcSbb36eHIQzCWS4=",
            "G9PhnEk54GlelOs/r2BlqSOMO+bgaXGpsJrEiRvU70c=",
        ),
    ),
    # m/44'/60'/0'/0/559
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xa632AFAC31f9bb62AF1A8A3709536390d7929eA8",
            "0x7f869598f86baa4d5456f170524f415bfb109ad477d0cf8c4d0773cf9f757b9be14db6d49a9dd02e65dda0fa5d49a2b82b3458da8a9ba9a356023457671a7532",
            "62fcf6fc84ffc59479796852a2cc2a333879160595bdda2b5c465ee577f96ada",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xa632AFAC31f9bb62AF1A8A3709536390d7929eA8",
            "BH+GlZj4a6pNVFbxcFJPQVv7EJrUd9DPjE0Hc8+fdXub4U221Jqd0C5l3aD6XUmiuCs0WNqKm6mjVgI0V2cadTI=",
            "Yvz2/IT/xZR5eWhSoswqMzh5FgWVvdorXEZe5Xf5ato=",
        ),
    ),
    # m/44'/60'/0'/0/560
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x1BB1D209C38E6cdada7c528DF8149f76d851573a",
            "0xfce1996f9a54f8b8b3d8bf6e3cc65672773b3eb73bad6f2d47327a120d9ca4912b5bd49e3dbfe5bc28b41aea4be1a6a6bb0be807aa3c0fc2920b821213e981de",
            "a9556015309c96d3dc4c1eefb7859ebe863a64de3863378bd578614ccdd26e2e",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x1BB1D209C38E6cdada7c528DF8149f76d851573a",
            "BPzhmW+aVPi4s9i/bjzGVnJ3Oz63O61vLUcyehINnKSRK1vUnj2/5bwotBrqS+GmprsL6AeqPA/CkguCEhPpgd4=",
            "qVVgFTCcltPcTB7vt4WevoY6ZN44YzeL1XhhTM3Sbi4=",
        ),
    ),
    # m/44'/60'/0'/0/561
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xACDD13429F5a9E77cfd0c92fcB47E082926476Ab",
            "0x0c841262f260a017497d14abf9c84160763f14ab654fcb2765d7384e564c87434dcba29da3a9e2afdb9246e23e046c8cf1e2c13d0d816a552e2b77c70b08e52d",
            "21811669991b6616c0cf047e8366d7d8be32ed600628c0362a1bde220aa79308",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xACDD13429F5a9E77cfd0c92fcB47E082926476Ab",
            "BAyEEmLyYKAXSX0Uq/nIQWB2PxSrZU/LJ2XXOE5WTIdDTcuinaOp4q/bkkbiPgRsjPHiwT0NgWpVLit3xwsI5S0=",
            "IYEWaZkbZhbAzwR+g2bX2L4y7WAGKMA2KhveIgqnkwg=",
        ),
    ),
    # m/44'/60'/0'/0/562
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xC67c97e6db7C4020B3e1182c6f2F0174CC2eCE2C",
            "0x8f0fa866bf0fc7d7caf85020c5fb77d654845913369549cafea75cb87ddaa808390221d9a4cd0f695071b21b10d15be32a7cc049a705842c34aad9434c6e735f",
            "927380dd9f4499c8f6d1706fced6fdb3bb08df1a3f4e013712f1044e87cc68da",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xC67c97e6db7C4020B3e1182c6f2F0174CC2eCE2C",
            "BI8PqGa/D8fXyvhQIMX7d9ZUhFkTNpVJyv6nXLh92qgIOQIh2aTND2lQcbIbENFb4yp8wEmnBYQsNKrZQ0xuc18=",
            "knOA3Z9Emcj20XBvztb9s7sI3xo/TgE3EvEETofMaNo=",
        ),
    ),
    # m/44'/60'/0'/0/563
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xbFe2516A69c3108c8e4fA09C65F3792B2AbDb988",
            "0x5f6c269bed513499ba73ecee58ca2b35efdb5ee5376fc3e7702b119c92c2ee690a02abdc3a3ad5bcf05fb36c6cba4a895bf7fb7f5553eaab67e31a6a233a0e14",
            "7d70e49365b26249690ea5a6b88a2a2bb3eae61961b26fa168fc97c9411de306",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xbFe2516A69c3108c8e4fA09C65F3792B2AbDb988",
            "BF9sJpvtUTSZunPs7ljKKzXv217lN2/D53ArEZySwu5pCgKr3Do61bzwX7NsbLpKiVv3+39VU+qrZ+MaaiM6DhQ=",
            "fXDkk2WyYklpDqWmuIoqK7Pq5hlhsm+haPyXyUEd4wY=",
        ),
    ),
    # m/44'/60'/0'/0/564
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xBF012E3d101Ff351443b5359bebe9DB048AdfA70",
            "0x571f803ed19630736ec8d5081491e27a7ded24bac9335dc3c176cf1f643afec7af38fc603aee6499aa307f81f622542a64dbfcf81c7e63b8455459e7601e75ed",
            "a1ba392cd4b8403b42af90909dad4d069cd3180da655402dd550e12ee3717aa8",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xBF012E3d101Ff351443b5359bebe9DB048AdfA70",
            "BFcfgD7RljBzbsjVCBSR4np97SS6yTNdw8F2zx9kOv7Hrzj8YDruZJmqMH+B9iJUKmTb/PgcfmO4RVRZ52Aede0=",
            "obo5LNS4QDtCr5CQna1NBpzTGA2mVUAt1VDhLuNxeqg=",
        ),
    ),
    # m/44'/60'/0'/0/565
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xbcD12Ed2D4B809AfaaA26CC46fD3B92d28A1f60e",
            "0xaeebdb74a7e4972d17c2b7b191388839a927d936fa913be9b8e875a386192318e7d9dabb954dbbdfbd5812d3b1dccec7c6588bbe71808f8574f56a7589920804",
            "7f9e0b8ee4f234238e6f0918fec612b8e5ff6d26a43b7f50747a00b63c612109",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xbcD12Ed2D4B809AfaaA26CC46fD3B92d28A1f60e",
            "BK7r23Sn5JctF8K3sZE4iDmpJ9k2+pE76bjodaOGGSMY59nau5VNu9+9WBLTsdzOx8ZYi75xgI+FdPVqdYmSCAQ=",
            "f54LjuTyNCOObwkY/sYSuOX/bSakO39QdHoAtjxhIQk=",
        ),
    ),
    # m/44'/60'/0'/0/566
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xf0d12aF1DCB8D53d93b09F3945cc1c1dB3236c8e",
            "0x9ee8239cfde7abdd0d198f0d7b59c25adc1b2733d7231d56b356e9ee7f4770ef484d61c8b443e3a53f4bfa00bf9ed8f4e0db69afcfd0718a5f7977d110fdc177",
            "309ac3d1528e6a5d23c5fd7bd1f66688fb425965956084e4cde2c52008a45087",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xf0d12aF1DCB8D53d93b09F3945cc1c1dB3236c8e",
            "BJ7oI5z956vdDRmPDXtZwlrcGycz1yMdVrNW6e5/R3DvSE1hyLRD46U/S/oAv57Y9ODbaa/P0HGKX3l30RD9wXc=",
            "MJrD0VKOal0jxf170fZmiPtCWWWVYITkzeLFIAikUIc=",
        ),
    ),
    # m/44'/60'/0'/0/567
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xd13dfe7C347eAD7c10c6d037e3a378456B88b6b8",
            "0xdecd5ead8e1135e1ddbfb489ea212583172c047d05069989c431f5dd49570ba30c849b4070a43e66c7104e24e10521221d3eb40b8a01cf6cfb93c437a91615ed",
            "4ce204b391a52849ecbf06c5500c4ad2a45cc78953fc911d4d908dae972c88c8",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xd13dfe7C347eAD7c10c6d037e3a378456B88b6b8",
            "BN7NXq2OETXh3b+0ieohJYMXLAR9BQaZicQx9d1JVwujDISbQHCkPmbHEE4k4QUhIh0+tAuKAc9s+5PEN6kWFe0=",
            "TOIEs5GlKEnsvwbFUAxK0qRcx4lT/JEdTZCNrpcsiMg=",
        ),
    ),
    # m/44'/60'/0'/0/568
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xe81b11d39789b1071A0ebaa6d4f95fc4387B2923",
            "0xcd10a01d1278392d3a820af0433bf5f3cd4d3b9421e389efc5604b5dec58f1ee15568377dd824f7957195f509c28cf823f626fb5c907308e0806f045255b2718",
            "9257a5a940c1b82c8c32515877023ce8950cd5ae7947aae276c44fbf9688f9ea",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xe81b11d39789b1071A0ebaa6d4f95fc4387B2923",
            "BM0QoB0SeDktOoIK8EM79fPNTTuUIeOJ78VgS13sWPHuFVaDd92CT3lXGV9QnCjPgj9ib7XJBzCOCAbwRSVbJxg=",
            "klelqUDBuCyMMlFYdwI86JUM1a55R6ridsRPv5aI+eo=",
        ),
    ),
    # m/44'/60'/0'/0/569
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x35EDCf50527e347f77C68a9F4eF5C2031cB8237a",
            "0x86bc5cb286091311bfee12810d017bdd0e5d9644853508c7f024c88c408dfeca5f5552ffb4a15dc32b7a6059fd6541bc41cdaa2c2379aade29c5506b28f50449",
            "bf39c4caef4e0d6ed68d4ec7afe89651638e62f47c4cdd2a90713d3020badb98",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x35EDCf50527e347f77C68a9F4eF5C2031cB8237a",
            "BIa8XLKGCRMRv+4SgQ0Be90OXZZEhTUIx/AkyIxAjf7KX1VS/7ShXcMremBZ/WVBvEHNqiwjeareKcVQayj1BEk=",
            "vznEyu9ODW7WjU7Hr+iWUWOOYvR8TN0qkHE9MCC625g=",
        ),
    ),
    # m/44'/60'/0'/0/570
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x64D3Aa062C91AD8Da67852eEe4B65Cc4B63AFc1E",
            "0x79ff80d71f3cb6cc6d2956ad4d01ec478815818cdb54baa513337e2a11abc47cb8f410e0e9a622554093f20cf148c6f29972105873fb63ca55a614ad8c081c43",
            "9a76f1dd1cd9c574835240425272a97579830d84fd1f370152e2fdabe266d466",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x64D3Aa062C91AD8Da67852eEe4B65Cc4B63AFc1E",
            "BHn/gNcfPLbMbSlWrU0B7EeIFYGM21S6pRMzfioRq8R8uPQQ4OmmIlVAk/IM8UjG8plyEFhz+2PKVaYUrYwIHEM=",
            "mnbx3RzZxXSDUkBCUnKpdXmDDYT9HzcBUuL9q+Jm1GY=",
        ),
    ),
    # m/44'/60'/0'/0/571
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xB8d3C7DEe2Dd56e9B77caca90abD980fD721D725",
            "0xfba2e7172db34783116c8c749bef7dc271cb4222d6be480735f527bff76b613bd977e0e7aff3d734cb26f22538bb4072655086a7efffe66f61bf76bced5400a5",
            "3eca44503e0b4b231b93f0ab709df15d9745dd8308a028265c203e30476e2718",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xB8d3C7DEe2Dd56e9B77caca90abD980fD721D725",
            "BPui5xcts0eDEWyMdJvvfcJxy0Ii1r5IBzX1J7/3a2E72Xfg56/z1zTLJvIlOLtAcmVQhqfv/+ZvYb92vO1UAKU=",
            "PspEUD4LSyMbk/CrcJ3xXZdF3YMIoCgmXCA+MEduJxg=",
        ),
    ),
    # m/44'/60'/0'/0/572
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x8c680a1a4D0EE5c82a0a8f55C52f03b45e56d97C",
            "0x9b86fbf95e2e26fc186fe2514279c1b6bccb29f3db7af545e746ab83f8bd982c1d61d6a53907a7ee0c47eec6b6aeef1c865e96ed3724b53b09dda160107ebe7b",
            "f586ec2040613821add5f44439147023e3ed04ce496a0f6b70e8bada2f756560",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x8c680a1a4D0EE5c82a0a8f55C52f03b45e56d97C",
            "BJuG+/leLib8GG/iUUJ5wba8yynz23r1RedGq4P4vZgsHWHWpTkHp+4MR+7Gtq7vHIZelu03JLU7Cd2hYBB+vns=",
            "9YbsIEBhOCGt1fREORRwI+PtBM5Jag9rcOi62i91ZWA=",
        ),
    ),
    # m/44'/60'/0'/0/573
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x6B87fAfe719ba15b6BffC4b64Fc395c713Cfa2f4",
            "0x43dc8dec0f8db39e6889d5d9c1f39e4cc944ea36aa8c1e96d7c4c76bcaa1b73e8cb2915ea213cb12e880a9d9de3cbfc164785be8a405cf7cda1369ce432afb26",
            "332d5ac89c5427006e406b170399e7ec48dfb815fdf46d76663906c08ff24519",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x6B87fAfe719ba15b6BffC4b64Fc395c713Cfa2f4",
            "BEPcjewPjbOeaInV2cHznkzJROo2qoweltfEx2vKobc+jLKRXqITyxLogKnZ3jy/wWR4W+ikBc982hNpzkMq+yY=",
            "My1ayJxUJwBuQGsXA5nn7EjfuBX99G12ZjkGwI/yRRk=",
        ),
    ),
    # m/44'/60'/0'/0/574
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xAf0b5ef5943A4DA9Ea436B4ccf3F3C836a03C6f2",
            "0xba6ccaef7a667abeae578585b5e283051469f71beb2a4016b685776834e627544422896808c2cd1ec2d9d026dc8a2a83f8b6ea0a76b65f21a10d676a8cea06a0",
            "e514725dd651484060d9235e5a386000fb5b19137230f5e3911a7d918162b62a",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xAf0b5ef5943A4DA9Ea436B4ccf3F3C836a03C6f2",
            "BLpsyu96Znq+rleFhbXigwUUafcb6ypAFraFd2g05idURCKJaAjCzR7C2dAm3Ioqg/i26gp2tl8hoQ1naozqBqA=",
            "5RRyXdZRSEBg2SNeWjhgAPtbGRNyMPXjkRp9kYFitio=",
        ),
    ),
    # m/44'/60'/0'/0/575
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xD691DD0274F32ac161eBA347eBEC471fd278Cb4d",
            "0x2471a76c6fd492987ef99c0be9998f025276c9bfb3227ef7b6dc4e7a5f8918826c2ec729c3deb8dc105ace179ca6819838ea7bb87c5e92a73a4f2e72affbf214",
            "57a2f514fc40a639b0d475d18e31e322c4286777f76326dd4ebaff9d13570025",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xD691DD0274F32ac161eBA347eBEC471fd278Cb4d",
            "BCRxp2xv1JKYfvmcC+mZjwJSdsm/syJ+97bcTnpfiRiCbC7HKcPeuNwQWs4XnKaBmDjqe7h8XpKnOk8ucq/78hQ=",
            "V6L1FPxApjmw1HXRjjHjIsQoZ3f3YybdTrr/nRNXACU=",
        ),
    ),
    # m/44'/60'/0'/0/576
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x5bfB74cfE1B0915C6aEE03b2f9Bdf1C6F2403Af6",
            "0x684efffc31c2d67645de73b83d665b33bc964253f70b8fc1954ce9c813a38c57a419b6b0e167090639feea69a7666cc3cd7995466c331d0dce014e7d941fd0c0",
            "2a56ccb3a9185ce6c280d14f4ea5aa87741c3b63b15216f69de3bcaac0bb9b6a",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x5bfB74cfE1B0915C6aEE03b2f9Bdf1C6F2403Af6",
            "BGhO//wxwtZ2Rd5zuD1mWzO8lkJT9wuPwZVM6cgTo4xXpBm2sOFnCQY5/uppp2Zsw815lUZsMx0NzgFOfZQf0MA=",
            "KlbMs6kYXObCgNFPTqWqh3QcO2OxUhb2neO8qsC7m2o=",
        ),
    ),
    # m/44'/60'/0'/0/577
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x977802f0e07ad0047494AF1b3C81ff7B3C559D69",
            "0xc380622d88add188900929792e1f87cc572a6ffb1b4438249f198e2fc730cd9c87810a06f6ca88aaa3ac17ed41fd9e6fc7621c69744484caeb9dc496e8bdbc71",
            "dab6116a6e180057085ef20f2a8e2379bb518a7747b80fc2b3f9558bf189159c",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x977802f0e07ad0047494AF1b3C81ff7B3C559D69",
            "BMOAYi2IrdGIkAkpeS4fh8xXKm/7G0Q4JJ8Zji/HMM2ch4EKBvbKiKqjrBftQf2eb8diHGl0RITK653Elui9vHE=",
            "2rYRam4YAFcIXvIPKo4jebtRindHuA/Cs/lVi/GJFZw=",
        ),
    ),
    # m/44'/60'/0'/0/578
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xD0FE675A9C8a330572e51C30Fd2a0220D7E0b1D9",
            "0x66c1d20f3b0a5d6ea8b48d1304427fe8a06c98e61b01d2413dd2a4f81e992b20ffff7c7b290f6b82cc95e63f4176e23b1e483178875328a2787bf1a0b5d1f905",
            "05502b18f5d2570aa5040d3e9d8f083b2b403e7d167144b4189204b4c0689557",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xD0FE675A9C8a330572e51C30Fd2a0220D7E0b1D9",
            "BGbB0g87Cl1uqLSNEwRCf+igbJjmGwHSQT3SpPgemSsg//98eykPa4LMleY/QXbiOx5IMXiHUyiieHvxoLXR+QU=",
            "BVArGPXSVwqlBA0+nY8IOytAPn0WcUS0GJIEtMBolVc=",
        ),
    ),
    # m/44'/60'/0'/0/579
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x4C65AD5d05623014C1B3EbE70187eF6aaDa04692",
            "0x0fbb6529ea97a257a94df3845085a2547c9ae5d4ec4df0e59ecc496bceed4e9c8b5bf343a6a1ed66dd337103f149f1184185fcaa43425d16da89feda42efc898",
            "727dd9a5fcad4b5628f81c768191b58f4db20bd4c56195df070388beeb9311f1",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x4C65AD5d05623014C1B3EbE70187eF6aaDa04692",
            "BA+7ZSnql6JXqU3zhFCFolR8muXU7E3w5Z7MSWvO7U6ci1vzQ6ah7WbdM3ED8UnxGEGF/KpDQl0W2on+2kLvyJg=",
            "cn3ZpfytS1Yo+Bx2gZG1j02yC9TFYZXfBwOIvuuTEfE=",
        ),
    ),
    # m/44'/60'/0'/0/580
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xe164Ee1555b01bEC3260363907a94bb24437a301",
            "0x60516980a14767f9029128eed9edaff71c24574f51883238181bb227a93607e014816cced7d726bbc9968798432d48bbafc7abf05af725ed6f100ee79757b6ea",
            "4f0e3c647eee345c552cc6be0ac1b2cff2a31be9e77bfd4d4da2d18faa3da6cf",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xe164Ee1555b01bEC3260363907a94bb24437a301",
            "BGBRaYChR2f5ApEo7tntr/ccJFdPUYgyOBgbsiepNgfgFIFsztfXJrvJloeYQy1Iu6/Hq/Ba9yXtbxAO55dXtuo=",
            "Tw48ZH7uNFxVLMa+CsGyz/KjG+nne/1NTaLRj6o9ps8=",
        ),
    ),
    # m/44'/60'/0'/0/581
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x7fE2968Ec63A0A40DF3caD6bFa0528C11842C998",
            "0xfa595525722ecd03e2b6598532ed0a8a164ae534384c51fff5d4cc870edebb034dee4325e1d9bda0d983a85ea87b488dda150062fd216aa595d13e588e617561",
            "71590a048469d696f282bdf785fe435803014fd01bbee0dd3afb6defc09dde81",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x7fE2968Ec63A0A40DF3caD6bFa0528C11842C998",
            "BPpZVSVyLs0D4rZZhTLtCooWSuU0OExR//XUzIcO3rsDTe5DJeHZvaDZg6heqHtIjdoVAGL9IWqlldE+WI5hdWE=",
            "cVkKBIRp1pbygr33hf5DWAMBT9AbvuDdOvtt78Cd3oE=",
        ),
    ),
    # m/44'/60'/0'/0/582
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x69a58CD7dC650a585Bd9501FA3b6AC3ec1f9A558",
            "0x04da068ee6baa5666b0fe0aeeb2b8cce51b1da74df61df4fb3a09b5050695507692eb5fd21fb563c1bd0140becc9c8c47c616494397a4481b8506def7dcbbc92",
            "ea28acf44cfb8673a98d5c60b32359472e12da41cc4c9ae84339ca8ea8f1286d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x69a58CD7dC650a585Bd9501FA3b6AC3ec1f9A558",
            "BATaBo7muqVmaw/grusrjM5Rsdp032HfT7Ogm1BQaVUHaS61/SH7Vjwb0BQL7MnIxHxhZJQ5ekSBuFBt733LvJI=",
            "6iis9Ez7hnOpjVxgsyNZRy4S2kHMTJroQznKjqjxKG0=",
        ),
    ),
    # m/44'/60'/0'/0/583
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x96F648a6C3772bF69113ff525DbE249c7F714821",
            "0x0a10ab429f19591a5dd0b47e0da6e29cbc2643bf1bfbdda585b8d5d79f998fffd2ff9527f61149f8f8b857840010f1b9c64e0915068d6646c4ea2eaaea1cff72",
            "4a92827d5655fcbc6d18b36d87b57aba2c7a02c28444f817b954b86e3504d11d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x96F648a6C3772bF69113ff525DbE249c7F714821",
            "BAoQq0KfGVkaXdC0fg2m4py8JkO/G/vdpYW41defmY//0v+VJ/YRSfj4uFeEABDxucZOCRUGjWZGxOouquoc/3I=",
            "SpKCfVZV/LxtGLNth7V6uix6AsKERPgXuVS4bjUE0R0=",
        ),
    ),
    # m/44'/60'/0'/0/584
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x3b866204ACb4546a36a31a2aD2bdc1A226802bE5",
            "0x128d5b59e2937904e734dd755a0ff828854b3965e72ce5f19f4b3320cb0e8342b36a697443423b063aedb2eb8a9f2aac7fd481982da499bd94de6b3689eccead",
            "4baca6d62187e58dc9255471907633a6057ae95fb2ed83af8930801700b9d65d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x3b866204ACb4546a36a31a2aD2bdc1A226802bE5",
            "BBKNW1nik3kE5zTddVoP+CiFSzll5yzl8Z9LMyDLDoNCs2ppdENCOwY67bLrip8qrH/UgZgtpJm9lN5rNonszq0=",
            "S6ym1iGH5Y3JJVRxkHYzpgV66V+y7YOviTCAFwC51l0=",
        ),
    ),
    # m/44'/60'/0'/0/585
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x8B6FF640643676fa20B2d91d5c9317950DFDD32b",
            "0xfb299f22ac55a23e69f7c5297647fb643a116f0ed364ec262556c8bd7b1fdbd854ba8bef636276f5ed1d7467b762c7dfacd93c4b63888ace6ddc7157007c50d4",
            "4b12781e9de55ae2d097320f9e1e0ce759a56999c371b0e00b79a3e1dea894fb",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x8B6FF640643676fa20B2d91d5c9317950DFDD32b",
            "BPspnyKsVaI+affFKXZH+2Q6EW8O02TsJiVWyL17H9vYVLqL72NidvXtHXRnt2LH36zZPEtjiIrObdxxVwB8UNQ=",
            "SxJ4Hp3lWuLQlzIPnh4M51mlaZnDcbDgC3mj4d6olPs=",
        ),
    ),
    # m/44'/60'/0'/0/586
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x1000578A03FE048e43176Ea10971224E224Ff3b5",
            "0x17750c62ba6a41e70e460d6cbb565c083fd4a3ce8e3060a6bf7c70bdeefec79c7c5956522263f7ff0b6f3bca54aa982f16301e17b080b9284522b37e2132bebd",
            "3e6727849218b84644888495f6a594760cba9f94ecc91a6755af53ef9f8cffa2",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x1000578A03FE048e43176Ea10971224E224Ff3b5",
            "BBd1DGK6akHnDkYNbLtWXAg/1KPOjjBgpr98cL3u/secfFlWUiJj9/8LbzvKVKqYLxYwHhewgLkoRSKzfiEyvr0=",
            "PmcnhJIYuEZEiISV9qWUdgy6n5TsyRpnVa9T75+M/6I=",
        ),
    ),
    # m/44'/60'/0'/0/587
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x9c3b2176eef2a6447BE8953E0bfF8683432DA91f",
            "0x2c65a19e4504af401f72cd2b455ac2762a2eadb08a1bdbbe74f2c1ab798586e5c539d15e2b9e5979154c0980666ae7431587f95417f21404b9f4ef5bc73f6681",
            "325e513223d693bc4db131c0118120f708a3fc7c0173da8fcee446d39a8de9f9",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x9c3b2176eef2a6447BE8953E0bfF8683432DA91f",
            "BCxloZ5FBK9AH3LNK0VawnYqLq2wihvbvnTywat5hYblxTnRXiueWXkVTAmAZmrnQxWH+VQX8hQEufTvW8c/ZoE=",
            "Ml5RMiPWk7xNsTHAEYEg9wij/HwBc9qPzuRG05qN6fk=",
        ),
    ),
    # m/44'/60'/0'/0/588
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x9EDD916af5Fb7aeb637032f9ce1617cF6b5269D3",
            "0x9932c9fbc07bbeecfc7358acc425d006d488fa75cc0f0553af03d085f8d307f53fdb6fa7ddbed8b08eacaece24e1dd07e2493333ed21e33b74fd1c2f662ae76a",
            "57fb288497f25a8b7a1b07ff140d8855a139be5a6a99c72200513e38e4663154",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x9EDD916af5Fb7aeb637032f9ce1617cF6b5269D3",
            "BJkyyfvAe77s/HNYrMQl0AbUiPp1zA8FU68D0IX40wf1P9tvp92+2LCOrK7OJOHdB+JJMzPtIeM7dP0cL2Yq52o=",
            "V/sohJfyWot6Gwf/FA2IVaE5vlpqmcciAFE+OORmMVQ=",
        ),
    ),
    # m/44'/60'/0'/0/589
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x31634D23eD6639FA1F805CD03155fBC4750EB2b4",
            "0x2b05b61ef4d4a036a8291f0dab256bea1768ede7d63af3f2359d91803ca3691efa5e93a0b63d5568f97ee6aafa2b68fdaf2e0587b56882f3bb54513719a808f2",
            "a5a9da915606fc810f5c78933e5ff001ecd1aefc5dc9e641ab6db6be2e8ef25f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x31634D23eD6639FA1F805CD03155fBC4750EB2b4",
            "BCsFth701KA2qCkfDasla+oXaO3n1jrz8jWdkYA8o2ke+l6ToLY9VWj5fuaq+ito/a8uBYe1aILzu1RRNxmoCPI=",
            "panakVYG/IEPXHiTPl/wAezRrvxdyeZBq222vi6O8l8=",
        ),
    ),
    # m/44'/60'/0'/0/590
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x553fCE52D4bDd07EB275aeb47d54d079CfF4f393",
            "0x6b24f64fe620fc92a0a2637c7fd235e14c64db8488920b642ff7b009eecb194b62fb898a127ace297451261b89c7e990726e32194364203635e4e517e8d201f4",
            "8223e2ee1b54b22e17f05f8f641ba041fff0b6fe79b6c081c32c127173e6b350",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x553fCE52D4bDd07EB275aeb47d54d079CfF4f393",
            "BGsk9k/mIPySoKJjfH/SNeFMZNuEiJILZC/3sAnuyxlLYvuJihJ6zil0USYbicfpkHJuMhlDZCA2NeTlF+jSAfQ=",
            "giPi7htUsi4X8F+PZBugQf/wtv55tsCBwywScXPms1A=",
        ),
    ),
    # m/44'/60'/0'/0/591
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x964D2d576611ffaCcCA5041d52400e7fbe6f7c28",
            "0x9ffca4feeb9fa1c7ae4a9da7c53c2900974771c18d7044af10e6ad286194978495190363e1ede54effe8d7d7143781cb0f9147ab741881ed67f53522933c2639",
            "750b7bd36c0bca57b3605bb56f37b9e8e12de936ff455a988592403ed2f6134c",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x964D2d576611ffaCcCA5041d52400e7fbe6f7c28",
            "BJ/8pP7rn6HHrkqdp8U8KQCXR3HBjXBErxDmrShhlJeElRkDY+Ht5U7/6NfXFDeByw+RR6t0GIHtZ/U1IpM8Jjk=",
            "dQt702wLylezYFu1bze56OEt6Tb/RVqYhZJAPtL2E0w=",
        ),
    ),
    # m/44'/60'/0'/0/592
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xbD45FC7454e0139863C2C8e5850750CF3dc92cAD",
            "0x45ec9411d7228ca623b6b9158ead110bc03f792be5f3a8ad418548d70951e004de1d2a4f457178dd14e100e1d578206125fd8eb1e82ca0f3c0c3187aab75e103",
            "1465c10c15eb2de5da04d85423ccd3209f2c0d12ce528259319469589605dc8c",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xbD45FC7454e0139863C2C8e5850750CF3dc92cAD",
            "BEXslBHXIoymI7a5FY6tEQvAP3kr5fOorUGFSNcJUeAE3h0qT0VxeN0U4QDh1XggYSX9jrHoLKDzwMMYeqt14QM=",
            "FGXBDBXrLeXaBNhUI8zTIJ8sDRLOUoJZMZRpWJYF3Iw=",
        ),
    ),
    # m/44'/60'/0'/0/593
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x570aC2F8AC37fc5a1B2Ac1b8f0758cA2f87753a6",
            "0xeedd2d496013746971ab8218050bff55c8fe19f8352046635d9437d96890ae277763048396493b1abb7b54c1c7573330b1fd2da265b945e1b10e724575f562a4",
            "0bd673834d5b2dc6198bca43590042805f605f923028403a01428a2b70ce3b32",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x570aC2F8AC37fc5a1B2Ac1b8f0758cA2f87753a6",
            "BO7dLUlgE3RpcauCGAUL/1XI/hn4NSBGY12UN9lokK4nd2MEg5ZJOxq7e1TBx1czMLH9LaJluUXhsQ5yRXX1YqQ=",
            "C9Zzg01bLcYZi8pDWQBCgF9gX5IwKEA6AUKKK3DOOzI=",
        ),
    ),
    # m/44'/60'/0'/0/594
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xFD704A55578aA204DdEc80fB952C210cBC68d20c",
            "0x8c7ff96e1a11608a168ef268b9ea11b193a1661704af193d9ff80a9203f900ddd14edc2ae4ef1af96ca9d107803e2e953db9149561440f2fbcc2292b087196fd",
            "a838103d0f8d28cfbcf7debd2c1f93e2563390a1472fd11adde3bf96609ca061",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xFD704A55578aA204DdEc80fB952C210cBC68d20c",
            "BIx/+W4aEWCKFo7yaLnqEbGToWYXBK8ZPZ/4CpID+QDd0U7cKuTvGvlsqdEHgD4ulT25FJVhRA8vvMIpKwhxlv0=",
            "qDgQPQ+NKM+89969LB+T4lYzkKFHL9Ea3eO/lmCcoGE=",
        ),
    ),
    # m/44'/60'/0'/0/595
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xd69724EF609818330066b52821c83c80BBffDcC0",
            "0xa4da4aaf7bbaaef858669f344ac1dadaf41a37a43331d5c58c7cad6c0cf67d5b243852e29ffd6d392ad59f1982e54bd8382be0a17f995c6d933225f59cdf5e6c",
            "36d59e1ded3e11a51e11b497f7bd824b8bf90a6b47e47e94beb3695a9d8cbc85",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xd69724EF609818330066b52821c83c80BBffDcC0",
            "BKTaSq97uq74WGafNErB2tr0GjekMzHVxYx8rWwM9n1bJDhS4p/9bTkq1Z8ZguVL2Dgr4KF/mVxtkzIl9ZzfXmw=",
            "NtWeHe0+EaUeEbSX972CS4v5CmtH5H6UvrNpWp2MvIU=",
        ),
    ),
    # m/44'/60'/0'/0/596
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x887e23Cb4da70c4a8D9f18332950140a76095Ac5",
            "0xb33e4ad980afb4bf168f6f377a0a631667e975da1ca782aec4bf1defd24709783b0d1125fb0544214c32b68057674d40ab4d3808f178007b43a1ac65d562b829",
            "0b14acec4ddd9867854f99d9b53960f818581d9f5cf039c97d47a4d267c220f6",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x887e23Cb4da70c4a8D9f18332950140a76095Ac5",
            "BLM+StmAr7S/Fo9vN3oKYxZn6XXaHKeCrsS/He/SRwl4Ow0RJfsFRCFMMraAV2dNQKtNOAjxeAB7Q6GsZdViuCk=",
            "CxSs7E3dmGeFT5nZtTlg+BhYHZ9c8DnJfUek0mfCIPY=",
        ),
    ),
    # m/44'/60'/0'/0/597
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x61D5C01fE14E574D3aB6286b50d288b044287E36",
            "0x224592214ed61e70214b35481891ed02d8585cfa3530ce6f7e7afa825441b9422dca48343ceeb1a1f4fc37470e36c332bf77c7dc7aa2494fc0b4eefb147fc947",
            "6f177ccd83cb360c457de029871fddf0ad5283ee8e0f8b6a096a21b35ff14c61",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x61D5C01fE14E574D3aB6286b50d288b044287E36",
            "BCJFkiFO1h5wIUs1SBiR7QLYWFz6NTDOb356+oJUQblCLcpINDzusaH0/DdHDjbDMr93x9x6oklPwLTu+xR/yUc=",
            "bxd8zYPLNgxFfeAphx/d8K1Sg+6OD4tqCWohs1/xTGE=",
        ),
    ),
    # m/44'/60'/0'/0/598
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xEDc4521147E1532a30Ce0df51e1B829d4051b9DB",
            "0xb5843727f6cf0d43232e7215a7eb1fa828a28596198e63be54421175225bcf36344730746bcdcecdcc007f76684b3c24c2cf4983b47570446becd0a96fb14761",
            "90220c6e778e5f09f07fd91b1c65c0da29f599b904b9451323c33994d78eeff3",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xEDc4521147E1532a30Ce0df51e1B829d4051b9DB",
            "BLWENyf2zw1DIy5yFafrH6goooWWGY5jvlRCEXUiW882NEcwdGvNzs3MAH92aEs8JMLPSYO0dXBEa+zQqW+xR2E=",
            "kCIMbneOXwnwf9kbHGXA2in1mbkEuUUTI8M5lNeO7/M=",
        ),
    ),
    # m/44'/60'/0'/0/599
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x90B960d0679f16c6c23102F95de5B2D2eE4b9bf0",
            "0xeb9740e840ee0bcd2d10a70ae88e7e5107dfedb418ac4a69abec5d8d38a62c263a738f7aa6ed2bb8a99d8775697c036837e98d92db380f314d359aa8787c2cf3",
            "fe526f751bf425104191d1c54d253bfee2b67cf53d63618902150bcf481bd15b",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x90B960d0679f16c6c23102F95de5B2D2eE4b9bf0",
            "BOuXQOhA7gvNLRCnCuiOflEH3+20GKxKaavsXY04piwmOnOPeqbtK7ipnYd1aXwDaDfpjZLbOA8xTTWaqHh8LPM=",
            "/lJvdRv0JRBBkdHFTSU7/uK2fPU9Y2GJAhULz0gb0Vs=",
        ),
    ),
    # m/44'/60'/0'/0/600
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xBf9375a28Add871BEF6DD5383b7d494d18e13DF7",
            "0x3b6d3336bdddb179022960a84741a325a99c107d3102014ba878a86e109837f969fb5906279e9baef0fb0e72e2ba2186559495a2b8bffd43cebb88990231074c",
            "703e49f9ed93abfd7bdf00bd19fac18512d13a6382b60081caf05b544e2d5469",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xBf9375a28Add871BEF6DD5383b7d494d18e13DF7",
            "BDttMza93bF5AilgqEdBoyWpnBB9MQIBS6h4qG4QmDf5aftZBieem67w+w5y4rohhlWUlaK4v/1DzruImQIxB0w=",
            "cD5J+e2Tq/173wC9GfrBhRLROmOCtgCByvBbVE4tVGk=",
        ),
    ),
    # m/44'/60'/0'/0/601
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xeFF0Ade423593aB5A438254568a9A5ee697F2942",
            "0xee137339002a50f492409c83ef6e45070a80c5fa6b1913bc4216895b9902797624df1e90b7031c4755d87286baca51e09cd989c0eae47ab10bb933ebbb4d7cec",
            "91f739e1aaf4d708f2cf6934b6b2d5d687ff81275dbca2003659d161a77b5bd0",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xeFF0Ade423593aB5A438254568a9A5ee697F2942",
            "BO4TczkAKlD0kkCcg+9uRQcKgMX6axkTvEIWiVuZAnl2JN8ekLcDHEdV2HKGuspR4JzZicDq5HqxC7kz67tNfOw=",
            "kfc54ar01wjyz2k0trLV1of/gSddvKIANlnRYad7W9A=",
        ),
    ),
    # m/44'/60'/0'/0/602
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x0ff20c62Ff6Cc6e70F09b0dDA90A48323Bf3f7F8",
            "0x6b3ed4fbe637e047e3b3e10c72509f35005908afe3ed58be8c9934796b6147c0375a0d195e4cf9249718abff96554844e5b863726d15b7a3532948c37de0f230",
            "ad516de30bf276023f884a346d6b9c7f316f27f5baafdb0fc70754df679e8955",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x0ff20c62Ff6Cc6e70F09b0dDA90A48323Bf3f7F8",
            "BGs+1PvmN+BH47PhDHJQnzUAWQiv4+1YvoyZNHlrYUfAN1oNGV5M+SSXGKv/llVIROW4Y3JtFbejUylIw33g8jA=",
            "rVFt4wvydgI/iEo0bWucfzFvJ/W6r9sPxwdU32eeiVU=",
        ),
    ),
    # m/44'/60'/0'/0/603
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x56e2bA9B7D4451ef3F0cC20758b9de1Bb5104417",
            "0xb0c37cd9610ac0d31152ff2a7ee6598d85758bea761725b2f983117457ede7061bcf53f2ec2dc002d32bfdf2efc9b976e12af64f190cbd806fd74cb32c4ea48f",
            "feed20974bcaa64e85966d52e29047d4fad78ac5a0ef8eaabedacda27d7d332a",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x56e2bA9B7D4451ef3F0cC20758b9de1Bb5104417",
            "BLDDfNlhCsDTEVL/Kn7mWY2FdYvqdhclsvmDEXRX7ecGG89T8uwtwALTK/3y78m5duEq9k8ZDL2Ab9dMsyxOpI8=",
            "/u0gl0vKpk6Flm1S4pBH1PrXisWg746qvtrNon19Myo=",
        ),
    ),
    # m/44'/60'/0'/0/604
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x39f976389430b40F0B4f4e63b85E64419ee8806b",
            "0xfd9bad661d6b7b58063857564446bd6bb4a7e34bb7a8400ad5a662d3c6b81708442769ce856a94e98c286bf1dd1409a44c01c13a1975db03720d5a78e1529658",
            "7f689a337d74de012d6568e3c3c02dcddada5f65f55c15571b1f0ffa23fbb739",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x39f976389430b40F0B4f4e63b85E64419ee8806b",
            "BP2brWYda3tYBjhXVkRGvWu0p+NLt6hACtWmYtPGuBcIRCdpzoVqlOmMKGvx3RQJpEwBwToZddsDcg1aeOFSllg=",
            "f2iaM3103gEtZWjjw8AtzdraX2X1XBVXGx8P+iP7tzk=",
        ),
    ),
    # m/44'/60'/0'/0/605
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x47884FaF71B867b2976f830e44e10BbCF2cb8a05",
            "0x9b9aee1ca0c127e0fa229b6f9885d3604d3451deaf6856801f12fd8a898c9a21c6e8fc650b78a9ffeeae6959c0f529e7b0b0e2bee024f10609a9002ed4935be9",
            "e3072df9c1d727704aac1a7911b0201ab7510121c56bff7a5af0d118b2cb985b",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x47884FaF71B867b2976f830e44e10BbCF2cb8a05",
            "BJua7hygwSfg+iKbb5iF02BNNFHer2hWgB8S/YqJjJohxuj8ZQt4qf/urmlZwPUp57Cw4r7gJPEGCakALtSTW+k=",
            "4wct+cHXJ3BKrBp5EbAgGrdRASHFa/96WvDRGLLLmFs=",
        ),
    ),
    # m/44'/60'/0'/0/606
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x1c64D68817Fbc7995D6468Dc8Bc11C83bD3448e8",
            "0x9d269ae14abb4d680d4909c17bad93375f6bae24bbc5f5314fc12be02f6a661bc94e12c274dde3f1d6e6a66d2e726b14ebff4f04ebc2bab5454ff5417bb9d1e4",
            "978848d82041737abf5ead5f05eb4da5aa05e11a68b4e53c298d08d519aa1d27",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x1c64D68817Fbc7995D6468Dc8Bc11C83bD3448e8",
            "BJ0mmuFKu01oDUkJwXutkzdfa64ku8X1MU/BK+AvamYbyU4SwnTd4/HW5qZtLnJrFOv/TwTrwrq1RU/1QXu50eQ=",
            "l4hI2CBBc3q/Xq1fBetNpaoF4RpotOU8KY0I1RmqHSc=",
        ),
    ),
    # m/44'/60'/0'/0/607
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xFfD82C3030CEA1e158F18B4A3fb5CD009Af74E1C",
            "0x0429762b62b043de505a7a1611a69dbe0ff7b983ac49576ecee0b24154b09be6c0cc2357a3991159f619eb07922bbb2a5cf3a619d33132e3f2f1a3e89c720cb3",
            "1e34797b08eb6e9d18253a07002a09c9df66b53e3b99054067a50a1fad6bf6e3",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xFfD82C3030CEA1e158F18B4A3fb5CD009Af74E1C",
            "BAQpditisEPeUFp6FhGmnb4P97mDrElXbs7gskFUsJvmwMwjV6OZEVn2GesHkiu7KlzzphnTMTLj8vGj6JxyDLM=",
            "HjR5ewjrbp0YJToHACoJyd9mtT47mQVAZ6UKH61r9uM=",
        ),
    ),
    # m/44'/60'/0'/0/608
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x30D76A868CC15ab3a40bb5cF00e14Ea4ab424249",
            "0xc18962d300aab0129e6123080c0d7615fdc4ce4115fa90eca1675121f624a6626967931e00e9f6c084ebdb797d15b874c954273c59b451b73673b9f874ed183e",
            "8339bc4e6467fb974ecd305828ed03317f46f1fcf39d415cc8f6c81f27780d04",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x30D76A868CC15ab3a40bb5cF00e14Ea4ab424249",
            "BMGJYtMAqrASnmEjCAwNdhX9xM5BFfqQ7KFnUSH2JKZiaWeTHgDp9sCE69t5fRW4dMlUJzxZtFG3NnO5+HTtGD4=",
            "gzm8TmRn+5dOzTBYKO0DMX9G8fzznUFcyPbIHyd4DQQ=",
        ),
    ),
    # m/44'/60'/0'/0/609
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x4ac43a9492977464565991A6a7503D1236fc2752",
            "0xf08c311a661836b84a1249165dd74aad2ffe2587ecda0eac52d126c343d957e9900b3c0a3464ac2868eebf5bcb9fc636c45364b48da117bf98eddb50bb8f9685",
            "ad3c5def74a3fb090cb4ff41b7065cc7f5349db5be95ea9c89f7ab7ebf710416",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x4ac43a9492977464565991A6a7503D1236fc2752",
            "BPCMMRpmGDa4ShJJFl3XSq0v/iWH7NoOrFLRJsND2VfpkAs8CjRkrCho7r9by5/GNsRTZLSNoRe/mO3bULuPloU=",
            "rTxd73Sj+wkMtP9BtwZcx/U0nbW+leqciferfr9xBBY=",
        ),
    ),
    # m/44'/60'/0'/0/610
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xB1F4ef9A30d10380249F6BaE3eEc8422f6bB53DF",
            "0x770a9a9f2fc558c648fdf87f9f57630e8641dca1f234a80114e4450fcea0d20955a945f871ed984acea10c3f32e751b40d53b02c4767a58b398ae42bcfe76755",
            "780ced187596a173e7ebd94a6d03a535202957d7d8e6639fa06a51a13f4a7802",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xB1F4ef9A30d10380249F6BaE3eEc8422f6bB53DF",
            "BHcKmp8vxVjGSP34f59XYw6GQdyh8jSoARTkRQ/OoNIJValF+HHtmErOoQw/MudRtA1TsCxHZ6WLOYrkK8/nZ1U=",
            "eAztGHWWoXPn69lKbQOlNSApV9fY5mOfoGpRoT9KeAI=",
        ),
    ),
    # m/44'/60'/0'/0/611
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x101769d5ad545D6D2149f840E94337a828DEB7EC",
            "0xe17473e8ceb3919ad046feb2c4c30a0fa7bf715617ce7a7ea453ec663911551bb4aebd061a230013cfb2d85cabc52fc873e17d5b83b58cf907a6841ef2199d21",
            "0cd4968a0374d35e23a84da9852e541410c7332914f6c211593cab5f33f438e8",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x101769d5ad545D6D2149f840E94337a828DEB7EC",
            "BOF0c+jOs5Ga0Eb+ssTDCg+nv3FWF856fqRT7GY5EVUbtK69BhojABPPsthcq8UvyHPhfVuDtYz5B6aEHvIZnSE=",
            "DNSWigN0014jqE2phS5UFBDHMykU9sIRWTyrXzP0OOg=",
        ),
    ),
    # m/44'/60'/0'/0/612
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xc9a0ED88731542eaad3320B123a8E54b62ec2150",
            "0xa58d0c22627295c1a7f4eefc2075e78636d156496c97646f81d66559d465a708c5f90b75bf8256d81a7bbc8ea9cfda3e9d802db6b0a65f091bc6577228805e88",
            "1047380f5a3d991f7e94e9658bc8e8cd483b11de9806fdb0e299168d5302e478",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xc9a0ED88731542eaad3320B123a8E54b62ec2150",
            "BKWNDCJicpXBp/Tu/CB154Y20VZJbJdkb4HWZVnUZacIxfkLdb+CVtgae7yOqc/aPp2ALbawpl8JG8ZXciiAXog=",
            "EEc4D1o9mR9+lOlli8jozUg7Ed6YBv2w4pkWjVMC5Hg=",
        ),
    ),
    # m/44'/60'/0'/0/613
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xEc83b1c6628C5C4357A2902b5c5D24962DEC5516",
            "0x5da8441e7c8dccc472a18643c3bd13a315649f7db6b3821b4fadd7bd551f9b8e7cda3da8995d22a6eb1cbfc491ce82205dd0b59fbe34db136bf06c8866c9053f",
            "714c978637983d038b14521a7cdc246d224e8615018437706c70cd8e4b7f2a65",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xEc83b1c6628C5C4357A2902b5c5D24962DEC5516",
            "BF2oRB58jczEcqGGQ8O9E6MVZJ99trOCG0+t171VH5uOfNo9qJldIqbrHL/Ekc6CIF3QtZ++NNsTa/BsiGbJBT8=",
            "cUyXhjeYPQOLFFIafNwkbSJOhhUBhDdwbHDNjkt/KmU=",
        ),
    ),
    # m/44'/60'/0'/0/614
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x3F826D4521F3afeD8C4ca7Bbec3A168545e8fE47",
            "0x3688f654f6bca2970cb48e8c92cf83d877e732e5d23443b2765800c6d6cdc13abcd003352cdad0f686dae2d3c4b340c1e8c136e90b8c711cdeebb4018a8591a0",
            "874d10029c88cd06996c365acaf3bde5057d9bb63b5ee4b99c5ac54ba7203c7d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x3F826D4521F3afeD8C4ca7Bbec3A168545e8fE47",
            "BDaI9lT2vKKXDLSOjJLPg9h35zLl0jRDsnZYAMbWzcE6vNADNSza0PaG2uLTxLNAwejBNukLjHEc3uu0AYqFkaA=",
            "h00QApyIzQaZbDZayvO95QV9m7Y7XuS5nFrFS6cgPH0=",
        ),
    ),
    # m/44'/60'/0'/0/615
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xD0707EF0D930bbA5EeF98a34680c61E6534c512B",
            "0xbab915541732de139cd0357d4ed7c2a6ab52c1af19537602871c45040dace856f2ca4b034869b9e6befb6a8ce137241c201e0f38483ea453d991a3426827f0d6",
            "2410c33bd8c4da4b48c9903ceac0c4f025c33351202c467e75934682794d0699",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xD0707EF0D930bbA5EeF98a34680c61E6534c512B",
            "BLq5FVQXMt4TnNA1fU7XwqarUsGvGVN2AoccRQQNrOhW8spLA0hpuea++2qM4TckHCAeDzhIPqRT2ZGjQmgn8NY=",
            "JBDDO9jE2ktIyZA86sDE8CXDM1EgLEZ+dZNGgnlNBpk=",
        ),
    ),
    # m/44'/60'/0'/0/616
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xC8ae6234c0F7D698aB2A9b6F283D3D03c8747F60",
            "0x45d8c2905ac4f797b144f31de731387fc666b07816d3cbdd305f16d0a62cac14b28ceedc5ec87d8ee0bc16f92f4da12195e3997da0c8a47a7c254d11a32a5d42",
            "ea8138652394dc5e80583ebd4375a3ae0cf37f2685bb098901bd008522661d6c",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xC8ae6234c0F7D698aB2A9b6F283D3D03c8747F60",
            "BEXYwpBaxPeXsUTzHecxOH/GZrB4FtPL3TBfFtCmLKwUsozu3F7IfY7gvBb5L02hIZXjmX2gyKR6fCVNEaMqXUI=",
            "6oE4ZSOU3F6AWD69Q3WjrgzzfyaFuwmJAb0AhSJmHWw=",
        ),
    ),
    # m/44'/60'/0'/0/617
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x594195A6cb576cbe309B76753d3062fAaB53FE0d",
            "0xcb10c3156ac82626e8b355514bd756db54ecb098c39eb966280f836e3acd3686913b392306b39f6affee57dc3c74faa2595a3fcc33fa6986f33db56be196a7cf",
            "bda2ab8d9eecd923745274c41b2802cddb8ebcdf78249a1ba2e0af71a36ecde3",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x594195A6cb576cbe309B76753d3062fAaB53FE0d",
            "BMsQwxVqyCYm6LNVUUvXVttU7LCYw565ZigPg246zTaGkTs5Iwazn2r/7lfcPHT6ollaP8wz+mmG8z21a+GWp88=",
            "vaKrjZ7s2SN0UnTEGygCzduOvN94JJobouCvcaNuzeM=",
        ),
    ),
    # m/44'/60'/0'/0/618
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x4a778aD8A70e57323307B13a6220109510EC9D56",
            "0xcbca67e5abc097431ff47e1c78759fd8f4251ef6a1010a4d47015bf829f4b9e31e26c233ceae4ce7181a31986875791f6aa2a0c51911b238ba97f2efdd66c4a3",
            "b5bf778e4b679cc987465649a76aeeafce761e3ee31dea3d1587e2a8c1aeb859",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x4a778aD8A70e57323307B13a6220109510EC9D56",
            "BMvKZ+WrwJdDH/R+HHh1n9j0JR72oQEKTUcBW/gp9LnjHibCM86uTOcYGjGYaHV5H2qioMUZEbI4upfy791mxKM=",
            "tb93jktnnMmHRlZJp2rur852Hj7jHeo9FYfiqMGuuFk=",
        ),
    ),
    # m/44'/60'/0'/0/619
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xf6DffE202FeF34b713F4087BadDdfD56c5D653C1",
            "0xa1a804898ea15f519b4e47a20309913be7cb3e0c49cc71e2b1d59dcce8b1fdf962061d848f1348927bcb35b869d15e42c2eb331a0b35166af3e3bd89d7c62888",
            "621e7594376604c715d8ee8f3dec7fa321e6de1a54f2a3c90b76a5934a299c1d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xf6DffE202FeF34b713F4087BadDdfD56c5D653C1",
            "BKGoBImOoV9Rm05HogMJkTvnyz4MScxx4rHVnczosf35YgYdhI8TSJJ7yzW4adFeQsLrMxoLNRZq8+O9idfGKIg=",
            "Yh51lDdmBMcV2O6PPex/oyHm3hpU8qPJC3alk0opnB0=",
        ),
    ),
    # m/44'/60'/0'/0/620
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xfF7D807a2F96D0504E6F1eC36DcC6236C2b64686",
            "0xd0e1d0f9b030e5018262d38819ba31fb2f25e83eb2650234faabd6c500244b1591241a41b77b41e097ad2da0b923a71876c8604ee6a3d7a087b07821cd3c8bd2",
            "e399d83a13a4999233dc7fb39e24dcc41cd233a5dd152a1df8a35c13eed558ce",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xfF7D807a2F96D0504E6F1eC36DcC6236C2b64686",
            "BNDh0PmwMOUBgmLTiBm6MfsvJeg+smUCNPqr1sUAJEsVkSQaQbd7QeCXrS2guSOnGHbIYE7mo9egh7B4Ic08i9I=",
            "45nYOhOkmZIz3H+zniTcxBzSM6XdFSod+KNcE+7VWM4=",
        ),
    ),
    # m/44'/60'/0'/0/621
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xC841b7CC3A1EEB9ac24d988da54DA9EaD38A6589",
            "0xfa51a14259c4b9797cf77465be2378c55477dfc4f1c3831e2bbb6c3bc887cff5857bdb48b80403eba36120045e78c26c2322a27a381a4b8f53d835957c8072f0",
            "cb8453d06d5f4d58fdad0dca2c2f10ce186b7f0d3f121b08a908d88975762ec0",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xC841b7CC3A1EEB9ac24d988da54DA9EaD38A6589",
            "BPpRoUJZxLl5fPd0Zb4jeMVUd9/E8cODHiu7bDvIh8/1hXvbSLgEA+ujYSAEXnjCbCMiono4GkuPU9g1lXyAcvA=",
            "y4RT0G1fTVj9rQ3KLC8Qzhhrfw0/EhsIqQjYiXV2LsA=",
        ),
    ),
    # m/44'/60'/0'/0/622
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xF99030b95D3544dCB832110A3dBC040daB6Ba5cB",
            "0x0957a46125929db36f702f3920baa803beb97954e660f578e55662745ba6a364c854267d61c10541e3b6ce47d1094c348eb19826d3585f3e5ce26eda730c108f",
            "0793f19c7f1ca102760b027841c4e6b10e756b8cbd728aae5dfb89e061283e24",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xF99030b95D3544dCB832110A3dBC040daB6Ba5cB",
            "BAlXpGElkp2zb3AvOSC6qAO+uXlU5mD1eOVWYnRbpqNkyFQmfWHBBUHjts5H0QlMNI6xmCbTWF8+XOJu2nMMEI8=",
            "B5PxnH8coQJ2CwJ4QcTmsQ51a4y9coquXfuJ4GEoPiQ=",
        ),
    ),
    # m/44'/60'/0'/0/623
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xb7B8f913B0Ef944840400c1032b43F62F292935e",
            "0xde0c0c1481a49ec508ba69f49355da509562a6f5065726e96cd5a0d98c659c3f03edc02b044b67cfd49e946eccba42ae3d7dcd1993eb6608b3a8e82254f97d6d",
            "633231355eed9c8a40cdefc6f98e537b73ca7d02e2dd6f726b9b0ba51f1d633b",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xb7B8f913B0Ef944840400c1032b43F62F292935e",
            "BN4MDBSBpJ7FCLpp9JNV2lCVYqb1Blcm6WzVoNmMZZw/A+3AKwRLZ8/UnpRuzLpCrj19zRmT62YIs6joIlT5fW0=",
            "YzIxNV7tnIpAze/G+Y5Te3PKfQLi3W9ya5sLpR8dYzs=",
        ),
    ),
    # m/44'/60'/0'/0/624
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x539c001AB25184962918a56a21097Fdf88ff80AE",
            "0x8bbf05f7bd7249ac1634de93c66abbfd72ab5abfa0a1782df9d4e0fd62c13c6cf895b9ef386a1191ade28c97569caba955f94380455329cb93339674f506338f",
            "a1646e09bc3dcd690d9f670df0de24b8de51e40fd1554b0a4b2f297b24178268",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x539c001AB25184962918a56a21097Fdf88ff80AE",
            "BIu/Bfe9ckmsFjTek8Zqu/1yq1q/oKF4LfnU4P1iwTxs+JW57zhqEZGt4oyXVpyrqVX5Q4BFUynLkzOWdPUGM48=",
            "oWRuCbw9zWkNn2cN8N4kuN5R5A/RVUsKSy8peyQXgmg=",
        ),
    ),
    # m/44'/60'/0'/0/625
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x80b7785430a4F79F365a3A1A43b26D059c405B45",
            "0x4cc5152f245fcc5411921c3324aab0d7bedaa87d5720fdc338788854871959678f77e73d9b8e56b477b0f764157b9f7f79f2641ca443ecc68450a06e4dac36fd",
            "d540095ac5d38d534ad711f1531da3c59ae04eefdc574f4a8df59cded9eb9405",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x80b7785430a4F79F365a3A1A43b26D059c405B45",
            "BEzFFS8kX8xUEZIcMySqsNe+2qh9VyD9wzh4iFSHGVlnj3fnPZuOVrR3sPdkFXuff3nyZBykQ+zGhFCgbk2sNv0=",
            "1UAJWsXTjVNK1xHxUx2jxZrgTu/cV09KjfWc3tnrlAU=",
        ),
    ),
    # m/44'/60'/0'/0/626
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xFd9e4cC8ecAE86d075276a020a1b394953ab13aa",
            "0x14fc6f782a5e0358d2fecd99a77db6455fe90bf25e9d5a040137984f06464b6c1d9e824e8fc5e6f395c39f759e9eabd6466dc09a045fbf72c3f6b6d6fc55365f",
            "9a6b78d711921751ea3c6e81bd16a8301eab7615a0e75f36616b870659815485",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xFd9e4cC8ecAE86d075276a020a1b394953ab13aa",
            "BBT8b3gqXgNY0v7Nmad9tkVf6QvyXp1aBAE3mE8GRktsHZ6CTo/F5vOVw591np6r1kZtwJoEX79yw/a21vxVNl8=",
            "mmt41xGSF1HqPG6BvRaoMB6rdhWg5182YWuHBlmBVIU=",
        ),
    ),
    # m/44'/60'/0'/0/627
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xE9A2DEFFB915C9d63B550F0d4b0A988735552efA",
            "0xbd3d5e553f8e14f1a0cdcc2a20a07e3fdfb547ba6b60a876fe2fc0d62fe76d7e42e64db9501aa5a497bfb6c1284bfe072c7e79f49736eb92e04190e23d5d8d7c",
            "4eb90af4ee645a9f4527c6c59f23d3fe767cf573bb43b385cd162c7285f19f0f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xE9A2DEFFB915C9d63B550F0d4b0A988735552efA",
            "BL09XlU/jhTxoM3MKiCgfj/ftUe6a2Codv4vwNYv521+QuZNuVAapaSXv7bBKEv+Byx+efSXNuuS4EGQ4j1djXw=",
            "TrkK9O5kWp9FJ8bFnyPT/nZ89XO7Q7OFzRYscoXxnw8=",
        ),
    ),
    # m/44'/60'/0'/0/628
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xD3dF6fAc4C71EE2E15B764B659baBe304bDB0498",
            "0x9dbb4cc926a902412cb9ad90d2eb2138d1aa93fb1a40f9394c52933031d65d297b0b74b8f221bb98302a842496714f61200b55816c8809522abdf9117bea6e6f",
            "0cb383c8e8a9a13be6b6f9e0551ed023605b5276a21c52f321db454e79ab0795",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xD3dF6fAc4C71EE2E15B764B659baBe304bDB0498",
            "BJ27TMkmqQJBLLmtkNLrITjRqpP7GkD5OUxSkzAx1l0pewt0uPIhu5gwKoQklnFPYSALVYFsiAlSKr35EXvqbm8=",
            "DLODyOipoTvmtvngVR7QI2BbUnaiHFLzIdtFTnmrB5U=",
        ),
    ),
    # m/44'/60'/0'/0/629
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x65Dfcde0B99dB24078be66f20431Ef74392418d1",
            "0x4703cfe04a71d103428c06caa9202ac40aaf27bdacf4402c6edca12c876f0a3a2219fa2f5082b91a4089346ec99c7d8493dc8b6b189685abb6a3dd63088c9d39",
            "71101ee5ccacdd64d6b9a7edd2771c66740aa3ff6444c4b13d5f210977b44264",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x65Dfcde0B99dB24078be66f20431Ef74392418d1",
            "BEcDz+BKcdEDQowGyqkgKsQKrye9rPRALG7coSyHbwo6Ihn6L1CCuRpAiTRuyZx9hJPci2sYloWrtqPdYwiMnTk=",
            "cRAe5cys3WTWuaft0nccZnQKo/9kRMSxPV8hCXe0QmQ=",
        ),
    ),
    # m/44'/60'/0'/0/630
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xFCd8FaF60A6061aDB0B4f3199846CBE5A17206c9",
            "0x9da1a8d30c9976150a7803e8754c5c344baed0fc040405290dc43dd48bb6e9819de6603e06b4ae8e178077c6674c954c7485472fbc723b0f5a2aff5b625dbe1f",
            "80e61a5a2e74990d40e037717795898e531dc078d904b7367462d4caa3ac2e84",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xFCd8FaF60A6061aDB0B4f3199846CBE5A17206c9",
            "BJ2hqNMMmXYVCngD6HVMXDRLrtD8BAQFKQ3EPdSLtumBneZgPga0ro4XgHfGZ0yVTHSFRy+8cjsPWir/W2Jdvh8=",
            "gOYaWi50mQ1A4Ddxd5WJjlMdwHjZBLc2dGLUyqOsLoQ=",
        ),
    ),
    # m/44'/60'/0'/0/631
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xB8EA895f6113b833bCD47b66680D8b950659f352",
            "0x05c4e34f44afd0a018a6f2942e5b88b11c9a83a0d3a8e8c8dc8dc820137c912486c80a337766b1ab3f29fe4a893fcfae362d205af1f675688937b07e710c5bc7",
            "dc25efc34c8cb3dc5859b81284d548c380d64da4c0ca24b296d8b57f99e5e4f5",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xB8EA895f6113b833bCD47b66680D8b950659f352",
            "BAXE409Er9CgGKbylC5biLEcmoOg06joyNyNyCATfJEkhsgKM3dmsas/Kf5KiT/PrjYtIFrx9nVoiTewfnEMW8c=",
            "3CXvw0yMs9xYWbgShNVIw4DWTaTAyiSylti1f5nl5PU=",
        ),
    ),
    # m/44'/60'/0'/0/632
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x430cE2A86496aE51f5886093744e480409889691",
            "0xf4bb442a237a598310a5c24606d9bead1db02bf724bb9bae258e4224edfa1873b1c879b10e662051c762aa5a77123f13b55ca336e96f68829a691e33d391e742",
            "53f06a6f92af4236b0e6b69297a80a9d10d02b046f2379370ddaa18c3b94459d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x430cE2A86496aE51f5886093744e480409889691",
            "BPS7RCojelmDEKXCRgbZvq0dsCv3JLubriWOQiTt+hhzsch5sQ5mIFHHYqpadxI/E7Vcozbpb2iCmmkeM9OR50I=",
            "U/Bqb5KvQjaw5raSl6gKnRDQKwRvI3k3DdqhjDuURZ0=",
        ),
    ),
    # m/44'/60'/0'/0/633
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x3dE4cBfa0b1dA09f093D5BE5048972A4149333d1",
            "0x584a17996ab36caaf2638adf80f6d67bf50b912f661f01fe23852caf69fba02a52ddcf72c2e9e53aa21c53a86e8679a2854a9c45ee5e92fd3a8fa31e66b96523",
            "d70e20a95cdaef0e9ed2013d468fe729f27992b3fcf5ffa18498a545c57d4a55",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x3dE4cBfa0b1dA09f093D5BE5048972A4149333d1",
            "BFhKF5lqs2yq8mOK34D21nv1C5EvZh8B/iOFLK9p+6AqUt3PcsLp5TqiHFOoboZ5ooVKnEXuXpL9Oo+jHma5ZSM=",
            "1w4gqVza7w6e0gE9Ro/nKfJ5krP89f+hhJilRcV9SlU=",
        ),
    ),
    # m/44'/60'/0'/0/634
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x29BDaBc6c8587E0c113740Da081C14b93bcF1C7E",
            "0x6a00d0e23023e8da0a45e6366b7b467b5164a7078093939d3b25b051bc2ab66da370d74db4bd102840d38fcc84e0e0988e00a83a9e1277a6a147093f62b50a94",
            "c768fc4fa4c1db3280d8dd42abb20af9a0967b05e3898a749b052447225fba9c",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x29BDaBc6c8587E0c113740Da081C14b93bcF1C7E",
            "BGoA0OIwI+jaCkXmNmt7RntRZKcHgJOTnTslsFG8KrZto3DXTbS9EChA04/MhODgmI4AqDqeEnemoUcJP2K1CpQ=",
            "x2j8T6TB2zKA2N1Cq7IK+aCWewXjiYp0mwUkRyJfupw=",
        ),
    ),
    # m/44'/60'/0'/0/635
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x17F3C45F31327A10E94ce1c9a8fD5c2A8D4Ffe25",
            "0x10e1a50b76512de25b4b618a3ae0298582374da2509a88c0f113f8f6abc5aad49277eb3a93faaecabf9ae2b9b50c67f55b1d68c75686a2436f305af82a868b64",
            "cd49fb6addd9bbd784a7e93f4353f1904d6690ce2b21c2ee7c3ede67bdc0f17e",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x17F3C45F31327A10E94ce1c9a8fD5c2A8D4Ffe25",
            "BBDhpQt2US3iW0thijrgKYWCN02iUJqIwPET+ParxarUknfrOpP6rsq/muK5tQxn9VsdaMdWhqJDbzBa+CqGi2Q=",
            "zUn7at3Zu9eEp+k/Q1PxkE1mkM4rIcLufD7eZ73A8X4=",
        ),
    ),
    # m/44'/60'/0'/0/636
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x084366D85D6446779bA117c0f9aBB7D7D83B7600",
            "0xf61af48dcb305aacf6097566c026b34dfea414fa959ebbdd5c9236e4987a51bfee087580696231ac67d595b2a824f7f57bf4d25eba1f4fcf4a97d2a50940fa10",
            "fdf9c5731eea847b71dd2dffd0a097d06f972fb7f5d7cbaabd58fea9ea0a7be5",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x084366D85D6446779bA117c0f9aBB7D7D83B7600",
            "BPYa9I3LMFqs9gl1ZsAms03+pBT6lZ673VySNuSYelG/7gh1gGliMaxn1ZWyqCT39Xv00l66H0/PSpfSpQlA+hA=",
            "/fnFcx7qhHtx3S3/0KCX0G+XL7f118uqvVj+qeoKe+U=",
        ),
    ),
    # m/44'/60'/0'/0/637
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x9a6C547e74F755B226540f96a4F1224f9339DD0c",
            "0xca23753937b3d7c115b6e55fb8c5c6d1ab3a6cd1fe35fccd22ec45d62a9bdb60d81fd6dda4cf2298fec313711d6c5b682cf6f365db7c07c229cfd93bf7340410",
            "c94af4a0c5dc7b2326a45d95ed9bc568e4cd6de6d3d84d2197f2ab2eae0dd198",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x9a6C547e74F755B226540f96a4F1224f9339DD0c",
            "BMojdTk3s9fBFbblX7jFxtGrOmzR/jX8zSLsRdYqm9tg2B/W3aTPIpj+wxNxHWxbaCz282XbfAfCKc/ZO/c0BBA=",
            "yUr0oMXceyMmpF2V7ZvFaOTNbebT2E0hl/KrLq4N0Zg=",
        ),
    ),
    # m/44'/60'/0'/0/638
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x83563489B28cFA34dB9aAe6727F12b538F1Fb830",
            "0xaddc7a36e687121a27b601a0d3985814ce847922ae8bf80f75dd3accaf42188a9d9388250aa4ebeaf8ef5cb55e8f093fe471e5f4a92525b1dff2a8195db2f17b",
            "ab0dd941d98cca298ebbf568c35ae74cb88540d5d15263df9880b2c3681273c4",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x83563489B28cFA34dB9aAe6727F12b538F1Fb830",
            "BK3cejbmhxIaJ7YBoNOYWBTOhHkirov4D3XdOsyvQhiKnZOIJQqk6+r471y1Xo8JP+Rx5fSpJSWx3/KoGV2y8Xs=",
            "qw3ZQdmMyimOu/Vow1rnTLiFQNXRUmPfmICyw2gSc8Q=",
        ),
    ),
    # m/44'/60'/0'/0/639
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x4764AE2FE52679B406Fdcc1d02126EaC168185C6",
            "0x519996355ded6a02132f472398daa1027b4a9907b5b63dd0bf8e3d127071d400598d0468d136ce75fa9a0ac768a8d10de19dc5a2fd09a6b5c8b69f02e9766f22",
            "4e09f97c8becdaad9d51b922a975c59279b11ff049b02048e415f14b37308597",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x4764AE2FE52679B406Fdcc1d02126EaC168185C6",
            "BFGZljVd7WoCEy9HI5jaoQJ7SpkHtbY90L+OPRJwcdQAWY0EaNE2znX6mgrHaKjRDeGdxaL9Caa1yLafAul2byI=",
            "Tgn5fIvs2q2dUbkiqXXFknmxH/BJsCBI5BXxSzcwhZc=",
        ),
    ),
    # m/44'/60'/0'/0/640
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x86BaDbfA043b7Ec9ed24DcaC08CDb8fB20D170Eb",
            "0x4af398ac055aafca596d3497772af81351185bf95e45a5a3dcd0a8a38c6ddefe88a6744d849a9110e25d3074ec35483407d4c4af80a112543eadd5acac7c1b42",
            "27a3fbf27c2758bf42537a11436b17d05c13825c2c2f79acbe1f8e098155310d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x86BaDbfA043b7Ec9ed24DcaC08CDb8fB20D170Eb",
            "BErzmKwFWq/KWW00l3cq+BNRGFv5XkWlo9zQqKOMbd7+iKZ0TYSakRDiXTB07DVINAfUxK+AoRJUPq3VrKx8G0I=",
            "J6P78nwnWL9CU3oRQ2sX0FwTglwsL3msvh+OCYFVMQ0=",
        ),
    ),
    # m/44'/60'/0'/0/641
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x890581Ab7712490D34A9360b89E34a288CD34457",
            "0x7adba73900957ac6772f197d749372ba9bfd78f300a75e9cb2bb9b5aa58e5227b97ef9c12cc712c5df48f8def2df188fa208905fc451605d6a1b65d8708c3bd8",
            "d74d0979babab970b5817bb4dcb39ce427d1dbc006a6ec1c1b82dce8e759919f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x890581Ab7712490D34A9360b89E34a288CD34457",
            "BHrbpzkAlXrGdy8ZfXSTcrqb/XjzAKdenLK7m1qljlInuX75wSzHEsXfSPje8t8Yj6IIkF/EUWBdahtl2HCMO9g=",
            "100Jebq6uXC1gXu03LOc5CfR28AGpuwcG4Lc6OdZkZ8=",
        ),
    ),
    # m/44'/60'/0'/0/642
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x83CBFeDBCF10395EA871c9d8303a4e2ff2164bB1",
            "0x413a3af52fd4d4b1e5082c37cd29af531bc3626a647887892b4d0663c57b2c2cccce7864270aac6c74e537a4cb7b46ae36d05d2c994f1c287ccb4d29e9a3fc25",
            "680ef05969abf307b749120a1a5c62caf8979d1fa1e9d9e0e7a07896d502d687",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x83CBFeDBCF10395EA871c9d8303a4e2ff2164bB1",
            "BEE6OvUv1NSx5QgsN80pr1Mbw2JqZHiHiStNBmPFeywszM54ZCcKrGx05Teky3tGrjbQXSyZTxwofMtNKemj/CU=",
            "aA7wWWmr8we3SRIKGlxiyviXnR+h6dng56B4ltUC1oc=",
        ),
    ),
    # m/44'/60'/0'/0/643
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x904B723a98A6a460191C197bA377801b60E1c4f1",
            "0xa2d56603badb7b6491c60b7ed61f3186c9bf463dd2c4ef51688e2d0fd40ef309661d588b35cf4ab4f1892ece8c8b435281e36b14008baf3f90526093a65a5694",
            "3df5b23ba995c5b79da2b79d61a5a5387dd9656a06becdbdfc1632721eddf3a9",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x904B723a98A6a460191C197bA377801b60E1c4f1",
            "BKLVZgO623tkkcYLftYfMYbJv0Y90sTvUWiOLQ/UDvMJZh1YizXPSrTxiS7OjItDUoHjaxQAi68/kFJgk6ZaVpQ=",
            "PfWyO6mVxbedoredYaWlOH3ZZWoGvs29/BYych7d86k=",
        ),
    ),
    # m/44'/60'/0'/0/644
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x3936B222Ffe35744bB29a0eac885403e909f4B99",
            "0xa0b8be0f1561347109a77150709f59f796a42d3513503357b789002c89bebff6e23d840cb3fca4f0fd6e0c62cb1adaa9a2ac948ab204be4561fa7042129ff600",
            "7029325fdf717d1138c82ef72081e2bc334b171fa8aa9e02522ac12c840f6dc6",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x3936B222Ffe35744bB29a0eac885403e909f4B99",
            "BKC4vg8VYTRxCadxUHCfWfeWpC01E1AzV7eJACyJvr/24j2EDLP8pPD9bgxiyxraqaKslIqyBL5FYfpwQhKf9gA=",
            "cCkyX99xfRE4yC73IIHivDNLFx+oqp4CUirBLIQPbcY=",
        ),
    ),
    # m/44'/60'/0'/0/645
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xb5912510a1D98D01e404558166A7971930B4811E",
            "0x02928e45811eb73ba767d53c3a1e41066dd00ad52e6f6c1c8edfab3ac97d8f2ef5b70e0e36629ce717311aea79dc0febe6fd9b5643138ec2e94a4bfc2ee8bdf9",
            "fdf6d62520bd7aba46681cbdf8229668c3e9d2d51e2f7201392d3ebe19aac0b9",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xb5912510a1D98D01e404558166A7971930B4811E",
            "BAKSjkWBHrc7p2fVPDoeQQZt0ArVLm9sHI7fqzrJfY8u9bcODjZinOcXMRrqedwP6+b9m1ZDE47C6UpL/C7ovfk=",
            "/fbWJSC9erpGaBy9+CKWaMPp0tUeL3IBOS0+vhmqwLk=",
        ),
    ),
    # m/44'/60'/0'/0/646
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xCDf7F04548Eff45c6BaD87133f5907707d8b68A3",
            "0xbe507a0281bb2fdc5ec4d960af1fe7f35c6cb6e9ab0d64128ac6385bacc40575c6d67858369dabd5c19d55af10836051ad97dd88ab473dcb66ce53fe28b0a324",
            "60674c3c6da1ef1980d6846f9d54dbe99b22fc9ab45d9abee580e329237af7ea",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xCDf7F04548Eff45c6BaD87133f5907707d8b68A3",
            "BL5QegKBuy/cXsTZYK8f5/NcbLbpqw1kEorGOFusxAV1xtZ4WDadq9XBnVWvEINgUa2X3YirRz3LZs5T/iiwoyQ=",
            "YGdMPG2h7xmA1oRvnVTb6Zsi/Jq0XZq+5YDjKSN69+o=",
        ),
    ),
    # m/44'/60'/0'/0/647
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xdeedddc8b5C613F69A8b2F547Bb102F13Db6d356",
            "0xdfaa142ae8d12287365c6d0e3d4c4953fd645ca3bb0ac4233008a4e368ec9ef904645a97af7b07b045e7a99e6337d46c2bf68cc4fbfbad237c62da5c31da6993",
            "22b5972dee6856d0ae146ee45d87ac37c9d8eb069b50c259ada63ae2d523284c",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xdeedddc8b5C613F69A8b2F547Bb102F13Db6d356",
            "BN+qFCro0SKHNlxtDj1MSVP9ZFyjuwrEIzAIpONo7J75BGRal697B7BF56meYzfUbCv2jMT7+60jfGLaXDHaaZM=",
            "IrWXLe5oVtCuFG7kXYesN8nY6wabUMJZraY64tUjKEw=",
        ),
    ),
    # m/44'/60'/0'/0/648
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x65189BcEb6F4058983a380BBbdee8537A095933e",
            "0xaa4a123b85483ea5ae7f4a6acc619f922f8452c49be6e218395e56079c02ac5b6a6910a43ec63fcdc7ed03737c3eed2d65c56d9afbddd80978fe57c8ea18a7d9",
            "05952489dd27081a66826e31ba12a3d012b742584b2c84140a74b2d8a84d7a11",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x65189BcEb6F4058983a380BBbdee8537A095933e",
            "BKpKEjuFSD6lrn9Kasxhn5IvhFLEm+biGDleVgecAqxbamkQpD7GP83H7QNzfD7tLWXFbZr73dgJeP5XyOoYp9k=",
            "BZUkid0nCBpmgm4xuhKj0BK3QlhLLIQUCnSy2KhNehE=",
        ),
    ),
    # m/44'/60'/0'/0/649
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x6BF99DCDf03e0ecb1AAa0A5131D7aAB1fc6e6F0a",
            "0x854051efb2b29bb9e9f3e63f9fd67b9c9e98d4231aca0eb7fe4f86f6dff5cd2404e84ea98e83913c220b2d7bf0fcfe643adc554628df23ac85d9eea52270c626",
            "62cba6d7322fb66423ed4297f0605959d29415b3a75ec39f026f8356ae61b0dc",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x6BF99DCDf03e0ecb1AAa0A5131D7aAB1fc6e6F0a",
            "BIVAUe+yspu56fPmP5/We5yemNQjGsoOt/5Phvbf9c0kBOhOqY6DkTwiCy178Pz+ZDrcVUYo3yOshdnupSJwxiY=",
            "Ysum1zIvtmQj7UKX8GBZWdKUFbOnXsOfAm+DVq5hsNw=",
        ),
    ),
    # m/44'/60'/0'/0/650
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xb12Dfc56C13939eb22113197136510728E0Ca5ac",
            "0x4457970832b5bf98a4700f9e7ccea6213a1b97a8683a312c479bb33c24f03006efdaf65486b7db8b3dd3d42c543dfef1494f52fe3522e55ae5f11d35c7fba5e9",
            "1fffa2390f3f9250f0f14ad443016848f037421cd90ff3b3f511da881d8de7d3",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xb12Dfc56C13939eb22113197136510728E0Ca5ac",
            "BERXlwgytb+YpHAPnnzOpiE6G5eoaDoxLEebszwk8DAG79r2VIa324s909QsVD3+8UlPUv41IuVa5fEdNcf7pek=",
            "H/+iOQ8/klDw8UrUQwFoSPA3QhzZD/Oz9RHaiB2N59M=",
        ),
    ),
    # m/44'/60'/0'/0/651
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x260bc3ae9b3e7f5777b049E739F239aaEa02a00a",
            "0x51f5ccbcc770e60594cb6def9181dde2ecb7796fc375d6b15ec51c3f0e60379b6269df94701022328b2230aaf30a3d0f89b39c21d56e51da5f7c21f7a4002802",
            "5baa97a69f50974afbc29e0181f5f3dc72c19fac64a409b5e580fce45e72ebb9",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x260bc3ae9b3e7f5777b049E739F239aaEa02a00a",
            "BFH1zLzHcOYFlMtt75GB3eLst3lvw3XWsV7FHD8OYDebYmnflHAQIjKLIjCq8wo9D4mznCHVblHaX3wh96QAKAI=",
            "W6qXpp9Ql0r7wp4BgfXz3HLBn6xkpAm15YD85F5y67k=",
        ),
    ),
    # m/44'/60'/0'/0/652
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xEb120db238507689889b193737E9D4709B4CEFC8",
            "0x7c261a3c20a60476f26fcbc9cda23abbc169f6467a6b8e542666d9e5d9808d69cb558b776d8a3092a529b75df7a92a49451179005c857f28a6850e016b7daf65",
            "3fd9390a5915350789f3d189320f0407c065a5ae8c6ee9e1c1f471de2f9c76ae",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xEb120db238507689889b193737E9D4709B4CEFC8",
            "BHwmGjwgpgR28m/Lyc2iOrvBafZGemuOVCZm2eXZgI1py1WLd22KMJKlKbdd96kqSUUReQBchX8opoUOAWt9r2U=",
            "P9k5ClkVNQeJ89GJMg8EB8Blpa6MbunhwfRx3i+cdq4=",
        ),
    ),
    # m/44'/60'/0'/0/653
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x9df2E417DF992b9164aE5Ca9D0665307FfA3A34D",
            "0x62ef9660e501a41dad07d17a10c1486ec555289c301d3e9072f07b2f0594e85ff43a43c4815f204e564d146bcf7677ef80a6dfd1ead831bcd383071ff904da1c",
            "f0fd74d6c658ac0ff49dca9b8385dabb36b46ad7d5c1ceb4c0e536295da34e7f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x9df2E417DF992b9164aE5Ca9D0665307FfA3A34D",
            "BGLvlmDlAaQdrQfRehDBSG7FVSicMB0+kHLwey8FlOhf9DpDxIFfIE5WTRRrz3Z374Cm39Hq2DG804MHH/kE2hw=",
            "8P101sZYrA/0ncqbg4Xauza0atfVwc60wOU2KV2jTn8=",
        ),
    ),
    # m/44'/60'/0'/0/654
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xfA92B7F94676669FA134D670cFa7aC422815bF26",
            "0xcedd3160bc87acb90fdb78b35ad61e5b7a5c5909f210b79abe5ba873fc7bfe906fd9f07a73e13e135af9ba697cfaea129056f271470360c4723d233d19622bd8",
            "2724b16ce505432b6f0933472e2c9a60641b738f6271cbad884ca57b293ec8a5",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xfA92B7F94676669FA134D670cFa7aC422815bF26",
            "BM7dMWC8h6y5D9t4s1rWHlt6XFkJ8hC3mr5bqHP8e/6Qb9nwenPhPhNa+bppfPrqEpBW8nFHA2DEcj0jPRliK9g=",
            "JySxbOUFQytvCTNHLiyaYGQbc49iccutiEyleyk+yKU=",
        ),
    ),
    # m/44'/60'/0'/0/655
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x1F18d91cA5f26819E1ED48D5EB3eB2f67a2668aF",
            "0x790b065082d827a2c8c594747b77f4ea23f195b8ec2be8536147f52fe8399c52f2fac1949c2a1bea9fa9a0610866288fdc2547803ccfeaad27b9fc17e48e2a18",
            "3d7a4483455d73d72e42f523551b0604a81c0ee37d0e450b0811554394d57e64",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x1F18d91cA5f26819E1ED48D5EB3eB2f67a2668aF",
            "BHkLBlCC2CeiyMWUdHt39Ooj8ZW47CvoU2FH9S/oOZxS8vrBlJwqG+qfqaBhCGYoj9wlR4A8z+qtJ7n8F+SOKhg=",
            "PXpEg0Vdc9cuQvUjVRsGBKgcDuN9DkULCBFVQ5TVfmQ=",
        ),
    ),
    # m/44'/60'/0'/0/656
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xB462D716093f2A728BEF667837c4B4204AE99526",
            "0xa1fbf1582c75777b65306a12f4eec22e105c626bf003a8eba044e0fbf6e8827a240fdb78066a571b78cbd71680ef40516273915725193079ed05b27088e1d3c8",
            "bb4dafaf93c4001d2d0a2e170a40d90a88fcbbfece1a1761299c5896fae149bd",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xB462D716093f2A728BEF667837c4B4204AE99526",
            "BKH78VgsdXd7ZTBqEvTuwi4QXGJr8AOo66BE4Pv26IJ6JA/beAZqVxt4y9cWgO9AUWJzkVclGTB57QWycIjh08g=",
            "u02vr5PEAB0tCi4XCkDZCoj8u/7OGhdhKZxYlvrhSb0=",
        ),
    ),
    # m/44'/60'/0'/0/657
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x767Fe7795df5d735861Ea16B854DaD3f1314f49f",
            "0x5fdf1104bf9fce77fbf262f2e6cc9fe3011fc10508bca574c292594f85ad8771cd03f0695b5b755a334c7ca8e7952e32ce37def3d5b177482d69069c83e5d812",
            "409b36bda104ae9f6f3aa2e5b8d676a64f9b2492d292393edf0b8480a19a30a7",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x767Fe7795df5d735861Ea16B854DaD3f1314f49f",
            "BF/fEQS/n853+/Ji8ubMn+MBH8EFCLyldMKSWU+FrYdxzQPwaVtbdVozTHyo55UuMs433vPVsXdILWkGnIPl2BI=",
            "QJs2vaEErp9vOqLluNZ2pk+bJJLSkjk+3wuEgKGaMKc=",
        ),
    ),
    # m/44'/60'/0'/0/658
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x90A6b5963c71E59d28e82629BD09b17B6E763418",
            "0xc7144a09c78e994ace2882ff9535a960381f4d4a5324f1cc8cb81f9e1bf07cfb9a4df761c7ee660752c63727e81bd00fbaa0300a4cbbb5aa749bd8daf34a1575",
            "6b8744a88bd3275e6b45a765e9ca7708367a4655a69e8689b0f018a47d8af3ac",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x90A6b5963c71E59d28e82629BD09b17B6E763418",
            "BMcUSgnHjplKziiC/5U1qWA4H01KUyTxzIy4H54b8Hz7mk33YcfuZgdSxjcn6BvQD7qgMApMu7WqdJvY2vNKFXU=",
            "a4dEqIvTJ15rRadl6cp3CDZ6RlWmnoaJsPAYpH2K86w=",
        ),
    ),
    # m/44'/60'/0'/0/659
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xC2Ac95ea7fC4052f2050507Fd1637B28c070Dc84",
            "0xd823dfc1820ab4fd2b5450c6e8b3d443c0c1b30f1ecf9a8ec9074acbb72fb8a9c982e4388db51fed07c7a2cf0dfa6e8d67b26053e6df7853f2f0e9a5353ad5d4",
            "d943bde8b46ed5e2442987e2519f98424fb1a7b827a4cb236f77e65a264d52e3",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xC2Ac95ea7fC4052f2050507Fd1637B28c070Dc84",
            "BNgj38GCCrT9K1RQxuiz1EPAwbMPHs+ajskHSsu3L7ipyYLkOI21H+0Hx6LPDfpujWeyYFPm33hT8vDppTU61dQ=",
            "2UO96LRu1eJEKYfiUZ+YQk+xp7gnpMsjb3fmWiZNUuM=",
        ),
    ),
    # m/44'/60'/0'/0/660
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x3166aA7c9b8b997f7aAc7346b3Dc76d9C751d6E4",
            "0xa4477b2c07a57debf161a361926fed0048d72298e09f69e4d8d28ff2edbc925b18fb0722e0beab7fd3e8a8d3681e392b9e9515c1631e0da305695c3935206985",
            "bc0f7f63e4248c505875520b06a032433132acdcbfca7ddea49d2bea00b9dd74",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x3166aA7c9b8b997f7aAc7346b3Dc76d9C751d6E4",
            "BKRHeywHpX3r8WGjYZJv7QBI1yKY4J9p5NjSj/LtvJJbGPsHIuC+q3/T6KjTaB45K56VFcFjHg2jBWlcOTUgaYU=",
            "vA9/Y+QkjFBYdVILBqAyQzEyrNy/yn3epJ0r6gC53XQ=",
        ),
    ),
    # m/44'/60'/0'/0/661
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x8323116EE19d867Aa9F402EC175b8871cE99377d",
            "0xe0ee92ceae3e4b307c8004663fbfe4935bd81d519056bcdf855a9b4df3c83da74e0f16990853acf8bbd0a6128a938eb69b6e9fba9144511ff6b7493091de577d",
            "130747caa0153cb68d8a14bb47124f88fb588012e4931071f081cc09dea7df48",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x8323116EE19d867Aa9F402EC175b8871cE99377d",
            "BODuks6uPkswfIAEZj+/5JNb2B1RkFa834Vam03zyD2nTg8WmQhTrPi70KYSipOOtptun7qRRFEf9rdJMJHeV30=",
            "EwdHyqAVPLaNihS7RxJPiPtYgBLkkxBx8IHMCd6n30g=",
        ),
    ),
    # m/44'/60'/0'/0/662
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x9dCF27669BE9Fc6cDDaA31F0C44002348Fa92220",
            "0xdbcb4b372aef9f25208d381cb6f79a3d9335f753dd0b9a035837456b0d7c2816eea022adb11e58484da2dbfb228882ee4ff57310f974c9f96fbb538496d17b84",
            "9ec561eaf84ffbf89b505000f7e3a853a78c1494e588ee9aa7b5a035574d776b",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x9dCF27669BE9Fc6cDDaA31F0C44002348Fa92220",
            "BNvLSzcq758lII04HLb3mj2TNfdT3QuaA1g3RWsNfCgW7qAirbEeWEhNotv7IoiC7k/1cxD5dMn5b7tThJbRe4Q=",
            "nsVh6vhP+/ibUFAA9+OoU6eMFJTliO6ap7WgNVdNd2s=",
        ),
    ),
    # m/44'/60'/0'/0/663
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x4705fb13454E7D984519bED6044C3d4BcE5189d4",
            "0x42e4af5f13ebb1d843b2baa6f75ffa85746f303c95cf7145cc9f60b5a2feef37808365682d6ad2700511524547cfda1ccc4cdada14680e70ed733dc587722630",
            "b2ff112c364523c89e31415c29c5243c5134ca59d3ba4bbcd7b02b5232d548ed",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x4705fb13454E7D984519bED6044C3d4BcE5189d4",
            "BELkr18T67HYQ7K6pvdf+oV0bzA8lc9xRcyfYLWi/u83gINlaC1q0nAFEVJFR8/aHMxM2toUaA5w7XM9xYdyJjA=",
            "sv8RLDZFI8ieMUFcKcUkPFE0ylnTuku817ArUjLVSO0=",
        ),
    ),
    # m/44'/60'/0'/0/664
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x62fd0E9f4f3a08Cd978C0111241a12e3EDb8b40A",
            "0x056419e091ed0f8941f715204e04346b7d71dabced96795e17a73d09fc474341c9700da791d31a6a4577d3256d64432bd37b05bf2a52ec6bd0f7c98f9931c537",
            "8e5ba88b2e9f6fd3ac958e234779f8aab0ab189deb6f89e179abca8cf0a577d9",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x62fd0E9f4f3a08Cd978C0111241a12e3EDb8b40A",
            "BAVkGeCR7Q+JQfcVIE4ENGt9cdq87ZZ5XhenPQn8R0NByXANp5HTGmpFd9MlbWRDK9N7Bb8qUuxr0PfJj5kxxTc=",
            "jluoiy6fb9OslY4jR3n4qrCrGJ3rb4nheavKjPCld9k=",
        ),
    ),
    # m/44'/60'/0'/0/665
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xC9BA306a3ddc7fb530BdAf48Eda11cB3Fe005028",
            "0x497c211ee4ee199f50af45fbc320c5c6f7734568d8e49f42e72d05f652cfd1401de2bc0ec4ad5cfacef0b596cacbdadc6b2d21433b22da7b1e6a931406b57b23",
            "7a325ceffd81db2102b6231de99cd62302919739bdf56cafb6f6c70d6f52c975",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xC9BA306a3ddc7fb530BdAf48Eda11cB3Fe005028",
            "BEl8IR7k7hmfUK9F+8Mgxcb3c0Vo2OSfQuctBfZSz9FAHeK8DsStXPrO8LWWysva3GstIUM7Itp7HmqTFAa1eyM=",
            "ejJc7/2B2yECtiMd6ZzWIwKRlzm99WyvtvbHDW9SyXU=",
        ),
    ),
    # m/44'/60'/0'/0/666
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x347a691ef6c9EF73c78BB77AfeF41e73eA3C200c",
            "0x81179ffd926f1ecdbd4b0b35ed8105401b437178c406ea4b661bb1a78921c29b26d266d6e868f710ef602c4dde9a3a4f23d6a9ca89c3849fef4d98c11bf3df14",
            "a18b676c98dcd2d2cadeff3a402126b9a000a7dbb4649760ab18dc4afd47d2a8",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x347a691ef6c9EF73c78BB77AfeF41e73eA3C200c",
            "BIEXn/2Sbx7NvUsLNe2BBUAbQ3F4xAbqS2YbsaeJIcKbJtJm1uho9xDvYCxN3po6TyPWqcqJw4Sf702YwRvz3xQ=",
            "oYtnbJjc0tLK3v86QCEmuaAAp9u0ZJdgqxjcSv1H0qg=",
        ),
    ),
    # m/44'/60'/0'/0/667
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x6bEB42E8d048D75452312781501A547e8F95cCDa",
            "0x5de5e678dde869bb0731e5b1ede0b05cedf156c90d3a982b2ae02f82fdb2192038f5a92328f70de88f44d66bd0486212b9be2b2d634d1b41fe3238c54947c041",
            "9efe8e478c6b8fcc8389bee848c157bfe36e289f0304406f4ddceadc71c4d0de",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x6bEB42E8d048D75452312781501A547e8F95cCDa",
            "BF3l5njd6Gm7BzHlse3gsFzt8VbJDTqYKyrgL4L9shkgOPWpIyj3DeiPRNZr0EhiErm+Ky1jTRtB/jI4xUlHwEE=",
            "nv6OR4xrj8yDib7oSMFXv+NuKJ8DBEBvTdzq3HHE0N4=",
        ),
    ),
    # m/44'/60'/0'/0/668
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xA4c6215D7d7EB9218048CD0a3b82d90eC5719aDc",
            "0x1d9659d073220095a660e1084faf9e305a1df18afd499132f7168b13fa885968797a572c70d86bbf8033ae85da27efddd5cde62db46485190a352e6f4d3f6454",
            "d2ebf5f5bd4862a4dd4f058b83ce075eaf1f39cc328df1fcf163377779a25ec4",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xA4c6215D7d7EB9218048CD0a3b82d90eC5719aDc",
            "BB2WWdBzIgCVpmDhCE+vnjBaHfGK/UmRMvcWixP6iFloeXpXLHDYa7+AM66F2ifv3dXN5i20ZIUZCjUub00/ZFQ=",
            "0uv19b1IYqTdTwWLg84HXq8fOcwyjfH88WM3d3miXsQ=",
        ),
    ),
    # m/44'/60'/0'/0/669
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x77856225d5b79291FA4B3f6C42AaAbA2888d109A",
            "0xa5ebdb7caf1a21a31c9676a079f39344539e2cafbe141f6aa8410a9f678de87bd424aa2f568786ef09a1576876a932867623d669cbb9dff18ad009627249b95f",
            "2288b5f22749954109b6bb5f4743e53d95cd3f70eba9d04e7a190e3e366aa920",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x77856225d5b79291FA4B3f6C42AaAbA2888d109A",
            "BKXr23yvGiGjHJZ2oHnzk0RTniyvvhQfaqhBCp9njeh71CSqL1aHhu8JoVdodqkyhnYj1mnLud/xitAJYnJJuV8=",
            "Ioi18idJlUEJtrtfR0PlPZXNP3DrqdBOehkOPjZqqSA=",
        ),
    ),
    # m/44'/60'/0'/0/670
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xd411F3933163B05c4C2f2fDCa1220c76b6e4dCdb",
            "0x3179e3ede1269750c879b889ecddb217aa882fdd14fccb5879bb50f23ec8e8b21b66e4ed20c25818c54d3f17d0d0d672a87727903e8879659f0ca3a925ab7bc7",
            "2e16fedcc951e99a49f6288669d84531f270a39618a9faf5191504ddf6dc299f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xd411F3933163B05c4C2f2fDCa1220c76b6e4dCdb",
            "BDF54+3hJpdQyHm4iezdsheqiC/dFPzLWHm7UPI+yOiyG2bk7SDCWBjFTT8X0NDWcqh3J5A+iHllnwyjqSWre8c=",
            "Lhb+3MlR6ZpJ9iiGadhFMfJwo5YYqfr1GRUE3fbcKZ8=",
        ),
    ),
    # m/44'/60'/0'/0/671
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xd4C49F5d74C38B65AA556ff697740c38aab1C6F9",
            "0x3d92cef0e46157305ff0264b046161956ad29dd7c9010a79ca2fed8058f792f03c656320e1600ab73c1c4985fbefa22c1fe32aba9f5171228c168615eaf768ee",
            "dcbd0183ee48b4554c085aa0ebab0b2b64106f26532c1db749b321800ad2e849",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xd4C49F5d74C38B65AA556ff697740c38aab1C6F9",
            "BD2SzvDkYVcwX/AmSwRhYZVq0p3XyQEKecov7YBY95LwPGVjIOFgCrc8HEmF+++iLB/jKrqfUXEijBaGFer3aO4=",
            "3L0Bg+5ItFVMCFqg66sLK2QQbyZTLB23SbMhgArS6Ek=",
        ),
    ),
    # m/44'/60'/0'/0/672
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x18e48938674d12F5B54f6e30237B4dc813eEEc43",
            "0x57b274787ff04d2ffa2962d54007cdbc97c8812e6aca4b7907552438632fe9234bc5c3b617e9f57596de60d747d379e6d36a922cacc284dbc9164cb3ee208f21",
            "bd9b6553e24da80635018c6cea9c0916d42a8c62586a6f2f314e5f039c6c0c36",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x18e48938674d12F5B54f6e30237B4dc813eEEc43",
            "BFeydHh/8E0v+ili1UAHzbyXyIEuaspLeQdVJDhjL+kjS8XDthfp9XWW3mDXR9N55tNqkiyswoTbyRZMs+4gjyE=",
            "vZtlU+JNqAY1AYxs6pwJFtQqjGJYam8vMU5fA5xsDDY=",
        ),
    ),
    # m/44'/60'/0'/0/673
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x54135f867ab1590BaF57b2bC4399337cd183b42A",
            "0x0c341c19d00af974667afeb124e2fdd8fe8b9768c5d3a16825757c887ae44e8ab4147bd6f60d7e45ad8868eb796868642a43b73639c4ea8f56c8b91311cd99a5",
            "b6bc3b2f16178d2a286f48a213892a80c8b3e70e530ebbfd0767cf7ea72cfd16",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x54135f867ab1590BaF57b2bC4399337cd183b42A",
            "BAw0HBnQCvl0Znr+sSTi/dj+i5doxdOhaCV1fIh65E6KtBR71vYNfkWtiGjreWhoZCpDtzY5xOqPVsi5ExHNmaU=",
            "trw7LxYXjSoob0iiE4kqgMiz5w5TDrv9B2fPfqcs/RY=",
        ),
    ),
    # m/44'/60'/0'/0/674
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xE763caE609C2d1EDb9e3eaE026A1C3Eb8bAc8860",
            "0xa17dc099d8441e1a0535b22c44fe478d252dcba53281fc5cbde18b428cacf121641b9ed8b6ec27106cdeba11dfed603ed33641353398a7aaf77d67f7ae30522b",
            "a77072affcad00abf80ef5384c047191fb8b299971ccad539bf4e431ae7d3c66",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xE763caE609C2d1EDb9e3eaE026A1C3Eb8bAc8860",
            "BKF9wJnYRB4aBTWyLET+R40lLculMoH8XL3hi0KMrPEhZBue2LbsJxBs3roR3+1gPtM2QTUzmKeq931n964wUis=",
            "p3Byr/ytAKv4DvU4TARxkfuLKZlxzK1Tm/TkMa59PGY=",
        ),
    ),
    # m/44'/60'/0'/0/675
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xAdc9A73adc730F89869a0ECFfc95cacA6C3d1883",
            "0x5315240ecc4c448123ee9c33de4ae8e8a20ec8c98f7a76810d75ea939450b2fb74cd25a64e72263261e65a1f75356c2aad2d9e96f5fb1da23de0d8c1d763cc9e",
            "6b5f0c81bf72eca88d1c3d2a0235025e5a60e5ec60088caea52f7e8f290e6e09",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xAdc9A73adc730F89869a0ECFfc95cacA6C3d1883",
            "BFMVJA7MTESBI+6cM95K6OiiDsjJj3p2gQ116pOUULL7dM0lpk5yJjJh5lofdTVsKq0tnpb1+x2iPeDYwddjzJ4=",
            "a18Mgb9y7KiNHD0qAjUCXlpg5exgCIyupS9+jykObgk=",
        ),
    ),
    # m/44'/60'/0'/0/676
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xE0103F4e5590FDC3C3B11334109C6c4C1e27d4E1",
            "0x52c77db7e12e17beb5986778475808eacd9fb7a3b5e9c1c4053926c37dc0d8e76a5b13593765a2c044ab173ba15d287393adb21772d5a94e4e18d96727d6c1eb",
            "bc86a0e836698e7f246aac24f563cba62a05259586b52677f63fb21acd16e2ba",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xE0103F4e5590FDC3C3B11334109C6c4C1e27d4E1",
            "BFLHfbfhLhe+tZhneEdYCOrNn7ejtenBxAU5JsN9wNjnalsTWTdlosBEqxc7oV0oc5Otshdy1alOThjZZyfWwes=",
            "vIag6DZpjn8kaqwk9WPLpioFJZWGtSZ39j+yGs0W4ro=",
        ),
    ),
    # m/44'/60'/0'/0/677
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xF9B70db74dA1B2A19e0894AA99F53fbee219868a",
            "0xf5e3b36f12ae4d9b422e4740f88f75a2a0406a1f76f6d153da171b894ec02aa087681222e293774e5dc7cc91e5c54167f1801dc340f9f28409112478afc54767",
            "8ec9e8ad6c32f1cf5396e72cbfacb5b01a7e35b298139221390bd6d219e699a4",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xF9B70db74dA1B2A19e0894AA99F53fbee219868a",
            "BPXjs28Srk2bQi5HQPiPdaKgQGofdvbRU9oXG4lOwCqgh2gSIuKTd05dx8yR5cVBZ/GAHcNA+fKECREkeK/FR2c=",
            "jsnorWwy8c9Tlucsv6y1sBp+NbKYE5IhOQvW0hnmmaQ=",
        ),
    ),
    # m/44'/60'/0'/0/678
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x289B69f26Ecb46E665eE7d4201035a299A4E45e5",
            "0xd929dbe8b218b56d51d6b88509db475c4b3a351974a14c97ee24cd6553034440ada5337c7eb79445957c2c2b527bea2f9651c7e29b93e7f8f9391c24b69a0bf4",
            "2c84a85b51711354a8b3abd663f7ec9e0f61a2cbb7b341c66cacbe7472cabf27",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x289B69f26Ecb46E665eE7d4201035a299A4E45e5",
            "BNkp2+iyGLVtUda4hQnbR1xLOjUZdKFMl+4kzWVTA0RAraUzfH63lEWVfCwrUnvqL5ZRx+Kbk+f4+TkcJLaaC/Q=",
            "LISoW1FxE1Sos6vWY/fsng9hosu3s0HGbKy+dHLKvyc=",
        ),
    ),
    # m/44'/60'/0'/0/679
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xFa30A257336c193EB195aD37450e6Be72775168d",
            "0x738cb5243439cac49f958111f0560c468feddba881da9fe34647abf69a2360af4f0ac14459d7a94b11117499eb5a717eccb9aa82a0d9a3c3c75c7c80ee048206",
            "ae99ad9e598c58e77d07affbd67e88850c61ff213164f08b787b31e235829e1b",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xFa30A257336c193EB195aD37450e6Be72775168d",
            "BHOMtSQ0OcrEn5WBEfBWDEaP7duogdqf40ZHq/aaI2CvTwrBRFnXqUsREXSZ61pxfsy5qoKg2aPDx1x8gO4EggY=",
            "rpmtnlmMWOd9B6/71n6IhQxh/yExZPCLeHsx4jWCnhs=",
        ),
    ),
    # m/44'/60'/0'/0/680
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xaA9A6faA4b71C3d0D755ACFC4AC1B36BCc1dfF77",
            "0x332d4c8cb1de86caf636338000812655ccc3991eb2a8d95c59797cbc90768620a0886ce778f171e60ee9fb6117974545a1d061d466568424aa3c843b3f9b0dab",
            "869fb22cf3302aeb46179bb82fbb74454b88f3ee79c4020190d8798bdd982042",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xaA9A6faA4b71C3d0D755ACFC4AC1B36BCc1dfF77",
            "BDMtTIyx3obK9jYzgACBJlXMw5kesqjZXFl5fLyQdoYgoIhs53jxceYO6fthF5dFRaHQYdRmVoQkqjyEOz+bDas=",
            "hp+yLPMwKutGF5u4L7t0RUuI8+55xAIBkNh5i92YIEI=",
        ),
    ),
    # m/44'/60'/0'/0/681
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x2df9989393350fB8674dF03b1a20F37DD264bb86",
            "0xe5c59f78ce41bdb79e3e1fdf9666a8462f38abf2a4751e2f653d3d67d662bf0492624664a0b0d86cb5eefc0654ef39337f892e15da22ca4b92327be35f5b8ddb",
            "a82def0d6f4ba7d19796811437a088b3debca82b99ddbd313622d11538466ec6",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x2df9989393350fB8674dF03b1a20F37DD264bb86",
            "BOXFn3jOQb23nj4f35ZmqEYvOKvypHUeL2U9PWfWYr8EkmJGZKCw2Gy17vwGVO85M3+JLhXaIspLkjJ7419bjds=",
            "qC3vDW9Lp9GXloEUN6CIs968qCuZ3b0xNiLRFThGbsY=",
        ),
    ),
    # m/44'/60'/0'/0/682
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x96A2b3997693834D5Ba8A18C393119190a549bCF",
            "0xc5af0a3d90812c7aa76f83edcf7ecac4ef37fb2351541329283bb9936c5bad1bbe850012f4f8ad4b0fae471f9c8b6a228b3471e122d1e010132e36d84e2ae6b6",
            "d1078b4702d51794a1784ac66ac563f0b52d24ab24da1bdb622afe69aa15308e",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x96A2b3997693834D5Ba8A18C393119190a549bCF",
            "BMWvCj2QgSx6p2+D7c9+ysTvN/sjUVQTKSg7uZNsW60bvoUAEvT4rUsPrkcfnItqIos0ceEi0eAQEy422E4q5rY=",
            "0QeLRwLVF5SheErGasVj8LUtJKsk2hvbYir+aaoVMI4=",
        ),
    ),
    # m/44'/60'/0'/0/683
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x88BE65916BC3e995652f38F368937ed6b1e76909",
            "0xc79b9811ea9e2eafac70b384551824c820c106c0c43cd64f9d07bfad9cb6754e7050895c1d8899ac428b077c09afe35e6ce41806ce9c9b3d3029893a1c088569",
            "51fe1372186db0a5304835d8673adc400b6b6a8156ec28e20d4810e1f9c56041",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x88BE65916BC3e995652f38F368937ed6b1e76909",
            "BMebmBHqni6vrHCzhFUYJMggwQbAxDzWT50Hv62ctnVOcFCJXB2ImaxCiwd8Ca/jXmzkGAbOnJs9MCmJOhwIhWk=",
            "Uf4TchhtsKUwSDXYZzrcQAtraoFW7CjiDUgQ4fnFYEE=",
        ),
    ),
    # m/44'/60'/0'/0/684
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x6BcAA3594c9830b8e615c813d0b737F3A4C2cEE0",
            "0xe5caf992ffb2d7d6102bb0175ddb1d87f3a73d959a233ff6967d5d355c1ff50095713e74798d720c71840b6e5a0a86051f1b9e5c0f682feeb5e02588224a4216",
            "196bca70229969cffa891957d454e3e9d10861cb024ea77932ec40987e0eb3b9",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x6BcAA3594c9830b8e615c813d0b737F3A4C2cEE0",
            "BOXK+ZL/stfWECuwF13bHYfzpz2VmiM/9pZ9XTVcH/UAlXE+dHmNcgxxhAtuWgqGBR8bnlwPaC/uteAliCJKQhY=",
            "GWvKcCKZac/6iRlX1FTj6dEIYcsCTqd5MuxAmH4Os7k=",
        ),
    ),
    # m/44'/60'/0'/0/685
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x34E08D29c9B94A4FFBA0D0c788Ae3720381bc22b",
            "0x0583dc61f07950a7a7ffffd1b789e09264fefa8eae3ec6ca90536d743e22259cc71dcc4815adcde974621e8ce9bb9b082667099d3f0d35383ac465b25fefe02e",
            "f6797ad5c9049aff0f6752a65ce7d78d131918a774206d497b50a20617ad0e6b",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x34E08D29c9B94A4FFBA0D0c788Ae3720381bc22b",
            "BAWD3GHweVCnp///0beJ4JJk/vqOrj7GypBTbXQ+IiWcxx3MSBWtzel0Yh6M6bubCCZnCZ0/DTU4OsRlsl/v4C4=",
            "9nl61ckEmv8PZ1KmXOfXjRMZGKd0IG1Je1CiBhetDms=",
        ),
    ),
    # m/44'/60'/0'/0/686
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x659d2f2Aa56038cC0Dc27E0c91325cBeB6F55d50",
            "0x84c0d9d269216cc5e578178f3ce5127933fe244553fc5a0d69e8edad08c89cb48498cdf27e8583fe14212b14979281fe1a9efed0ef2179bc1c33338a06ddc552",
            "a24852632b253fd2dca34d4f797899a9e978c30145f12f87996aa5d01062702c",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x659d2f2Aa56038cC0Dc27E0c91325cBeB6F55d50",
            "BITA2dJpIWzF5XgXjzzlEnkz/iRFU/xaDWno7a0IyJy0hJjN8n6Fg/4UISsUl5KB/hqe/tDvIXm8HDMzigbdxVI=",
            "okhSYyslP9Lco01PeXiZqel4wwFF8S+HmWql0BBicCw=",
        ),
    ),
    # m/44'/60'/0'/0/687
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xF345a709f4deB545187C4D216540fD15C551Ee86",
            "0x82085caab08a33dff2699c45bfb5a70ed54ea2fa263d044967182a69ba91cc696ca67b6bcf09cb187b8f5cbb2384465e6a485f744ebb06c5ad805def7102eb37",
            "85755931f3243bc7d777c9f13a05c21338d38c842080e6a1b630a331a942a93d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xF345a709f4deB545187C4D216540fD15C551Ee86",
            "BIIIXKqwijPf8mmcRb+1pw7VTqL6Jj0ESWcYKmm6kcxpbKZ7a88Jyxh7j1y7I4RGXmpIX3ROuwbFrYBd73EC6zc=",
            "hXVZMfMkO8fXd8nxOgXCEzjTjIQggOahtjCjMalCqT0=",
        ),
    ),
    # m/44'/60'/0'/0/688
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x49bab095f9301DC6c1d33B4AF654dF6d02cf3215",
            "0x851a5989504717aac9f52260a1d1173e7d479a439ea61f696ad71f27638f7a16b3b341f384f769b6376b88614458cf208591e900f45782c932c98164a3690802",
            "45e26a5b1432eb2bf8f8512bfc78a93c6bdfe18801b61e064fd49a4b3a46d3a6",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x49bab095f9301DC6c1d33B4AF654dF6d02cf3215",
            "BIUaWYlQRxeqyfUiYKHRFz59R5pDnqYfaWrXHydjj3oWs7NB84T3abY3a4hhRFjPIIWR6QD0V4LJMsmBZKNpCAI=",
            "ReJqWxQy6yv4+FEr/HipPGvf4YgBth4GT9SaSzpG06Y=",
        ),
    ),
    # m/44'/60'/0'/0/689
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x5c68B530ce5FF046D652D1685924Cee9D7e3B352",
            "0xec4f2cabc7c3cabad89ba9f241ded61a8a000696b512df7824d3d9e3fa7942f03f7abbf315d9a05a1fd90380304727ce5aa38ee60d839cffa82fc58ae07a8a8d",
            "c7931387515e166a0b46f0aadd3cf1a1abaab896033d237ac27ed0f0bdc8abba",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x5c68B530ce5FF046D652D1685924Cee9D7e3B352",
            "BOxPLKvHw8q62Jup8kHe1hqKAAaWtRLfeCTT2eP6eULwP3q78xXZoFof2QOAMEcnzlqjjuYNg5z/qC/FiuB6io0=",
            "x5MTh1FeFmoLRvCq3TzxoauquJYDPSN6wn7Q8L3Iq7o=",
        ),
    ),
    # m/44'/60'/0'/0/690
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x992f602f30189757796b80ddB5e90EF94F8a0462",
            "0x7619d876decc456862cf6deafd920e9d4bd87ba1115d06af970063eee1c85910af107646255206cc7108127c22ccb1b70129be8aabad1ae3ad28372d38848883",
            "b5130af1f62163635861dc9be3d5f0f1567c5cdd2f75d48b44ab3591b4381fb2",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x992f602f30189757796b80ddB5e90EF94F8a0462",
            "BHYZ2HbezEVoYs9t6v2SDp1L2HuhEV0Gr5cAY+7hyFkQrxB2RiVSBsxxCBJ8IsyxtwEpvoqrrRrjrSg3LTiEiIM=",
            "tRMK8fYhY2NYYdyb49Xw8VZ8XN0vddSLRKs1kbQ4H7I=",
        ),
    ),
    # m/44'/60'/0'/0/691
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xE25486bb0752ca0Bd908067fB6Aa2f708Fc7d5dc",
            "0x2cb640820438bfd534a4aa201b7f36d90b77b12ac2a591cc6c6a51f389b8372ce08d8152c136b2b9aebf44611a6f54749cf2320df2368b4924b517a09830bf6d",
            "4bb7494eec70b57d1e250b7f51e2435a2c61176f086da9b722ebc3cdee293ca7",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xE25486bb0752ca0Bd908067fB6Aa2f708Fc7d5dc",
            "BCy2QIIEOL/VNKSqIBt/NtkLd7EqwqWRzGxqUfOJuDcs4I2BUsE2srmuv0RhGm9UdJzyMg3yNotJJLUXoJgwv20=",
            "S7dJTuxwtX0eJQt/UeJDWixhF28Ibam3IuvDze4pPKc=",
        ),
    ),
    # m/44'/60'/0'/0/692
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xFab6F2f8F798605319AC4a42ADdB6A0a80881E5A",
            "0xd65cf107bcb4a0f90081e29534e503bc73c01bf57299c37fa16b1b8eb3c58d83199145078d3ff4e7ad10989797a4ef1440d2820d4218278ee72c99d7538adb66",
            "f8cba8e6dc3758f337e13a4e1d8d10f1713249197cc6dc43c690e293dbf7b513",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xFab6F2f8F798605319AC4a42ADdB6A0a80881E5A",
            "BNZc8Qe8tKD5AIHilTTlA7xzwBv1cpnDf6FrG46zxY2DGZFFB40/9OetEJiXl6TvFEDSgg1CGCeO5yyZ11OK22Y=",
            "+Muo5tw3WPM34TpOHY0Q8XEySRl8xtxDxpDik9v3tRM=",
        ),
    ),
    # m/44'/60'/0'/0/693
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xC2222Ded325cA684D6291085421Be522d3C34b84",
            "0x6741bb7de84332a9bb1d7ed896889751d86ae9d07d792913090ed3be5fc6a3f50bb887894da1bd78c6081debe13deaffc5d6f2fd2242d4e5dd278c63d9af6a5b",
            "f9bb897e0a008d9b4d0fd7e64bfda00c2778ad4b2ac1a34db9baa70f173c89a8",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xC2222Ded325cA684D6291085421Be522d3C34b84",
            "BGdBu33oQzKpux1+2JaIl1HYaunQfXkpEwkO075fxqP1C7iHiU2hvXjGCB3r4T3q/8XW8v0iQtTl3SeMY9mvals=",
            "+buJfgoAjZtND9fmS/2gDCd4rUsqwaNNubqnDxc8iag=",
        ),
    ),
    # m/44'/60'/0'/0/694
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xdB2a1117fC17DbCc236Ec6621688560f437b2ddb",
            "0xc79ef2ec04a9a6e2773bcb670a52dcaa1c539f76eee59a9a8794e19240a71fffcb98f426826de882f6f2d1184217693f02e167457f3004ad2863e3182c08f3ca",
            "26ba4055cd667bcd19cab606fc32cd97d5edca28af3ae127d794e8eccdd1245d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xdB2a1117fC17DbCc236Ec6621688560f437b2ddb",
            "BMee8uwEqabidzvLZwpS3KocU5927uWamoeU4ZJApx//y5j0JoJt6IL28tEYQhdpPwLhZ0V/MAStKGPjGCwI88o=",
            "JrpAVc1me80ZyrYG/DLNl9XtyiivOuEn15To7M3RJF0=",
        ),
    ),
    # m/44'/60'/0'/0/695
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x113f9607A1D56873A93A3C1684C9c6D44e1BF25E",
            "0x2d8adb2f8ca6fbfd62ea7d1dfd957752fca6a141d171588ac271d5ec2aaffb636930642bcc2f77cdd25e3729fdc86c2874851c714ee8e58c1038f665104f6412",
            "4363c5f2e084f95b4855c82d57a6d1e7d6126d7826c9dcfef720c453ca9f2e48",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x113f9607A1D56873A93A3C1684C9c6D44e1BF25E",
            "BC2K2y+Mpvv9Yup9Hf2Vd1L8pqFB0XFYisJx1ewqr/tjaTBkK8wvd83SXjcp/chsKHSFHHFO6OWMEDj2ZRBPZBI=",
            "Q2PF8uCE+VtIVcgtV6bR59YSbXgmydz+9yDEU8qfLkg=",
        ),
    ),
    # m/44'/60'/0'/0/696
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x9B4367AD18Cae5719FE0c34a925ad53271a4C0f8",
            "0x845b439984fed302e8051e6bcb9a8726e283044085f6d6e5956ea07d9163f83449dc0ca624aee16d43334e0d546279f91f4552a37b1ed3a12f2aee1c7253257e",
            "66cbdb8b6c34ab831535f36c2ca93b2f2e73f496a8f52c7b94029f4b13b805d5",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x9B4367AD18Cae5719FE0c34a925ad53271a4C0f8",
            "BIRbQ5mE/tMC6AUea8uahybigwRAhfbW5ZVuoH2RY/g0SdwMpiSu4W1DM04NVGJ5+R9FUqN7HtOhLyruHHJTJX4=",
            "Zsvbi2w0q4MVNfNsLKk7Ly5z9Jao9Sx7lAKfSxO4BdU=",
        ),
    ),
    # m/44'/60'/0'/0/697
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x28233180AeFD1ad63Ca734099138c5ee3385dc1C",
            "0x918aa016fb3b52c6e28ec4606f8c40a484f032aa6e0a15ba238c86bc56ff1d1be30fa5b824598898cbb1bffa45175b5385fbbab1af13f4e57f1a5f5e16353543",
            "feaffea37978035504d5778cfac698b424e215e92ab397608cbf0cb6a464a5ed",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x28233180AeFD1ad63Ca734099138c5ee3385dc1C",
            "BJGKoBb7O1LG4o7EYG+MQKSE8DKqbgoVuiOMhrxW/x0b4w+luCRZiJjLsb/6RRdbU4X7urGvE/TlfxpfXhY1NUM=",
            "/q/+o3l4A1UE1XeM+saYtCTiFekqs5dgjL8MtqRkpe0=",
        ),
    ),
    # m/44'/60'/0'/0/698
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x186Ce220FbF7C6b69D642eeaBe7b84faAA3fAf42",
            "0x2653f1aaf99e171c338b63ea975f8b434dff6fa9d10c7aef47ddcf5cc6281c84508e1a7e47b78adfc702255138f8523afc12e8e4c5a8d41ba6886e763536b9ce",
            "80a5e7e6d0b57b3b2659a5816accb50eea14d009a0d2305d0f862d1bf878bdc7",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x186Ce220FbF7C6b69D642eeaBe7b84faAA3fAf42",
            "BCZT8ar5nhccM4tj6pdfi0NN/2+p0Qx670fdz1zGKByEUI4afke3it/HAiVROPhSOvwS6OTFqNQbpohudjU2uc4=",
            "gKXn5tC1ezsmWaWBasy1DuoU0Amg0jBdD4YtG/h4vcc=",
        ),
    ),
    # m/44'/60'/0'/0/699
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x1A4c4CaDB126B0f752603C5Dd3aeFc864994d100",
            "0x65fe68d4386524b34b3bb9983119881ceeeac765e26fcbc01ed3cf6a0cd096f1a2031e3532fd73bf18fb82c3bb2bd755d75d57402281a4ff17854cfe0573acd4",
            "1f9e10c7fa634b35dcc48a399d57c877314133d070ba1c819e50678674d24cad",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x1A4c4CaDB126B0f752603C5Dd3aeFc864994d100",
            "BGX+aNQ4ZSSzSzu5mDEZiBzu6sdl4m/LwB7Tz2oM0JbxogMeNTL9c78Y+4LDuyvXVdddV0AigaT/F4VM/gVzrNQ=",
            "H54Qx/pjSzXcxIo5nVfIdzFBM9BwuhyBnlBnhnTSTK0=",
        ),
    ),
    # m/44'/60'/0'/0/700
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x970eb44644B3dECB284590330759443EFA94Fd5a",
            "0x99a72a6c108d394f98aaeb6bce179c9ee4dd1039235c40a82bdd60b3bb7d95011ed120306eeab985e633d3bae006eceb69061f3815b86adbd96c7e68149881a2",
            "fa2d819da5200d7fdfadffd5bebea92aa7cf3c04873bda90ec5c0cb6dda85316",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x970eb44644B3dECB284590330759443EFA94Fd5a",
            "BJmnKmwQjTlPmKrra84XnJ7k3RA5I1xAqCvdYLO7fZUBHtEgMG7quYXmM9O64Abs62kGHzgVuGrb2Wx+aBSYgaI=",
            "+i2BnaUgDX/frf/Vvr6pKqfPPASHO9qQ7FwMtt2oUxY=",
        ),
    ),
    # m/44'/60'/0'/0/701
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x0D7C2B6C79543EaBd130F38a72A39E044c412689",
            "0x687605f331153d9954390029efa098e9bd0463846f2578d632aa6637c2b2c296752d0f22f4431b66c965dafa6360bbbb56ba55ac854e6b35a63d9d15bcd491",
            "2054d6eb1f39551bd133ec94693d76e833317dc65319f230a39fa41430137e3e",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x0D7C2B6C79543EaBd130F38a72A39E044c412689",
            "BGh2BfMxFT2ZVDkAKe+gmOm9BGOEbyV41jKqZjfCssKWdS0PIvRDG2bJZdr6Y2C7u1a6VayFTms1pj2dFbzUkQ==",
            "IFTW6x85VRvRM+yUaT126DMxfcZTGfIwo5+kFDATfj4=",
        ),
    ),
    # m/44'/60'/0'/0/702
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x4cBaF2b3a657AC7BeC9645BfF92aDe95fFc3d8df",
            "0x4e51f2f30af10c736d04e01763d65b43df8b565fb3108de75cedb3d106b9360aebf0fb6e93028be6d2c0f1788f06b594bd9f8f2f64f59a64df6dbae86bfd5c20",
            "1c3d495babeeedb10533a83cf7828951572e4d8c899246c806521bd28d2b5216",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x4cBaF2b3a657AC7BeC9645BfF92aDe95fFc3d8df",
            "BE5R8vMK8QxzbQTgF2PWW0Pfi1ZfsxCN51zts9EGuTYK6/D7bpMCi+bSwPF4jwa1lL2fjy9k9Zpk32266Gv9XCA=",
            "HD1JW6vu7bEFM6g894KJUVcuTYyJkkbIBlIb0o0rUhY=",
        ),
    ),
    # m/44'/60'/0'/0/703
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x27b1fa1a0356ee92dC2AE6095A07809320E6563c",
            "0x98a7160c21ba41a6d0a88b8bcd54d62a20f48e7a11ed5f8969b6e17dce0b23f76f983951b04f820f78db432b4395748567c3a97426b62e88ad82b217c8cae353",
            "5cd613dc578f65d21856b45d11ddc91055403536b89ef1c3216213caf122511b",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x27b1fa1a0356ee92dC2AE6095A07809320E6563c",
            "BJinFgwhukGm0KiLi81U1iog9I56Ee1fiWm24X3OCyP3b5g5UbBPgg9420MrQ5V0hWfDqXQmti6IrYKyF8jK41M=",
            "XNYT3FePZdIYVrRdEd3JEFVANTa4nvHDIWITyvEiURs=",
        ),
    ),
    # m/44'/60'/0'/0/704
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x53793C7D36E89b51bf254582B3e04dF0eD76C2Ab",
            "0x5e2195e5268285aa9bab0c947f8712e2bc1dbf2e451e250e8dec6534e0f9ae219f778dc36927a0bde434c51a936713e080c5ef7287091dc3d2d4418703f2a178",
            "1c21597b9133f174dff7f825b9cebbd52e98740a05c00541b252764ab1c20f11",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x53793C7D36E89b51bf254582B3e04dF0eD76C2Ab",
            "BF4hleUmgoWqm6sMlH+HEuK8Hb8uRR4lDo3sZTTg+a4hn3eNw2knoL3kNMUak2cT4IDF73KHCR3D0tRBhwPyoXg=",
            "HCFZe5Ez8XTf9/gluc671S6YdAoFwAVBslJ2SrHCDxE=",
        ),
    ),
    # m/44'/60'/0'/0/705
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x387832B150DE4835E92B6e5FF828D231Ff374Fcb",
            "0x3ec8517d6c3ce7e2f9d2319ffa5de1eaf0d0a97c9a597b0aeaaa048cb5522064c3b0cf3df89cbd9debfb10f8482585bea4c14685b28f2c35782174610b737ceb",
            "a5767d0e684070ab1e209c4bbfe33ab5df10ba5416cfb5394def6fc56dd409ad",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x387832B150DE4835E92B6e5FF828D231Ff374Fcb",
            "BD7IUX1sPOfi+dIxn/pd4erw0Kl8mll7CuqqBIy1UiBkw7DPPficvZ3r+xD4SCWFvqTBRoWyjyw1eCF0YQtzfOs=",
            "pXZ9DmhAcKseIJxLv+M6td8QulQWz7U5Te9vxW3UCa0=",
        ),
    ),
    # m/44'/60'/0'/0/706
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xD1eC1Ee666e4F5a20f7402FB32D7DB7D9BB0C480",
            "0x142bbb67474bcc83601e239a2de4b723fb6ea1af4351f6cd6e0a1d419a25f7c5746830aab113a235cadbce2666012239f846af33ca52fe8cbf34b31e7e08044e",
            "87a8b973e63b306c4bd897ccfce942e63e9a38ecbf8cf6baf68f15ec6efdf7e1",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xD1eC1Ee666e4F5a20f7402FB32D7DB7D9BB0C480",
            "BBQru2dHS8yDYB4jmi3ktyP7bqGvQ1H2zW4KHUGaJffFdGgwqrETojXK284mZgEiOfhGrzPKUv6MvzSzHn4IBE4=",
            "h6i5c+Y7MGxL2JfM/OlC5j6aOOy/jPa69o8V7G799+E=",
        ),
    ),
    # m/44'/60'/0'/0/707
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xeBd206875febf2e00428DF60fd345246e235d8B7",
            "0x69e65a7b1016bc59fea4864ea850ef76ccfac1703d3f628cbcbe1c1e227685440449c6aa696c915d2edd12859d96f13eab30bc3575c4615929d47e3ceb4e2b00",
            "feb81ee1163655f168002519af2fc8ab02c03e5576eacc322f6125577e371821",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xeBd206875febf2e00428DF60fd345246e235d8B7",
            "BGnmWnsQFrxZ/qSGTqhQ73bM+sFwPT9ijLy+HB4idoVEBEnGqmlskV0u3RKFnZbxPqswvDV1xGFZKdR+POtOKwA=",
            "/rge4RY2VfFoACUZry/IqwLAPlV26swyL2ElV343GCE=",
        ),
    ),
    # m/44'/60'/0'/0/708
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x77F3B00802F15b6eBDe2d1bb3ADbbE6367FC21ee",
            "0xbf5a626acc73b995c54ecd87f57d5f330a1586fe31524956338d67c73ece9dbc06f627de4b4d6ccbf30be3b6019e88bda87516731fc825bf0f5b831479ec1de9",
            "f2a281e7345fe867d60bdd4d525aff9ff841838dc89512c758cc2dbb3d70b394",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x77F3B00802F15b6eBDe2d1bb3ADbbE6367FC21ee",
            "BL9aYmrMc7mVxU7Nh/V9XzMKFYb+MVJJVjONZ8c+zp28BvYn3ktNbMvzC+O2AZ6Ivah1FnMfyCW/D1uDFHnsHek=",
            "8qKB5zRf6GfWC91NUlr/n/hBg43IlRLHWMwtuz1ws5Q=",
        ),
    ),
    # m/44'/60'/0'/0/709
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xE2e88b91fcA4bf7a361f8fC560abCDEf96F2482B",
            "0x8296cc19ef393f01b8fdd2288e25f88bf9c1d7a1f385e4be97fea5d6343d735cde7a48ac5a25a804a8231c00ebd508b53455647981d7569592484e98e7e10a7e",
            "e662be7adb2fd40bf4d81728004c0952d6f748280d083da4bb8d3027689c19a2",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xE2e88b91fcA4bf7a361f8fC560abCDEf96F2482B",
            "BIKWzBnvOT8BuP3SKI4l+Iv5wdeh84Xkvpf+pdY0PXNc3npIrFolqASoIxwA69UItTRVZHmB11aVkkhOmOfhCn4=",
            "5mK+etsv1Av02BcoAEwJUtb3SCgNCD2ku40wJ2icGaI=",
        ),
    ),
    # m/44'/60'/0'/0/710
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xF615dE4810D25BEc71759FacF2E82F370Facfe05",
            "0x53c17648bdd272a127d8fc26fd4aba6981a71cc5c183d04f492afa9ec04782df66a8b04a2e84ab7642e9c1d9380231338953f5a89803167611399f995d596770",
            "6f6879170cd7be3db3173f87c04723917a955754102d2e3acb6a58bc26c47ed1",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xF615dE4810D25BEc71759FacF2E82F370Facfe05",
            "BFPBdki90nKhJ9j8Jv1KummBpxzFwYPQT0kq+p7AR4LfZqiwSi6Eq3ZC6cHZOAIxM4lT9aiYAxZ2ETmfmV1ZZ3A=",
            "b2h5FwzXvj2zFz+HwEcjkXqVV1QQLS46y2pYvCbEftE=",
        ),
    ),
    # m/44'/60'/0'/0/711
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x9846141a84582E86682265cF253Ff02cdEf8dD1B",
            "0x016809069ac3197520fb625ea4e6f5b1e0d0a16b18219d6a44e6ec545a9ff4a898b70c1162905717ca2bbe61b3d67d2baa37572b440a051f1cb9f635f4b3e33f",
            "c45ad0c44b16f3eb71a500a7e98860fa658dd6fc0005b2177230f12cb21ce9d4",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x9846141a84582E86682265cF253Ff02cdEf8dD1B",
            "BAFoCQaawxl1IPtiXqTm9bHg0KFrGCGdakTm7FRan/SomLcMEWKQVxfKK75hs9Z9K6o3VytECgUfHLn2NfSz4z8=",
            "xFrQxEsW8+txpQCn6Yhg+mWN1vwABbIXcjDxLLIc6dQ=",
        ),
    ),
    # m/44'/60'/0'/0/712
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x5f0C8FaaaeD79C2fA928e5994AaADcd973B53567",
            "0x3112b28a3118b6d45ab74f901133623b9a0da78878b89ab3c708bcc79bdee0c5d28f477b5689ec9853212e340233bf0c49eed4128d4888c0304c22d036c25556",
            "11dc11b57c3af490058a58cf4f2c1edb0f25feb4bf56af4b6dec8b3a601a7ed2",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x5f0C8FaaaeD79C2fA928e5994AaADcd973B53567",
            "BDESsooxGLbUWrdPkBEzYjuaDaeIeLias8cIvMeb3uDF0o9He1aJ7JhTIS40AjO/DEnu1BKNSIjAMEwi0DbCVVY=",
            "EdwRtXw69JAFiljPTywe2w8l/rS/Vq9LbeyLOmAaftI=",
        ),
    ),
    # m/44'/60'/0'/0/713
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x7217e10b2C6e093B63550FD2F83afDfa3C0a8694",
            "0xa27c47a80c915663374c81d7c60b2e1660cb81af696d34aa465dff9bf2f582e2bf785ee6fd0f286fc76de327f505e262c915fe8d955f79442271c53e70f553df",
            "202586a266ed30cbf9f4cf13118005e93c66b0253d8e3f5f18dd1bfe823caa8b",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x7217e10b2C6e093B63550FD2F83afDfa3C0a8694",
            "BKJ8R6gMkVZjN0yB18YLLhZgy4GvaW00qkZd/5vy9YLiv3he5v0PKG/HbeMn9QXiYskV/o2VX3lEInHFPnD1U98=",
            "ICWGombtMMv59M8TEYAF6TxmsCU9jj9fGN0b/oI8qos=",
        ),
    ),
    # m/44'/60'/0'/0/714
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x621297140D0B2bD572c7A93D9cc5B43db508bb09",
            "0x6320856a3d5fd03a339ee88b8518e46ee86fa51729e79a2bcfa74439c6a0819010f45d53e6cd377512648a444872e4cb39e823132e456048c739dc0816f0b3d0",
            "f319d82cbe95a58830e76eb8f4be1a8532eb74a9c8d05d430798d5d7d1503d96",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x621297140D0B2bD572c7A93D9cc5B43db508bb09",
            "BGMghWo9X9A6M57oi4UY5G7ob6UXKeeaK8+nRDnGoIGQEPRdU+bNN3USZIpESHLkyznoIxMuRWBIxzncCBbws9A=",
            "8xnYLL6VpYgw52649L4ahTLrdKnI0F1DB5jV19FQPZY=",
        ),
    ),
    # m/44'/60'/0'/0/715
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x2D6D775332Ad102f2692C1a541f17942ddfFDcA7",
            "0xf18a68922f690cebacf8a2d0c924360f9c5080d405cd05175906e03e138ecf368134cb01a6d8b2e889330ec3aa2af79204211d8f8bd71092e7cf458fad4cc196",
            "4e3afe3b5aecf4e603df5d5673c48e39a878e6319dfe4543bdc1e63598fb18ed",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x2D6D775332Ad102f2692C1a541f17942ddfFDcA7",
            "BPGKaJIvaQzrrPii0MkkNg+cUIDUBc0FF1kG4D4Tjs82gTTLAabYsuiJMw7Dqir3kgQhHY+L1xCS589Fj61MwZY=",
            "Tjr+O1rs9OYD311Wc8SOOah45jGd/kVDvcHmNZj7GO0=",
        ),
    ),
    # m/44'/60'/0'/0/716
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xA1f830ae8641C88a6D48033bA3A76FaB03113e01",
            "0xbcd9805dfac4a904c0e575c71dc2f3f48cc88cfbdc7b8dcbaef0f507312e7be22af785e323498e2cc307d080b096067d922a798bff18bca846e21256ef1d4b9f",
            "5626ba845b06b395ba7d2a4c97503d5bdc0d8920eb50cca2cbe23262f676be7d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xA1f830ae8641C88a6D48033bA3A76FaB03113e01",
            "BLzZgF36xKkEwOV1xx3C8/SMyIz73HuNy67w9QcxLnviKveF4yNJjizDB9CAsJYGfZIqeYv/GLyoRuISVu8dS58=",
            "Via6hFsGs5W6fSpMl1A9W9wNiSDrUMyiy+IyYvZ2vn0=",
        ),
    ),
    # m/44'/60'/0'/0/717
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xDDCC729dDBE8DBf212a752395F7A39E62E69847E",
            "0x053bd65a1f720f81a193682edc718667b89aac747680c744b093f17728f3451d92bef4fb23b62e232a721e0d131414a390e425ae89e0fccac75a21a0d0f104c6",
            "650a349c59b1a58ea50578b858bf1133f6c4c0b9a2accdb967bab6421a891bc3",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xDDCC729dDBE8DBf212a752395F7A39E62E69847E",
            "BAU71lofcg+BoZNoLtxxhme4mqx0doDHRLCT8Xco80Udkr70+yO2LiMqch4NExQUo5DkJa6J4PzKx1ohoNDxBMY=",
            "ZQo0nFmxpY6lBXi4WL8RM/bEwLmirM25Z7q2QhqJG8M=",
        ),
    ),
    # m/44'/60'/0'/0/718
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x5296B4E515F7D548C82200E9e0c10aB1E1EE43ff",
            "0x056311b8bf2897cc604c058aa3ddf29320a0a9032e270e66b478ad277149816c8b7746afefa02e420be5e2c5b25ea7b61350195c4197c8d1fde7a84030c4f2fe",
            "5e714be09d181deb797d0aa68f8a58c356b0aff677946533252fe26003c71efa",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x5296B4E515F7D548C82200E9e0c10aB1E1EE43ff",
            "BAVjEbi/KJfMYEwFiqPd8pMgoKkDLicOZrR4rSdxSYFsi3dGr++gLkIL5eLFsl6nthNQGVxBl8jR/eeoQDDE8v4=",
            "XnFL4J0YHet5fQqmj4pYw1awr/Z3lGUzJS/iYAPHHvo=",
        ),
    ),
    # m/44'/60'/0'/0/719
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xa971d697541c3B09E07497A651AC9055a08F764b",
            "0xcf2ae288517ebaa7cd22da2940197a7753de87d06c3327dbf6d9ccb546c41ca7b4f3870252a9f6b3f7674a03eb49a127eb94568e781e852d223d86125345affb",
            "d20ac5abac63f8d1599624d075c44e3238c04fda05227834e20d8b402e4693c3",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xa971d697541c3B09E07497A651AC9055a08F764b",
            "BM8q4ohRfrqnzSLaKUAZendT3ofQbDMn2/bZzLVGxByntPOHAlKp9rP3Z0oD60mhJ+uUVo54HoUtIj2GElNFr/s=",
            "0grFq6xj+NFZliTQdcROMjjAT9oFIng04g2LQC5Gk8M=",
        ),
    ),
    # m/44'/60'/0'/0/720
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x038081143F5438C0C930EF93b72b50ba13B68ceC",
            "0xdf4b9860f09a3e1b35a4f975ff59ffbd79b1cc5cdc4fbab3a27e98d039767590a3cb634edf95b82df58e1bca0241b9dcc103ec768ab2f94ff68a5330c3fa39cd",
            "afdde2a3d8c9e804991c21e532afd685158b195d050b552d242c573580f74d27",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x038081143F5438C0C930EF93b72b50ba13B68ceC",
            "BN9LmGDwmj4bNaT5df9Z/715scxc3E+6s6J+mNA5dnWQo8tjTt+VuC31jhvKAkG53MED7HaKsvlP9opTMMP6Oc0=",
            "r93io9jJ6ASZHCHlMq/WhRWLGV0FC1UtJCxXNYD3TSc=",
        ),
    ),
    # m/44'/60'/0'/0/721
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x9f37f4c1313F63AFC37334eDF618549e042e91A8",
            "0x4921ecec08df72afc55ae1254abf8172a9cf2e6cf03e0d00ddd7284f4fb0aae5ca240a2b81ef4fcac5cb45d185d136c8a52639e6afca65d8b7a1d8cb13e680fa",
            "50a7685a7e3539070047549fa1e93f2ab766f56e5a3375a8ead882de9a4272aa",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x9f37f4c1313F63AFC37334eDF618549e042e91A8",
            "BEkh7OwI33KvxVrhJUq/gXKpzy5s8D4NAN3XKE9PsKrlyiQKK4HvT8rFy0XRhdE2yKUmOeavymXYt6HYyxPmgPo=",
            "UKdoWn41OQcAR1Sfoek/Krdm9W5aM3Wo6tiC3ppCcqo=",
        ),
    ),
    # m/44'/60'/0'/0/722
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x3CB3C75637D70A30c7Fd178B8BbDC13A01AA0325",
            "0x893c72c3f62bdc82219dca2b6e437f8699fe9c019266e31a4c4a1cfb357a33b52ef78ae8e49f917c1db7ade19f52c5ff7970184a0e169748a8d5573cf3af9762",
            "835d8c3ccec9bb48afb64f72930ecefd7f2dd9bc6aa20cfbf7f93e2ff12ee2ab",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x3CB3C75637D70A30c7Fd178B8BbDC13A01AA0325",
            "BIk8csP2K9yCIZ3KK25Df4aZ/pwBkmbjGkxKHPs1ejO1LveK6OSfkXwdt63hn1LF/3lwGEoOFpdIqNVXPPOvl2I=",
            "g12MPM7Ju0ivtk9ykw7O/X8t2bxqogz79/k+L/Eu4qs=",
        ),
    ),
    # m/44'/60'/0'/0/723
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xef08eb2239bE0E1C3B1A5d981A324b0df3e899C4",
            "0x7050b5c21279f89304e6a7b52b0e26e3d2e6ef45137613dd5170f32bf6ca80aea522e7fc54aa75f327b65c7d1e5cb1e97bbd3f169476d7e9302e8995fe41fc77",
            "7903444379ef63ae3ebc914a059e0736a2b9fb622ddcaa40f1c5ae301f8d1fdc",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xef08eb2239bE0E1C3B1A5d981A324b0df3e899C4",
            "BHBQtcISefiTBOantSsOJuPS5u9FE3YT3VFw8yv2yoCupSLn/FSqdfMntlx9Hlyx6Xu9PxaUdtfpMC6Jlf5B/Hc=",
            "eQNEQ3nvY64+vJFKBZ4HNqK5+2It3KpA8cWuMB+NH9w=",
        ),
    ),
    # m/44'/60'/0'/0/724
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x7Fc691E5b5d595dA15a41881E261ff7391456FAe",
            "0xe4d41427a4a8840b23c65618bad4e532ce9392c70a41731fc6137435aa965b7c5e03faa4729456abeee8a6f52142626cf044f0ec80d4204be5abc8167da517b7",
            "56387a27b1d3321eb166dc56396c778053f2bb6614b559bd6c5627876dfc9d93",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x7Fc691E5b5d595dA15a41881E261ff7391456FAe",
            "BOTUFCekqIQLI8ZWGLrU5TLOk5LHCkFzH8YTdDWqllt8XgP6pHKUVqvu6Kb1IUJibPBE8OyA1CBL5avIFn2lF7c=",
            "Vjh6J7HTMh6xZtxWOWx3gFPyu2YUtVm9bFYnh238nZM=",
        ),
    ),
    # m/44'/60'/0'/0/725
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xeD3Efa8EDC570C4fd430c5c5701Ac1e92e8e36b8",
            "0x1f1c9a2e5cfcf3dc77c448837d820db18e826539059f292b372ac055229adb5190bec56fc9587ccbb4e30f888cd56d6451fe7dac069296f975711d28835db083",
            "61d936cff57fbcef0060d54dbaffa0bf3f08768194b0ebb72f8b39d3263a12b3",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xeD3Efa8EDC570C4fd430c5c5701Ac1e92e8e36b8",
            "BB8cmi5c/PPcd8RIg32CDbGOgmU5BZ8pKzcqwFUimttRkL7Fb8lYfMu04w+IjNVtZFH+fawGkpb5dXEdKINdsIM=",
            "Ydk2z/V/vO8AYNVNuv+gvz8IdoGUsOu3L4s50yY6ErM=",
        ),
    ),
    # m/44'/60'/0'/0/726
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xa616a6B0a34C6F623583b6CeE8C1145051Af7835",
            "0x24bf80d6b3a2b4f9d9e7b7088108cb23f8d7c9dcbf6d4140dfcfd58bda93ef29dfb96ce30d9b34dc826028de3d33658db4f1c1453e12b70569349e8ac7ca3583",
            "ff50704e0bd1b51d101141f51948cd61d30e845b91c24f3834ba3a166a001f7f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xa616a6B0a34C6F623583b6CeE8C1145051Af7835",
            "BCS/gNazorT52ee3CIEIyyP418ncv21BQN/P1Yvak+8p37ls4w2bNNyCYCjePTNljbTxwUU+ErcFaTSeisfKNYM=",
            "/1BwTgvRtR0QEUH1GUjNYdMOhFuRwk84NLo6FmoAH38=",
        ),
    ),
    # m/44'/60'/0'/0/727
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x42A7217a240590d80C24E2Eb75972C3973c3E954",
            "0x3db1214af0bebe52f767a6ea7bbd8d51bb73c016701e3740c1f3c79dcd10a77c0393e7cf3fd13d2dfe6ae5264ee1faaddd83f914f9eaf70d9c8a15d3123a56c3",
            "cdcc63e4b207b78f59cd447986dfc1ac4016cf57126d3cda5df35754d1b20a9e",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x42A7217a240590d80C24E2Eb75972C3973c3E954",
            "BD2xIUrwvr5S92em6nu9jVG7c8AWcB43QMHzx53NEKd8A5Pnzz/RPS3+auUmTuH6rd2D+RT56vcNnIoV0xI6VsM=",
            "zcxj5LIHt49ZzUR5ht/BrEAWz1cSbTzaXfNXVNGyCp4=",
        ),
    ),
    # m/44'/60'/0'/0/728
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x61845a8c7eEd6Df9E357947F043F18865B6B6712",
            "0xc741fc6cfdb583761492b0fec9d369ef1832a801acf0322b7f635b13f335583a63391f86f95f634dcc484f3f3e37cb3130457661cb9d0431817e62d8cd888281",
            "c3ddba8b349128ddfd64875499e657365ef5a0fa1da725ed450ae0efad5317ad",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x61845a8c7eEd6Df9E357947F043F18865B6B6712",
            "BMdB/Gz9tYN2FJKw/snTae8YMqgBrPAyK39jWxPzNVg6YzkfhvlfY03MSE8/PjfLMTBFdmHLnQQxgX5i2M2IgoE=",
            "w926izSRKN39ZIdUmeZXNl71oPodpyXtRQrg761TF60=",
        ),
    ),
    # m/44'/60'/0'/0/729
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x3E2DdC7aeb5d35ed70D39d10582cD6652214a4a6",
            "0x2c3ef9c0b87a5f8c5a2225e12afc0390b39d780e344f4ddf78de1b8efce06e529b7aa5daba8e13a695a9e9ceed1d535cfab2f7af14eea74da9520f3909dd8026",
            "2f2eac966b0b74403e8f893f37ec4d52f8ed9e94fb12f93f9936824246d710cb",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x3E2DdC7aeb5d35ed70D39d10582cD6652214a4a6",
            "BCw++cC4el+MWiIl4Sr8A5CznXgONE9N33jeG4784G5Sm3ql2rqOE6aVqenO7R1TXPqy968U7qdNqVIPOQndgCY=",
            "Ly6slmsLdEA+j4k/N+xNUvjtnpT7Evk/mTaCQkbXEMs=",
        ),
    ),
    # m/44'/60'/0'/0/730
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x9f841478e320800E80F22cA0674204449C85F257",
            "0xad0a367cd2024705a149cd921aa2b4e392321b3daa60d149f70bd734067105ce5cab4b16b6ffc337f9839dfce34d010483e96298cefc666a07bf206c487ba9f2",
            "66c675b5d275e6f8e3027d90a9de32ff37868395ebbdf14ef0d981895933f7a9",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x9f841478e320800E80F22cA0674204449C85F257",
            "BK0KNnzSAkcFoUnNkhqitOOSMhs9qmDRSfcL1zQGcQXOXKtLFrb/wzf5g538400BBIPpYpjO/GZqB78gbEh7qfI=",
            "ZsZ1tdJ15vjjAn2Qqd4y/zeGg5XrvfFO8NmBiVkz96k=",
        ),
    ),
    # m/44'/60'/0'/0/731
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x2205B6e14a977A02e92c91262974350Ce72cF7DC",
            "0xe0bec2923e4ac2d57564b12fcf357dfad27d6b3d0693bdfc272eb710a852aad0aace5c972074077a93a58a15cffb35bbe93e0192e1673bdcbd976eb97eeb9a0a",
            "6013866b7aa23c877e45d58cf0deb1e1a74a3f4c1e9c89f0cc8ff4da6f3ebd37",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x2205B6e14a977A02e92c91262974350Ce72cF7DC",
            "BOC+wpI+SsLVdWSxL881ffrSfWs9BpO9/CcutxCoUqrQqs5clyB0B3qTpYoVz/s1u+k+AZLhZzvcvZduuX7rmgo=",
            "YBOGa3qiPId+RdWM8N6x4adKP0wenInwzI/02m8+vTc=",
        ),
    ),
    # m/44'/60'/0'/0/732
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x0050cC535c898F0EE167933E57fC2b63ce232cC8",
            "0x57b7f358d45bbe966d96497f96e973329b2afe16037e304c8ab162492ff529fb35acc527b62155390af40888c2393871ebccb22c833655fe58bb1a5adab3ef31",
            "e5cba7be7398301458f3fbb090aba39dbad10f7b9306754a348e20f3d9a12d37",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x0050cC535c898F0EE167933E57fC2b63ce232cC8",
            "BFe381jUW76WbZZJf5bpczKbKv4WA34wTIqxYkkv9Sn7NazFJ7YhVTkK9AiIwjk4cevMsiyDNlX+WLsaWtqz7zE=",
            "5cunvnOYMBRY8/uwkKujnbrRD3uTBnVKNI4g89mhLTc=",
        ),
    ),
    # m/44'/60'/0'/0/733
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x9E6C8B564960C503572982D806eEA2F2cc496E50",
            "0x96377b2ec95f5a109deea222abde47a400da06d790dd5caef1eb96c253c4a610010b1e0a09d3bbac28a4bc2035a9fa01c68470c68e27bb26acc1c81604d45db6",
            "3873a86eb9459765ea8dec641074a40d023a4a66fe129dc9afd3f43627a0e7ed",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x9E6C8B564960C503572982D806eEA2F2cc496E50",
            "BJY3ey7JX1oQne6iIqveR6QA2gbXkN1crvHrlsJTxKYQAQseCgnTu6wopLwgNan6AcaEcMaOJ7smrMHIFgTUXbY=",
            "OHOobrlFl2XqjexkEHSkDQI6Smb+Ep3Jr9P0Nieg5+0=",
        ),
    ),
    # m/44'/60'/0'/0/734
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xC5156E06d947F4fE9ce775d75394400fC80B476d",
            "0x947486971fad461e93d6296d5456dd74a37a832f27c754a86b11185079af28b4f6674b5b9cc25f87e7151aeb1fd3b855eca5fefcff1327995e16e4be3022890f",
            "969adf93047ebeb82a43e5709ec8c9c017447e84e631929746577b87046e217d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xC5156E06d947F4fE9ce775d75394400fC80B476d",
            "BJR0hpcfrUYek9YpbVRW3XSjeoMvJ8dUqGsRGFB5ryi09mdLW5zCX4fnFRrrH9O4Veyl/vz/EyeZXhbkvjAiiQ8=",
            "lprfkwR+vrgqQ+VwnsjJwBdEfoTmMZKXRld7hwRuIX0=",
        ),
    ),
    # m/44'/60'/0'/0/735
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x0d02F76622495D28A4589F840Ba562E95808D6aa",
            "0x432ffa587ac150a88d759cbfa704d8e8f0ed7e9653fb055e3acb4d90863253afbb2a9eabe2614f0e4de5c773b77d318c221f5e75bc1bfea102349eff6cf8aea0",
            "46eaeafac270e324cbc696bab9652e149231d751817a9d81391e519a57d85d8d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x0d02F76622495D28A4589F840Ba562E95808D6aa",
            "BEMv+lh6wVCojXWcv6cE2Ojw7X6WU/sFXjrLTZCGMlOvuyqeq+JhTw5N5cdzt30xjCIfXnW8G/6hAjSe/2z4rqA=",
            "Rurq+sJw4yTLxpa6uWUuFJIx11GBep2BOR5RmlfYXY0=",
        ),
    ),
    # m/44'/60'/0'/0/736
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x373bfB892a3948C1e8D5285238E9Ae3E8B9bF56e",
            "0xa07c5b9e42be7cffc69b2e7df5e4d9849c7d0ab7f4df1928aea32331ec5e12548e34a93bd28cb54528b8bb69536f7813ce5a357f65d02d6bfc62271253d40294",
            "f24ba4676272d61e778b73c03df5ac44ee327f39369c474d03035ec0229d8571",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x373bfB892a3948C1e8D5285238E9Ae3E8B9bF56e",
            "BKB8W55Cvnz/xpsuffXk2YScfQq39N8ZKK6jIzHsXhJUjjSpO9KMtUUouLtpU294E85aNX9l0C1r/GInElPUApQ=",
            "8kukZ2Jy1h53i3PAPfWsRO4yfzk2nEdNAwNewCKdhXE=",
        ),
    ),
    # m/44'/60'/0'/0/737
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x251be2f671deDE61c93F2535183D3c532f1e8b8E",
            "0x88bbf566de657ed71988e353d7f28df19b00540d8102b9566f6580a89242e4ad11ea974a4bcd03c7025d5ef7ce6eb24c6d74cbcf695ab59c399ef6a0a80dda35",
            "483851485c2d80524ffac0b11d67226efcc31030b155664e5591c7831424c4a4",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x251be2f671deDE61c93F2535183D3c532f1e8b8E",
            "BIi79WbeZX7XGYjjU9fyjfGbAFQNgQK5Vm9lgKiSQuStEeqXSkvNA8cCXV73zm6yTG10y89pWrWcOZ72oKgN2jU=",
            "SDhRSFwtgFJP+sCxHWcibvzDEDCxVWZOVZHHgxQkxKQ=",
        ),
    ),
    # m/44'/60'/0'/0/738
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x8CB78eA8C2D45862daaCcC066750126Ce3c6C6B3",
            "0x45d0255a26480f45e1d7ccca92250e55a556abd5c4413046cc319ca4f8a131010de77016d6215b9335c687a0a75203253de106d9e38a735e018208687602d7d3",
            "d8f5d6ade52f4743dca658050118d821c263ef29c37576673f918c44720f9643",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x8CB78eA8C2D45862daaCcC066750126Ce3c6C6B3",
            "BEXQJVomSA9F4dfMypIlDlWlVqvVxEEwRswxnKT4oTEBDedwFtYhW5M1xoegp1IDJT3hBtnjinNeAYIIaHYC19M=",
            "2PXWreUvR0PcplgFARjYIcJj7ynDdXZnP5GMRHIPlkM=",
        ),
    ),
    # m/44'/60'/0'/0/739
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x7bA74d49EE0e9d459d33Be3002bC9Ed90a4479ED",
            "0x8eeecd0073e42221318fd1c514370d5599d6a9796c4f16329ca02298a17483e9dd47bed01e2e69cf0b5136ea5ae47adfec431c07681e81ee2862c10a0cfe0d2e",
            "ad396ecebb1cc71a0f7942a4732c468967e125869366c6699ef0605972457742",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x7bA74d49EE0e9d459d33Be3002bC9Ed90a4479ED",
            "BI7uzQBz5CIhMY/RxRQ3DVWZ1ql5bE8WMpygIpihdIPp3Ue+0B4uac8LUTbqWuR63+xDHAdoHoHuKGLBCgz+DS4=",
            "rTluzrscxxoPeUKkcyxGiWfhJYaTZsZpnvBgWXJFd0I=",
        ),
    ),
    # m/44'/60'/0'/0/740
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xd5a81dfe2f35fe6867295F7c512EFc3a52427355",
            "0x5a887181fc1c32a9f045c54f1c0bb40a2747a3defbc2ae71a2c9a9002fdafa8deb52c4165e9ffc66813781578595c16f526a89afb8a9b8e951409af3e0075cd9",
            "98fb5e2eef9993c0a0c3a61ca99a5eb734d336133e757e1404b59cb1616a4be9",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xd5a81dfe2f35fe6867295F7c512EFc3a52427355",
            "BFqIcYH8HDKp8EXFTxwLtAonR6Pe+8KucaLJqQAv2vqN61LEFl6f/GaBN4FXhZXBb1Jqia+4qbjpUUCa8+AHXNk=",
            "mPteLu+Zk8Cgw6YcqZpetzTTNhM+dX4UBLWcsWFqS+k=",
        ),
    ),
    # m/44'/60'/0'/0/741
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x6229207F0AB477Deca983008C240Ce2602F81108",
            "0xb08bc009a378734ad1e31d32e39cd499267216a0cf7f7a2bea479e72ed8664b6a5c432bf59107fd3ba42b40beda6f86af21a35f4cf7ae53c390000015385bde1",
            "13cb7a553985b709ef61c59824682ba4be51d781cec1d8d3d5f6635bbfc17a42",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x6229207F0AB477Deca983008C240Ce2602F81108",
            "BLCLwAmjeHNK0eMdMuOc1Jkmchagz396K+pHnnLthmS2pcQyv1kQf9O6QrQL7ab4avIaNfTPeuU8OQAAAVOFveE=",
            "E8t6VTmFtwnvYcWYJGgrpL5R14HOwdjT1fZjW7/BekI=",
        ),
    ),
    # m/44'/60'/0'/0/742
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x24e40FEC3dCE9bfAB89dD11B6E2570f513a1cA7B",
            "0x2437914eda1b38177467b7c9a56926c4e2eee0af59c2b0fb50636073f9bed9be731498e50fb63aea85ec74d6e2116a67e9f1aedac40e1b61513c0b2b3ff2dacd",
            "77731ca5c1148f77ab21f86965e50717079220fb23710c05aa37ecf141eee19e",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x24e40FEC3dCE9bfAB89dD11B6E2570f513a1cA7B",
            "BCQ3kU7aGzgXdGe3yaVpJsTi7uCvWcKw+1BjYHP5vtm+cxSY5Q+2OuqF7HTW4hFqZ+nxrtrEDhthUTwLKz/y2s0=",
            "d3McpcEUj3erIfhpZeUHFweSIPsjcQwFqjfs8UHu4Z4=",
        ),
    ),
    # m/44'/60'/0'/0/743
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x7Bf21f6C34D2b1849cF299e3C03Db64Cb99CcBFa",
            "0x0706e26dc99c2e6ab2f42c83bbeee942a64d2eb2066ee21fe033b20b915d429162ced32cfb017faa322f7198f381f339016a393428f240796c5effc3376d6c26",
            "ea2dc0e319d32436e34e6b3f57993bf81926c9cc0c725ca7d0a1599163d42926",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x7Bf21f6C34D2b1849cF299e3C03Db64Cb99CcBFa",
            "BAcG4m3JnC5qsvQsg7vu6UKmTS6yBm7iH+AzsguRXUKRYs7TLPsBf6oyL3GY84HzOQFqOTQo8kB5bF7/wzdtbCY=",
            "6i3A4xnTJDbjTms/V5k7+BkmycwMclyn0KFZkWPUKSY=",
        ),
    ),
    # m/44'/60'/0'/0/744
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x2F50439F02d23C36c0330D2BBFEC20889A13F909",
            "0x6dee99950ac6a3a5868e6b121c467b7b9a01d1e87173a057b057b2c658e90139f48a2356afa01576099f3fc95de819169d065168d7eadb211826a3a274e426c3",
            "5e2b5cef78d60a7fbb16bbeb01f6419e1b7c818442664b4b7bfa19213b613d7b",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x2F50439F02d23C36c0330D2BBFEC20889A13F909",
            "BG3umZUKxqOlho5rEhxGe3uaAdHocXOgV7BXssZY6QE59IojVq+gFXYJnz/JXegZFp0GUWjX6tshGCajonTkJsM=",
            "Xitc73jWCn+7FrvrAfZBnht8gYRCZktLe/oZITthPXs=",
        ),
    ),
    # m/44'/60'/0'/0/745
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x50De73E192724DbaE1be5837A72Ea16BFBD17167",
            "0x93905b9f5dea6dbf6d963836601e5d1e7903e008b44e2615558f27f32c4206a63433f56787ad06347547d51b7c7228980fdf94f6f6c26106aced9f3cf91264e9",
            "1e59b32b247af760936678c15907648071a7e8177b78c47f82636dd5c61ed222",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x50De73E192724DbaE1be5837A72Ea16BFBD17167",
            "BJOQW59d6m2/bZY4NmAeXR55A+AItE4mFVWPJ/MsQgamNDP1Z4etBjR1R9UbfHIomA/flPb2wmEGrO2fPPkSZOk=",
            "HlmzKyR692CTZnjBWQdkgHGn6Bd7eMR/gmNt1cYe0iI=",
        ),
    ),
    # m/44'/60'/0'/0/746
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x18e09BD85D38Ff4EDA694ed731229120dD284136",
            "0x77dbd87068233e630a52fada71deda8fa45f091138c7abe0a80aed21eb73aff54fa4c4b17285368cdfcf5a554b18d1f6e6aed1daa4b9169de985213d6be623be",
            "375f0692fd931bdc97c4ed18d94372ede53a43782b5cce71a830310cab3e5ea3",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x18e09BD85D38Ff4EDA694ed731229120dD284136",
            "BHfb2HBoIz5jClL62nHe2o+kXwkROMer4KgK7SHrc6/1T6TEsXKFNozfz1pVSxjR9uau0dqkuRad6YUhPWvmI74=",
            "N18Gkv2TG9yXxO0Y2UNy7eU6Q3grXM5xqDAxDKs+XqM=",
        ),
    ),
    # m/44'/60'/0'/0/747
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x04282aA715A32F47cD4C4aFF67184Be022fD2541",
            "0x6d3144a99305a80710d72f663a868957ca5c383d7638c59b03e680fe48d5dbe38e5c18d57392aea771da9931a2ab4746bdc44776873e78568b3ab3199ad64994",
            "b1b98254d1d34d1be37943551972cd37105defdb224a185b6d7bb36061546e39",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x04282aA715A32F47cD4C4aFF67184Be022fD2541",
            "BG0xRKmTBagHENcvZjqGiVfKXDg9djjFmwPmgP5I1dvjjlwY1XOSrqdx2pkxoqtHRr3ER3aHPnhWizqzGZrWSZQ=",
            "sbmCVNHTTRvjeUNVGXLNNxBd79siShhbbXuzYGFUbjk=",
        ),
    ),
    # m/44'/60'/0'/0/748
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x6e4CCB362FbedCfd7F7244d802df5743bF074e7a",
            "0xe559b75d1e174027e457506bb0be3702e2badabfd1df1446eab23081c4b3594ae29d5f879ebf03d57d829dff662640f141cdfabfc627208fcd268d7e08f73bf6",
            "5b615698de032b3676cf07b4c16b58ce4fd255dfc3717476ca6bfae437ca5b39",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x6e4CCB362FbedCfd7F7244d802df5743bF074e7a",
            "BOVZt10eF0An5FdQa7C+NwLiutq/0d8URuqyMIHEs1lK4p1fh56/A9V9gp3/ZiZA8UHN+r/GJyCPzSaNfgj3O/Y=",
            "W2FWmN4DKzZ2zwe0wWtYzk/SVd/DcXR2ymv65DfKWzk=",
        ),
    ),
    # m/44'/60'/0'/0/749
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x3B7D9A54d178dAE6c182D259611bE7F8988363Fc",
            "0xcafe68f58d94c1ca8c4b148b918c1d2ff0037ada002868435659e912e352d7504a84eeec0aa162d7c388ea5b0fd16b406c54891423e8eb12d61bced0356f002f",
            "a3cc321ce2f36ed7819a96b2b2baf58ef8c02b6236068d30efd31e2fd426aee7",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x3B7D9A54d178dAE6c182D259611bE7F8988363Fc",
            "BMr+aPWNlMHKjEsUi5GMHS/wA3raAChoQ1ZZ6RLjUtdQSoTu7AqhYtfDiOpbD9FrQGxUiRQj6OsS1hvO0DVvAC8=",
            "o8wyHOLzbteBmpaysrr1jvjAK2I2Bo0w79MeL9Qmruc=",
        ),
    ),
    # m/44'/60'/0'/0/750
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x4143DB41d2374954E34A4B715a945c2bFb281499",
            "0x1d5543f5cbdbf2156065aaaedfc325b5396656a45956b88c6023d04b64fad97a988614ebf3f9d2cc8cba35c12fe94eecc3895e9260c7d8df587b4512c8432cc0",
            "f7c509f665a5d9ca7a43ea843df5e8e52220e5b188c83f795ed18cc86e901ef6",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x4143DB41d2374954E34A4B715a945c2bFb281499",
            "BB1VQ/XL2/IVYGWqrt/DJbU5ZlakWVa4jGAj0Etk+tl6mIYU6/P50syMujXBL+lO7MOJXpJgx9jfWHtFEshDLMA=",
            "98UJ9mWl2cp6Q+qEPfXo5SIg5bGIyD95XtGMyG6QHvY=",
        ),
    ),
    # m/44'/60'/0'/0/751
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x86Bb61Fe8eD9b1EfB04F92DFe147611A68C83812",
            "0x0f1b85807e6a467e88da53d5ca5c5ccba9b32a11040c1bfbad79fea0d35b571659eed577b134e76fb6f385b14cfb065cd8f05d636eb56788fa5c94d999b2eb77",
            "7a53fd5851c06d5e259adb2106a729e4047937df1d8a440bd9949d4399b0714a",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x86Bb61Fe8eD9b1EfB04F92DFe147611A68C83812",
            "BA8bhYB+akZ+iNpT1cpcXMupsyoRBAwb+615/qDTW1cWWe7Vd7E052+284WxTPsGXNjwXWNutWeI+lyU2Zmy63c=",
            "elP9WFHAbV4lmtshBqcp5AR5N98dikQL2ZSdQ5mwcUo=",
        ),
    ),
    # m/44'/60'/0'/0/752
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x875527181c372e8941c5ef41e52F8C104E021902",
            "0x10adc92a6227aeb4d525ad8ff5eca2d9ee3221b0922d81bf6bf69602969ae5a80c440ab1154449c64089d9d9ff7fc4277fab383d5f41ee12b4badea9977a2915",
            "755375439c4e00e92f4c1f51071b70573a79aadb7d1d7a9980eced85f469829f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x875527181c372e8941c5ef41e52F8C104E021902",
            "BBCtySpiJ6601SWtj/XsotnuMiGwki2Bv2v2lgKWmuWoDEQKsRVEScZAidnZ/3/EJ3+rOD1fQe4StLreqZd6KRU=",
            "dVN1Q5xOAOkvTB9RBxtwVzp5qtt9HXqZgOzthfRpgp8=",
        ),
    ),
    # m/44'/60'/0'/0/753
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xCEb63e7AeBBE78516f61427b30BBCAbd5A49DC3e",
            "0x592ef9eb312c3397a68ea846d0be89cd94ff5d8af87142dd857b0882623c67fd5140448263f64396901520f75a1442c3e8c43f52c62e014c62047c9386f6e2fb",
            "f6dadfa181d9c2166c7e8e13c86c95dd4a1c2c9794d8a38e3497299b7408e590",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xCEb63e7AeBBE78516f61427b30BBCAbd5A49DC3e",
            "BFku+esxLDOXpo6oRtC+ic2U/12K+HFC3YV7CIJiPGf9UUBEgmP2Q5aQFSD3WhRCw+jEP1LGLgFMYgR8k4b24vs=",
            "9trfoYHZwhZsfo4TyGyV3UocLJeU2KOONJcpm3QI5ZA=",
        ),
    ),
    # m/44'/60'/0'/0/754
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x9CE9178eaA60bdbDcEa0F751Be920eCeEcFe77Eb",
            "0x9834844922816c9956f033ae30ef2af22a73f13fb7562882007fb17a7376cb7ab23071074674cce1ff0361ea5c74b9b44c7a2e0d764b817ec0f4d61811f1a88b",
            "46486c2ccedb3f76fcfc8f797a063a986e5788b0c486b31d428081c469ed44ab",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x9CE9178eaA60bdbDcEa0F751Be920eCeEcFe77Eb",
            "BJg0hEkigWyZVvAzrjDvKvIqc/E/t1YoggB/sXpzdst6sjBxB0Z0zOH/A2HqXHS5tEx6Lg12S4F+wPTWGBHxqIs=",
            "RkhsLM7bP3b8/I95egY6mG5XiLDEhrMdQoCBxGntRKs=",
        ),
    ),
    # m/44'/60'/0'/0/755
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x3e062466157c077bEbb13cdD67D8C1f0E88aCc02",
            "0x6c336f071a35747bfa6941ad2c33dca2cedb9b9a088aae69ec1e9b6e264c5c1fe47fe41ddd01cee44783ab03cdd8b34a8f372c1a9a0c85f18fb158e1ceb4f8a4",
            "9ebe6888fa579503438a1b65b81221ac591ce43063542f474b31e19ace0a58dc",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x3e062466157c077bEbb13cdD67D8C1f0E88aCc02",
            "BGwzbwcaNXR7+mlBrSwz3KLO25uaCIquaewem24mTFwf5H/kHd0BzuRHg6sDzdizSo83LBqaDIXxj7FY4c60+KQ=",
            "nr5oiPpXlQNDihtluBIhrFkc5DBjVC9HSzHhms4KWNw=",
        ),
    ),
    # m/44'/60'/0'/0/756
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xEDc57eB9cC76875f59d3d3C30C1024e58900F5a1",
            "0x2f5e2f3b3f478b18e4028a183ea78d29f6f75177c39babd1ae3e4ef2e2d56a7ca97885f38679815aa3b7df1010d56d8b86bec4b7cd84a045b9a7e21566bda76b",
            "60d0f24f6ddc850de7754c9173676e62f9eab0c4ff0336634878fb7d7d2c6853",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xEDc57eB9cC76875f59d3d3C30C1024e58900F5a1",
            "BC9eLzs/R4sY5AKKGD6njSn291F3w5ur0a4+TvLi1Wp8qXiF84Z5gVqjt98QENVti4a+xLfNhKBFuafiFWa9p2s=",
            "YNDyT23chQ3ndUyRc2duYvnqsMT/AzZjSHj7fX0saFM=",
        ),
    ),
    # m/44'/60'/0'/0/757
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xEC057E2cf9aa93c8E42f91B14A1e68aA4c6534E0",
            "0xf48d2ba2fe2c9e26fbd5e382699babd7dbd280b58a7c68f4192ae19f0ca8d12f8301dfccb21f6f83ebbfd458adbc500c7098582d4e933cbdfe65a545ddb29cd9",
            "46884493e1274c6f04c9431a82f6e01173183c8e54144fd7c6ae0913260b5df3",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xEC057E2cf9aa93c8E42f91B14A1e68aA4c6534E0",
            "BPSNK6L+LJ4m+9Xjgmmbq9fb0oC1inxo9Bkq4Z8MqNEvgwHfzLIfb4Prv9RYrbxQDHCYWC1Okzy9/mWlRd2ynNk=",
            "RohEk+EnTG8EyUMagvbgEXMYPI5UFE/Xxq4JEyYLXfM=",
        ),
    ),
    # m/44'/60'/0'/0/758
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xB3993a0ABC621D555EDEdAD2487F6985dD4DBdcd",
            "0xa9c7a47d1baa85b3c7af76653d6db5a5d45ccfe19628249e1a02d90cb7a80b219d5f00c398b12b8ba81c04d7fecbf51d81d1676643b30ae18de96acb3b724390",
            "9a58d1026bdc93cd87446c15be408891e74052c34ca8350f7153a3defb2f3577",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xB3993a0ABC621D555EDEdAD2487F6985dD4DBdcd",
            "BKnHpH0bqoWzx692ZT1ttaXUXM/hligknhoC2Qy3qAshnV8Aw5ixK4uoHATX/sv1HYHRZ2ZDswrhjelqyztyQ5A=",
            "mljRAmvck82HRGwVvkCIkedAUsNMqDUPcVOj3vsvNXc=",
        ),
    ),
    # m/44'/60'/0'/0/759
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x0404f88A3e5565707aF3057Ac161D67270240F23",
            "0xd9967221d8dd25cbf993e019839fcb8b36896f6d3ef7f3a7841c6d3bc8fc6bf4590478f1a8ec84dbde6df0926a288ac870a32f04159818a78a94c996a173633a",
            "02bc1f678a7ff3747aa32fb79f1023c26ac71c33f073d24cbd1148178177b340",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x0404f88A3e5565707aF3057Ac161D67270240F23",
            "BNmWciHY3SXL+ZPgGYOfy4s2iW9tPvfzp4QcbTvI/Gv0WQR48ajshNvebfCSaiiKyHCjLwQVmBinipTJlqFzYzo=",
            "ArwfZ4p/83R6oy+3nxAjwmrHHDPwc9JMvRFIF4F3s0A=",
        ),
    ),
    # m/44'/60'/0'/0/760
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xf55FEef78F97978AFddDd78C19ee55179Ae0EAEd",
            "0x198bb7799be689075d91731ef15ae315f24436792cd5b1d16008ae2af2a711b49447f6c56230ef37621a5d6db40090aa38d0870bada471a4d117389e62057fea",
            "24e305bc04606388cb7105420b448ce9d65718850cdf74073dbfd996dd780211",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xf55FEef78F97978AFddDd78C19ee55179Ae0EAEd",
            "BBmLt3mb5okHXZFzHvFa4xXyRDZ5LNWx0WAIrirypxG0lEf2xWIw7zdiGl1ttACQqjjQhwutpHGk0Rc4nmIFf+o=",
            "JOMFvARgY4jLcQVCC0SM6dZXGIUM33QHPb/Zlt14AhE=",
        ),
    ),
    # m/44'/60'/0'/0/761
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x4998B194D6099AA1425d0ddEFeA27E879AC7Df92",
            "0x13c63d405868ad6c65d28d04b2a514f2fbee98f86f0d5c2f14daad7f1be9d8f0121b5b5a5bafec880fbb5303b4ccb4b240c3bcaa3e005be3daf2e56b5444d595",
            "4a93912695216669b8544453be220e50d244ebd15a106b4b13e699dd344a5908",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x4998B194D6099AA1425d0ddEFeA27E879AC7Df92",
            "BBPGPUBYaK1sZdKNBLKlFPL77pj4bw1cLxTarX8b6djwEhtbWluv7IgPu1MDtMy0skDDvKo+AFvj2vLla1RE1ZU=",
            "SpORJpUhZmm4VERTviIOUNJE69FaEGtLE+aZ3TRKWQg=",
        ),
    ),
    # m/44'/60'/0'/0/762
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xCC3F7EE81a395B71030d6549Ff9B13451f246450",
            "0xe62b9fac88646c7586e93a99d3e07d7076cce3f465ee627ac95ae8eadc5e4a2b999589a1e5b4d0aef547711c06e41ce3c0cbe4682d04955933a92f6f3db4cf46",
            "3d50bde7ac4a1f8cf16169809557c1f6371176da87b1ce39fb20c29d881e8d24",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xCC3F7EE81a395B71030d6549Ff9B13451f246450",
            "BOYrn6yIZGx1huk6mdPgfXB2zOP0Ze5iesla6OrcXkormZWJoeW00K71R3EcBuQc48DL5GgtBJVZM6kvbz20z0Y=",
            "PVC956xKH4zxYWmAlVfB9jcRdtqHsc45+yDCnYgejSQ=",
        ),
    ),
    # m/44'/60'/0'/0/763
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x2ec18B5dc25Fa723c8a5e68C146482E147E71716",
            "0xb0f71385967bfc23d64b9863c36e6387f19b57066af246ed9ae16dbfbac0f448dc82cacdc01ac41d676175f5a9c7bfaa28a3c1244ccfef01f2727a3104c97365",
            "dcba00e5c1444c795532243a71e851349f9fddd9860ec5cd8f56245708099710",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x2ec18B5dc25Fa723c8a5e68C146482E147E71716",
            "BLD3E4WWe/wj1kuYY8NuY4fxm1cGavJG7Zrhbb+6wPRI3ILKzcAaxB1nYXX1qce/qiijwSRMz+8B8nJ6MQTJc2U=",
            "3LoA5cFETHlVMiQ6cehRNJ+f3dmGDsXNj1YkVwgJlxA=",
        ),
    ),
    # m/44'/60'/0'/0/764
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x7dEB6cA9CD78c1ac66897C06dEE297383310a2b9",
            "0x9c4814139bd6babde21ac51fff947a6b79726de7d7186e975d59a551c3721030ad82292d050484daf105b466fd6ae3cadf2a0290484db31c5531312dc142d05b",
            "132a49826f1eb7caf9c53fb2c0e0a5e40fe45c211f750b2063c89e95bef2c74d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x7dEB6cA9CD78c1ac66897C06dEE297383310a2b9",
            "BJxIFBOb1rq94hrFH/+Uemt5cm3n1xhul11ZpVHDchAwrYIpLQUEhNrxBbRm/Wrjyt8qApBITbMcVTExLcFC0Fs=",
            "EypJgm8et8r5xT+ywOCl5A/kXCEfdQsgY8ielb7yx00=",
        ),
    ),
    # m/44'/60'/0'/0/765
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x8521FD619efCAe6919aC07e3d6F37a8024f6406C",
            "0x3e6373c978578d3974689d76c12061b367d1d074e4382ede6948fcc3d6465a275e2420503dedfe1d87f1550ceea8957af3d9df9929ac3a52f564d99a146c3c04",
            "f8767c03978d128250fcaa9aef7cf8a4959ec9083056fbaf84e9dde7eb5bc51b",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x8521FD619efCAe6919aC07e3d6F37a8024f6406C",
            "BD5jc8l4V405dGiddsEgYbNn0dB05Dgu3mlI/MPWRlonXiQgUD3t/h2H8VUM7qiVevPZ35kprDpS9WTZmhRsPAQ=",
            "+HZ8A5eNEoJQ/Kqa73z4pJWeyQgwVvuvhOnd5+tbxRs=",
        ),
    ),
    # m/44'/60'/0'/0/766
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xe89A67d493cEEfefC35a267Fa484B9e9EF3a2B54",
            "0x37aef3decf766b096554a1537a35ecfdd2358bd08a9ba3f901e014e9ee58627f8565c3151332c194677bf14d80d0f4b179e9f2d616f9035ca5ed98fef3f3d8d2",
            "59c736cc4e1cd7719d9a55b02599b937496bf08a63a52d28d0b23aaace921234",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xe89A67d493cEEfefC35a267Fa484B9e9EF3a2B54",
            "BDeu897PdmsJZVShU3o17P3SNYvQipuj+QHgFOnuWGJ/hWXDFRMywZRne/FNgND0sXnp8tYW+QNcpe2Y/vPz2NI=",
            "Wcc2zE4c13GdmlWwJZm5N0lr8IpjpS0o0LI6qs6SEjQ=",
        ),
    ),
    # m/44'/60'/0'/0/767
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xB7d795C8ea3E5caAe4E695710C6B2ef0C2381299",
            "0x27e081212b69d99359a2bdbfeac81576ba4e1f987d2712b017217081efdb5323c4d3d5b6f9e882a8ffe4e9d81148c1bf81993c3e3a6dc8b2c81218f59bf2b6bc",
            "ec80a2aaaf3b270d723b633065c31b1a7059f675541e972fba303cb974f0c8ec",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xB7d795C8ea3E5caAe4E695710C6B2ef0C2381299",
            "BCfggSEradmTWaK9v+rIFXa6Th+YfScSsBchcIHv21MjxNPVtvnogqj/5OnYEUjBv4GZPD46bciyyBIY9Zvytrw=",
            "7ICiqq87Jw1yO2MwZcMbGnBZ9nVUHpcvujA8uXTwyOw=",
        ),
    ),
    # m/44'/60'/0'/0/768
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xe68B20A0B77148155b25e51d2476b9F893055F4e",
            "0x4fa80b5a2258b034c2e635a1fcddeecf445291d50886f43fa2379c65fd51981b8e73a63c05a080552cf68d5e82f3c1288052a93f51169b91c362bfd2346c0515",
            "3e7787225df8740d77ca848feb1b16b186bd2e98aacfe6f7480b6e8af935f222",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xe68B20A0B77148155b25e51d2476b9F893055F4e",
            "BE+oC1oiWLA0wuY1ofzd7s9EUpHVCIb0P6I3nGX9UZgbjnOmPAWggFUs9o1egvPBKIBSqT9RFpuRw2K/0jRsBRU=",
            "PneHIl34dA13yoSP6xsWsYa9Lpiqz+b3SAtuivk18iI=",
        ),
    ),
    # m/44'/60'/0'/0/769
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xf34ceE1263F61d88B479df15855E84AD259393C9",
            "0x840f83a8f5df39fc8c5b299c60b3cdfa63c4224b77031efd947ff7debce0f2728f95e54a6e20f9ea8edb0dcecbcecff2654744f6f7e983df9cb9adf2ccabf8f7",
            "963b8c7e7f020140274ea7f9041ca9ccdc2f2de2de3e4f6a9340fda70afb909f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xf34ceE1263F61d88B479df15855E84AD259393C9",
            "BIQPg6j13zn8jFspnGCzzfpjxCJLdwMe/ZR/99684PJyj5XlSm4g+eqO2w3Oy87P8mVHRPb36YPfnLmt8syr+Pc=",
            "ljuMfn8CAUAnTqf5BBypzNwvLeLePk9qk0D9pwr7kJ8=",
        ),
    ),
    # m/44'/60'/0'/0/770
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x5A8fFFC7DfF0E4b926F7D65C963D83bC58777B08",
            "0x7ac1d3a2c5fd68b88a0f07135fe575651bd7bac0cd152a54ec097dee192060f4b4e564ffd63e7f403078f75b58ac3d7c5aee1d41a92f9ee7ff066251d8330826",
            "6365a29ae2ace17bf5feb47ac0d2bec25154f1be3f9da1ca02e693392236181a",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x5A8fFFC7DfF0E4b926F7D65C963D83bC58777B08",
            "BHrB06LF/Wi4ig8HE1/ldWUb17rAzRUqVOwJfe4ZIGD0tOVk/9Y+f0AwePdbWKw9fFruHUGpL57n/wZiUdgzCCY=",
            "Y2WimuKs4Xv1/rR6wNK+wlFU8b4/naHKAuaTOSI2GBo=",
        ),
    ),
    # m/44'/60'/0'/0/771
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xd704Fd06F927575fa87afd4520935E81A8B8a08e",
            "0x8058c542d23ff822a7d81f3c0975e462978f9b226450d02953b9ac0f369b297e80d7727b2c6adc6fa4eebfe11b5ef308992814eaa1be7ddbe1ea2955005e1ba4",
            "a08ab74a034fadb25e46200ce0024bd8c293458911954944aba09e453d2a4d33",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xd704Fd06F927575fa87afd4520935E81A8B8a08e",
            "BIBYxULSP/gip9gfPAl15GKXj5siZFDQKVO5rA82myl+gNdyeyxq3G+k7r/hG17zCJkoFOqhvn3b4eopVQBeG6Q=",
            "oIq3SgNPrbJeRiAM4AJL2MKTRYkRlUlEq6CeRT0qTTM=",
        ),
    ),
    # m/44'/60'/0'/0/772
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x2a2ee7FF2aA15b289c5d59C1B41604c75aD4088E",
            "0x6cd78c510e9785b79a422c601820e661f4339f53471eddad390f0ada17032a9cbfd888ea52556ca4616803f75dc1e784ac36ae393bbcc5d4b53cd2d7576d1567",
            "9615a4600284c7230e6febd931185cb486e07ef5764a871b2a0ead51169df86a",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x2a2ee7FF2aA15b289c5d59C1B41604c75aD4088E",
            "BGzXjFEOl4W3mkIsYBgg5mH0M59TRx7drTkPCtoXAyqcv9iI6lJVbKRhaAP3XcHnhKw2rjk7vMXUtTzS11dtFWc=",
            "lhWkYAKExyMOb+vZMRhctIbgfvV2SocbKg6tURad+Go=",
        ),
    ),
    # m/44'/60'/0'/0/773
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x38bf253B8Cb39A4067C1c6D88757A1aFA0a1ab29",
            "0x5fefbe98a2f7042632bff3237b6ef108ef284d3d74601b31db8765b1dade8da7f29a0879dd387dcf51eee14657bee90df392fdc96a32cd4fc0399466ecc3075c",
            "dee86752f63bb6e3ed8cd0f3801404e4f5dd20c0ac5e5fd616d655fc432f40bd",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x38bf253B8Cb39A4067C1c6D88757A1aFA0a1ab29",
            "BF/vvpii9wQmMr/zI3tu8QjvKE09dGAbMduHZbHa3o2n8poIed04fc9R7uFGV77pDfOS/clqMs1PwDmUZuzDB1w=",
            "3uhnUvY7tuPtjNDzgBQE5PXdIMCsXl/WFtZV/EMvQL0=",
        ),
    ),
    # m/44'/60'/0'/0/774
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x2200b5f7c2D0FC6657c28211c865F4f62E2cC121",
            "0x52bdbaa9834a446c4ea7a949bd29a7e088fd785989a8b33eb732c848eb3d9efc381e0cb51fa5a98dcb0a16b59592fd4db2120f3381ec0809cbd6e86f885a796d",
            "c32ce5dd2bad022ad8af247d4f226c189eba2f031f5d235b2029121ce77af29f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x2200b5f7c2D0FC6657c28211c865F4f62E2cC121",
            "BFK9uqmDSkRsTqepSb0pp+CI/XhZiaizPrcyyEjrPZ78OB4MtR+lqY3LCha1lZL9TbISDzOB7AgJy9bob4haeW0=",
            "wyzl3SutAirYryR9TyJsGJ66LwMfXSNbICkSHOd68p8=",
        ),
    ),
    # m/44'/60'/0'/0/775
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xB93a42ebbC57d434e42Ad333A9cAb5C3674F074b",
            "0xfd5043ec45734d657f01a19931b0edb16bc9b57c2ee7734349cc44b8b39abc39be1617f9ea4a89d0dcf4de684c1974950a1b216fbf23b26236d6080fdb166ac3",
            "7f78f68683824ce11202f55442e10c9f66528a7e0a840252547d3a06715ab33b",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xB93a42ebbC57d434e42Ad333A9cAb5C3674F074b",
            "BP1QQ+xFc01lfwGhmTGw7bFrybV8LudzQ0nMRLizmrw5vhYX+epKidDc9N5oTBl0lQobIW+/I7JiNtYID9sWasM=",
            "f3j2hoOCTOESAvVUQuEMn2ZSin4KhAJSVH06BnFaszs=",
        ),
    ),
    # m/44'/60'/0'/0/776
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x6ff8A6d0424072aa104cBCB7aaD0582174851f99",
            "0x1b9e3f284771326a9f175b867045b5d5fac10ccec84c8830b5af47a588cbe3574ae2a302ba1dc36365e89b19240139feeb55358ffee80d0a5c67a3899cfbe68f",
            "20fbf08b2410ee4f0f98e658266feb1117397b2bbc5d4aace472cefc24cb8d65",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x6ff8A6d0424072aa104cBCB7aaD0582174851f99",
            "BBuePyhHcTJqnxdbhnBFtdX6wQzOyEyIMLWvR6WIy+NXSuKjArodw2Nl6JsZJAE5/utVNY/+6A0KXGejiZz75o8=",
            "IPvwiyQQ7k8PmOZYJm/rERc5eyu8XUqs5HLO/CTLjWU=",
        ),
    ),
    # m/44'/60'/0'/0/777
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x244357F4e4bb2eB2e644E56822830Ba67A745610",
            "0xf998e8648fcccc41bb3e641beed821a6fdfb91411947dfd025ed94a88ed07107cf3deafe26adba2c260369a744ba0a65896bed126e57aa2ac7b7fc0d7ef6bf76",
            "37b7dffe5dbb4caa5d3f827d40a5586727f2e7b268b85ebd6772337a90a09307",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x244357F4e4bb2eB2e644E56822830Ba67A745610",
            "BPmY6GSPzMxBuz5kG+7YIab9+5FBGUff0CXtlKiO0HEHzz3q/iatuiwmA2mnRLoKZYlr7RJuV6oqx7f8DX72v3Y=",
            "N7ff/l27TKpdP4J9QKVYZyfy57JouF69Z3IzepCgkwc=",
        ),
    ),
    # m/44'/60'/0'/0/778
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x113c4c585460De4d39245df029261cF691C969F0",
            "0xab1d7d34f42dd9c4ec7d87e5a168428d6a6211ac2e1b6efb1147d5ad3e6fa5d907a3f3f6405e17c7b57521bb033a67eee4547b9da4f288fc6207527f727775bf",
            "02f0e72ef51bb5bb4d465a7d7ea8b3573976d32edaa179d8e136594cff78e8b4",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x113c4c585460De4d39245df029261cF691C969F0",
            "BKsdfTT0LdnE7H2H5aFoQo1qYhGsLhtu+xFH1a0+b6XZB6Pz9kBeF8e1dSG7Azpn7uRUe52k8oj8YgdSf3J3db8=",
            "AvDnLvUbtbtNRlp9fqizVzl20y7aoXnY4TZZTP946LQ=",
        ),
    ),
    # m/44'/60'/0'/0/779
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xbc721B180E56486B96b8B82a24606EA2822F48e1",
            "0x1762e63231e3f4ecbfa20172733ebb32d9d17f304a094d5635ee0afbe119b8d227b62a5861cc314feea7035b65e2f4aeb5e13cc16d33309ab4fc1081aea13807",
            "a821bb6aa0e1ea82177eec8766f926928c2f4f078f358e9958f658f44be0c589",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xbc721B180E56486B96b8B82a24606EA2822F48e1",
            "BBdi5jIx4/Tsv6IBcnM+uzLZ0X8wSglNVjXuCvvhGbjSJ7YqWGHMMU/upwNbZeL0rrXhPMFtMzCatPwQga6hOAc=",
            "qCG7aqDh6oIXfuyHZvkmkowvTwePNY6ZWPZY9EvgxYk=",
        ),
    ),
    # m/44'/60'/0'/0/780
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x54b256c9Ef168aA20D171CeAF74deA331606214B",
            "0xef4be5ce1f8a3b143a49598c9fe6b16bf7a73e4b8465c7a8673a437daea1c690d52735331a775250b44eff48ab3d39678397deb4adf41c8bb2e30b3b0d118fe0",
            "3180afd731f033590b753ac67fa9e9dc02786af6b9ec9c368a1dc48309dbdfd7",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x54b256c9Ef168aA20D171CeAF74deA331606214B",
            "BO9L5c4fijsUOklZjJ/msWv3pz5LhGXHqGc6Q32uocaQ1Sc1Mxp3UlC0Tv9Iqz05Z4OX3rSt9ByLsuMLOw0Rj+A=",
            "MYCv1zHwM1kLdTrGf6np3AJ4ava57Jw2ih3Egwnb39c=",
        ),
    ),
    # m/44'/60'/0'/0/781
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x35cc4438545AcEf8804dd1697Fb56c10De439172",
            "0x34dcac639498e9fa463265346ba0ac1e7c0ca5093fabdc073312fad7a0650d7f506f8b2eae205c4b1b68090fb7153a2ae0fc609b1dceb6c596e7bff47bf6e4dd",
            "fbb2482a06446f24978a6b91983897f762e51f18c18c5992cbd88b7990b431d1",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x35cc4438545AcEf8804dd1697Fb56c10De439172",
            "BDTcrGOUmOn6RjJlNGugrB58DKUJP6vcBzMS+tegZQ1/UG+LLq4gXEsbaAkPtxU6KuD8YJsdzrbFlue/9Hv25N0=",
            "+7JIKgZEbySXimuRmDiX92LlHxjBjFmSy9iLeZC0MdE=",
        ),
    ),
    # m/44'/60'/0'/0/782
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xCb52A440749927cf9586A03486Fb23302A2C8876",
            "0x43302c39cfdd1a9fcc54fef0b4ca36b2849c7681c2203f50664b4ef58342ab4e4c51ed4a8caed08c98796ac1c844ed03eb1ac804522796488d3884650cee49cf",
            "775fcc3864e284769dcf70804289feafb2ed9f13ff71288c3dea417fbf4e50a3",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xCb52A440749927cf9586A03486Fb23302A2C8876",
            "BEMwLDnP3RqfzFT+8LTKNrKEnHaBwiA/UGZLTvWDQqtOTFHtSoyu0IyYeWrByETtA+sayARSJ5ZIjTiEZQzuSc8=",
            "d1/MOGTihHadz3CAQon+r7LtnxP/cSiMPepBf79OUKM=",
        ),
    ),
    # m/44'/60'/0'/0/783
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x8233440f5f03EE867b0c973cdBf836532C2E92B8",
            "0x30a1dd0d95fe2f98d15b0d8503cae19a7db359d9bd93151a93a9b5b4bdcf77fed6caef0eeddcf56d4f3ec0a90d605a4f7e2135461160e2e01b1863e7908d6867",
            "6be50c5647a621125002089485ecf29883c65fa8314d7c9b56b238325f56d436",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x8233440f5f03EE867b0c973cdBf836532C2E92B8",
            "BDCh3Q2V/i+Y0VsNhQPK4Zp9s1nZvZMVGpOptbS9z3f+1srvDu3c9W1PPsCpDWBaT34hNUYRYOLgGxhj55CNaGc=",
            "a+UMVkemIRJQAgiUhezymIPGX6gxTXybVrI4Ml9W1DY=",
        ),
    ),
    # m/44'/60'/0'/0/784
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x033FfAfB129C03D38A90F89C5f4e00AC1A8738D1",
            "0x9f0ef7ca80880c129b8f59edee91fcd4f9bf27abf77205b8819e23ec0e14e64683fb6e247f49c164a26b3555644383f67e991c8c3b1b0a4c55fc943a26afe28a",
            "e8555f02365bcc178a504c17fe8127f33d592be5c3586521500904a88c3a2d69",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x033FfAfB129C03D38A90F89C5f4e00AC1A8738D1",
            "BJ8O98qAiAwSm49Z7e6R/NT5vyer93IFuIGeI+wOFOZGg/tuJH9JwWSiazVVZEOD9n6ZHIw7GwpMVfyUOiav4oo=",
            "6FVfAjZbzBeKUEwX/oEn8z1ZK+XDWGUhUAkEqIw6LWk=",
        ),
    ),
    # m/44'/60'/0'/0/785
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x722e16727Dd92dD01671b942851C726c221C1218",
            "0xf440c4a2ea9bd39548f32834dc126674619c46bbc97dc6978d89570f07729f90f5d69ff02640114433eae630a229237a8435738e83720288b4faf944a0737b32",
            "00051b17b6360b5a9949bb15e79d8183193a19d9b3d716bad608521a63873dd8",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x722e16727Dd92dD01671b942851C726c221C1218",
            "BPRAxKLqm9OVSPMoNNwSZnRhnEa7yX3Gl42JVw8Hcp+Q9daf8CZAEUQz6uYwoikjeoQ1c46DcgKItPr5RKBzezI=",
            "AAUbF7Y2C1qZSbsV552Bgxk6Gdmz1xa61ghSGmOHPdg=",
        ),
    ),
    # m/44'/60'/0'/0/786
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x1f2981Cf8340A0337581E2Eb6e56Ab5dad3dE1c0",
            "0xa14b8c3eef59e35c183fb5aebaa2b36753e56c866ffa82c7d88e017064b0e1303c10e3a4e964ba8454ba1b8f2826e339395b878a6016b9614a414a9430574213",
            "46166cafdcd4132abc32ee12eb52e5a2d3c8a64da4c712ac43523aa60636b83c",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x1f2981Cf8340A0337581E2Eb6e56Ab5dad3dE1c0",
            "BKFLjD7vWeNcGD+1rrqis2dT5WyGb/qCx9iOAXBksOEwPBDjpOlkuoRUuhuPKCbjOTlbh4pgFrlhSkFKlDBXQhM=",
            "RhZsr9zUEyq8Mu4S61LlotPIpk2kxxKsQ1I6pgY2uDw=",
        ),
    ),
    # m/44'/60'/0'/0/787
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x5F7bb9615c0e7200b9441cCaCE968540366606a6",
            "0x7fc740ff1bd2234c4bbbad3d9703cd88047ae3fb8aae4764cb2dbf5da0d92bd5af54c7ee8ba3ae0dca82186b98d40960a6c80a1a2b2ac35a6ec04b47d7ff2757",
            "924b6f6cb9eb3f5a9dc40761883500fa9569bd87ceb05a3af715401a5991c75d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x5F7bb9615c0e7200b9441cCaCE968540366606a6",
            "BH/HQP8b0iNMS7utPZcDzYgEeuP7iq5HZMstv12g2SvVr1TH7oujrg3KghhrmNQJYKbIChorKsNabsBLR9f/J1c=",
            "kktvbLnrP1qdxAdhiDUA+pVpvYfOsFo69xVAGlmRx10=",
        ),
    ),
    # m/44'/60'/0'/0/788
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xBBbC79bb4EEF4562DC256C946F96c00FfF66B807",
            "0x79023f958f52b6bbb5204d1df1c86b5ef9eac76495b97cc1d3f862d67175ecddca4e3093d2668e68ddd7388b2db7a2d531a320181707dba3df9177c9ddb9a1ce",
            "78fa8ebda981cbe91ed9358e1b868a0dd346ef5146ca73953b18da0e5c79813b",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xBBbC79bb4EEF4562DC256C946F96c00FfF66B807",
            "BHkCP5WPUra7tSBNHfHIa1756sdklbl8wdP4YtZxdezdyk4wk9Jmjmjd1ziLLbei1TGjIBgXB9uj35F3yd25oc4=",
            "ePqOvamBy+ke2TWOG4aKDdNG71FGynOVOxjaDlx5gTs=",
        ),
    ),
    # m/44'/60'/0'/0/789
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x626990ae11Aa9FAf65DF4bC63171E8f91567cBFf",
            "0xb742b517ae3894140f776543b23fdc49cdb5aa65cbb411c9181fa8efbd9a735b430ac05a081ab68401b413224a26da657af1ebf6ab895f061c8aaa8ff0093a23",
            "c38dc15ddc0fbb912c2db011d111bb6528db85b010c9d80949026bc478f68921",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x626990ae11Aa9FAf65DF4bC63171E8f91567cBFf",
            "BLdCtReuOJQUD3dlQ7I/3EnNtaply7QRyRgfqO+9mnNbQwrAWggatoQBtBMiSibaZXrx6/ariV8GHIqqj/AJOiM=",
            "w43BXdwPu5EsLbAR0RG7ZSjbhbAQydgJSQJrxHj2iSE=",
        ),
    ),
    # m/44'/60'/0'/0/790
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xf3f014252a404352A8980057214cC90A8F2eDe6f",
            "0xa257daf16211d6c65dfd6029afddf81bde6d33185c41d911cd779de6f280ef898548ac34190ccefe49b4bfee6280f813b56dbf790f716ca09bf5694da5f37d30",
            "5f0fd2979dede7839c633b831215a2ae11f43b76332f10ebc3c558cf7bd262d5",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xf3f014252a404352A8980057214cC90A8F2eDe6f",
            "BKJX2vFiEdbGXf1gKa/d+BvebTMYXEHZEc13nebygO+JhUisNBkMzv5JtL/uYoD4E7Vtv3kPcWygm/VpTaXzfTA=",
            "Xw/Sl53t54OcYzuDEhWirhH0O3YzLxDrw8VYz3vSYtU=",
        ),
    ),
    # m/44'/60'/0'/0/791
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x890078436ec368cD724b5Ee5Fe957037E48Ac05e",
            "0x68926b9aeb4882a1a1a07a60af8f19853e99c0a635443b31f740de3e803083e66f3e2603da784862022bc328039b797d16c4e0b4009e8a092c9f8411641fb2bf",
            "a808a033e96d50e4448cf5a53f150e39d9409b2289af2b47ffdbf9273122ee7f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x890078436ec368cD724b5Ee5Fe957037E48Ac05e",
            "BGiSa5rrSIKhoaB6YK+PGYU+mcCmNUQ7MfdA3j6AMIPmbz4mA9p4SGICK8MoA5t5fRbE4LQAnooJLJ+EEWQfsr8=",
            "qAigM+ltUOREjPWlPxUOOdlAmyKJrytH/9v5JzEi7n8=",
        ),
    ),
    # m/44'/60'/0'/0/792
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x03D53cACD45e9373548804fC26EF99c15108e018",
            "0x090d547bc7d44f69764dd9757f8d4fa8fd39a7c2b54452dbf871ccffa06e3fdf1055bfe42340f32f89ea037b97f84996e3e7e64597c903677fda19e1be18d741",
            "5a5fc8bf39c77d76bb59a1fdd3e88ec9077ee0c6a63269413bb4060c2689dc13",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x03D53cACD45e9373548804fC26EF99c15108e018",
            "BAkNVHvH1E9pdk3ZdX+NT6j9OafCtURS2/hxzP+gbj/fEFW/5CNA8y+J6gN7l/hJluPn5kWXyQNnf9oZ4b4Y10E=",
            "Wl/IvznHfXa7WaH90+iOyQd+4MamMmlBO7QGDCaJ3BM=",
        ),
    ),
    # m/44'/60'/0'/0/793
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x68D3DF5E23f14892B830dE89f181521f33f2d9a8",
            "0xee1061ca15e90773059814f8ec279132447f1b325fb6e3d68c883b97390d385a2e6ca28c81b54342fc5ca873948377e4c9fc4e1b0578a24c586ade8e0f631181",
            "69fea56a2a331fcb8851f2773865cd879e6f51f0b5d8704caac1f19c53cb1a0f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x68D3DF5E23f14892B830dE89f181521f33f2d9a8",
            "BO4QYcoV6QdzBZgU+OwnkTJEfxsyX7bj1oyIO5c5DThaLmyijIG1Q0L8XKhzlIN35Mn8ThsFeKJMWGrejg9jEYE=",
            "af6laiozH8uIUfJ3OGXNh55vUfC12HBMqsHxnFPLGg8=",
        ),
    ),
    # m/44'/60'/0'/0/794
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xc9D3Cf480c462505F2532fA7CEa7F62f810De3c9",
            "0xe4aef41608406c1f4ad212515132c2670ce4cfaacd7ad799e025b9964eb1e4a044cb4655320d36bf9cdb716af6addd77b25ffe8488526746386d8951fca27774",
            "7a8bd5b9881e1fe8786aeb44172d9c472ee5c66a315f0fda2d6bcee64a6dc491",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xc9D3Cf480c462505F2532fA7CEa7F62f810De3c9",
            "BOSu9BYIQGwfStISUVEywmcM5M+qzXrXmeAluZZOseSgRMtGVTINNr+c23Fq9q3dd7Jf/oSIUmdGOG2JUfyid3Q=",
            "eovVuYgeH+h4autEFy2cRy7lxmoxXw/aLWvO5kptxJE=",
        ),
    ),
    # m/44'/60'/0'/0/795
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x9354Ed7Ae7a053f8726A7dAF8D70CF2d8B4f383c",
            "0x200f47411da4762510fc7780795109e35d1d5bd532053eb16086f344ff2b15889b04bf38a277a2ac28baebd768839dc621634a8b802e98dff57c6d18dc9f7be2",
            "fc79e43b4dff8ad699f179bec6ee6b442587065718bd7d8cc2dac9ee889f36d1",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x9354Ed7Ae7a053f8726A7dAF8D70CF2d8B4f383c",
            "BCAPR0EdpHYlEPx3gHlRCeNdHVvVMgU+sWCG80T/KxWImwS/OKJ3oqwouuvXaIOdxiFjSouALpjf9XxtGNyfe+I=",
            "/HnkO03/itaZ8Xm+xu5rRCWHBlcYvX2MwtrJ7oifNtE=",
        ),
    ),
    # m/44'/60'/0'/0/796
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xDFF42E52C5f28554954dbd7cDa368CFe424a09a4",
            "0x8ac9159720196e045f7e087cdc25fd27f62140e06ee74d3ade2c2220246f1dcf67c9cedd744474a5c03fa85d67df17801dde39dacc9ac55583646aecfe34f86b",
            "51d05141c2f667bbf270b17614a43cff33df48109c989c6c8d6d0464326952d6",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xDFF42E52C5f28554954dbd7cDa368CFe424a09a4",
            "BIrJFZcgGW4EX34IfNwl/Sf2IUDgbudNOt4sIiAkbx3PZ8nO3XREdKXAP6hdZ98XgB3eOdrMmsVVg2Rq7P40+Gs=",
            "UdBRQcL2Z7vycLF2FKQ8/zPfSBCcmJxsjW0EZDJpUtY=",
        ),
    ),
    # m/44'/60'/0'/0/797
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x67C5b785bEB8c3614cFf8b9b4554231EDD97B90E",
            "0x84b4f5ee563569dfa38a446fb0bd7f3179d1d4b89f36c3afb8cbbb93976cd8b65f117fb7ef35e6eca5081a09b95c8c4d3932a0c4a23963c6799f66451a9663be",
            "d9997480ee378c6bab941cca49bb9742aa3b5c1c6b8a2b7f4337244a4b78e890",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x67C5b785bEB8c3614cFf8b9b4554231EDD97B90E",
            "BIS09e5WNWnfo4pEb7C9fzF50dS4nzbDr7jLu5OXbNi2XxF/t+815uylCBoJuVyMTTkyoMSiOWPGeZ9mRRqWY74=",
            "2Zl0gO43jGurlBzKSbuXQqo7XBxriit/QzckSkt46JA=",
        ),
    ),
    # m/44'/60'/0'/0/798
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x74C37c59CBC4Bc90652b57996c6b00bC6991B26d",
            "0x88f46f4576f3ad30212afb16cf27d1c4a0cb9af4b706b53ed09c3511cb6894bba2217413197b6f0807e08ff47da35ea9484e2cd864f229838e6c7c35b8c2d6bf",
            "a8a66833115a61e09e82bf45811a4ace881464fe00099dc6aaf4f1751b93ccc0",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x74C37c59CBC4Bc90652b57996c6b00bC6991B26d",
            "BIj0b0V2860wISr7Fs8n0cSgy5r0twa1PtCcNRHLaJS7oiF0Exl7bwgH4I/0faNeqUhOLNhk8imDjmx8NbjC1r8=",
            "qKZoMxFaYeCegr9FgRpKzogUZP4ACZ3GqvTxdRuTzMA=",
        ),
    ),
    # m/44'/60'/0'/0/799
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xdB761d4157218CcF718D599C438AcB93E75D82DE",
            "0x8a414cd3ddc00de57a5bd04ec2b3e2434b8350a58cbd4f6ec7c009cc5d1e8f64254643c484a36ca1a7b97ca2c8d099c1234a361332b8dfe44663aa1a4ea65949",
            "99a92aed94118044dc0d1ecf5e174a508fdeed82a25a7ea9bf88d3830491811e",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xdB761d4157218CcF718D599C438AcB93E75D82DE",
            "BIpBTNPdwA3lelvQTsKz4kNLg1CljL1PbsfACcxdHo9kJUZDxISjbKGnuXyiyNCZwSNKNhMyuN/kRmOqGk6mWUk=",
            "makq7ZQRgETcDR7PXhdKUI/e7YKiWn6pv4jTgwSRgR4=",
        ),
    ),
    # m/44'/60'/0'/0/800
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x313766BD1C8b508E78411B5D659253CdaecCc76A",
            "0x9446b618a60676a8a3a78be00270f813dd2bf04c7b143aeee14a31c987ed4fa07a21f97e57dcfd05d80b6edc89b84e3045fae3fe455bdb5115e3092a5ae15c10",
            "65287799e9c2ad5a685c4a3ef9053c3f9c750bc75ac81695d6689c85a8978cb5",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x313766BD1C8b508E78411B5D659253CdaecCc76A",
            "BJRGthimBnaoo6eL4AJw+BPdK/BMexQ67uFKMcmH7U+geiH5flfc/QXYC27cibhOMEX64/5FW9tRFeMJKlrhXBA=",
            "ZSh3menCrVpoXEo++QU8P5x1C8dayBaV1michaiXjLU=",
        ),
    ),
    # m/44'/60'/0'/0/801
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x1d293c67301352BB41aDcfe579AC59447c9961CC",
            "0xcfc7968f6c8aef36e664d3d43ae9dcb3b853195fb9ba0cfc2e285d77cf2345030d6758b69d6c7bbcddbade5fa0d61c2db5f0d7949eede71c45189d0e3bee06de",
            "94cf337028138e1177bd033e11ddcc454ae1a75bae201b142cb4a0d381897877",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x1d293c67301352BB41aDcfe579AC59447c9961CC",
            "BM/Hlo9siu825mTT1Drp3LO4UxlfuboM/C4oXXfPI0UDDWdYtp1se7zdut5foNYcLbXw15Se7eccRRidDjvuBt4=",
            "lM8zcCgTjhF3vQM+Ed3MRUrhp1uuIBsULLSg04GJeHc=",
        ),
    ),
    # m/44'/60'/0'/0/802
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xee1c3b75bDaF05CbD9A20Af2b4E2ff06595Dd6C1",
            "0xd8330e9160b41eb9a80f38c9c9d56e348bc7f82757ecadf9e4f0084bbae695c59290e175d622a3df1dc0d75c6eea8c0d8ed55fb18987173dc758d7c596cab57c",
            "0269ab2e6a6c98867ae1588fa73706fd03c33902ee94e82995b4fbe92340dece",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xee1c3b75bDaF05CbD9A20Af2b4E2ff06595Dd6C1",
            "BNgzDpFgtB65qA84ycnVbjSLx/gnV+yt+eTwCEu65pXFkpDhddYio98dwNdcbuqMDY7VX7GJhxc9x1jXxZbKtXw=",
            "AmmrLmpsmIZ64ViPpzcG/QPDOQLulOgplbT76SNA3s4=",
        ),
    ),
    # m/44'/60'/0'/0/803
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x661631ef3ca81215876a48EC51547FD7e4609803",
            "0x09a0f0fbaa62b6fef2672b2b9b331eba7746475e55df14e363cf86cba1438a6765e7ac89085236bb9c6d190febdad286a408c3397707597c3e5ab731dbb10a2d",
            "65c6c252393b3d13a2a15a6bed367dbd7d506cbb799f8d4100df3b7956a88c4f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x661631ef3ca81215876a48EC51547FD7e4609803",
            "BAmg8PuqYrb+8mcrK5szHrp3RkdeVd8U42PPhsuhQ4pnZeesiQhSNrucbRkP69rShqQIwzl3B1l8Plq3MduxCi0=",
            "ZcbCUjk7PROioVpr7TZ9vX1QbLt5n41BAN87eVaojE8=",
        ),
    ),
    # m/44'/60'/0'/0/804
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xc0Be08c4473B72D4518005bbeaeb9165560A9656",
            "0x74adbe42d178f5a3f8ad1bed0e46ea899a232381b6d1be9554e984e050389166997bd56f504cbbb2d3f6cd0f331f714626a393026b896d8dfaf213ca22e4a38e",
            "2aec9e208e2755c84d2f156c05e53e5404d4737ce1b1f510786f099e44969d2e",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xc0Be08c4473B72D4518005bbeaeb9165560A9656",
            "BHStvkLRePWj+K0b7Q5G6omaIyOBttG+lVTphOBQOJFmmXvVb1BMu7LT9s0PMx9xRiajkwJriW2N+vITyiLko44=",
            "KuyeII4nVchNLxVsBeU+VATUc3zhsfUQeG8JnkSWnS4=",
        ),
    ),
    # m/44'/60'/0'/0/805
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x8dcFbF035DeB496F43c2f36f4EDF0CAA1b82F74b",
            "0xc8e4729f2ead775cfd0c91fbfb59af30b3e860c3b700e3929022897802de6c35a4b48e92653c5792ee6f7a97369b8f5d97294a2712888663d1c654560a21ce55",
            "a540a22b89c3c5126344592ba7ec0cc46d628d0c574fe9afacf349dfcf69af68",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x8dcFbF035DeB496F43c2f36f4EDF0CAA1b82F74b",
            "BMjkcp8urXdc/QyR+/tZrzCz6GDDtwDjkpAiiXgC3mw1pLSOkmU8V5Lub3qXNpuPXZcpSicSiIZj0cZUVgohzlU=",
            "pUCiK4nDxRJjRFkrp+wMxG1ijQxXT+mvrPNJ389pr2g=",
        ),
    ),
    # m/44'/60'/0'/0/806
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x2A6FF9b3cA959dF080132B24197BA67c8aa7dC3f",
            "0xb8d33d426cb61ebc707b144317edeffd181b66c7b6bc4a6011901b251804223f41a86c93fc087915639487a008bc44381e3d90d2c24ad8b5287a890aaa134650",
            "ee1613c0091be0eae603da57e2cd7c7fe94a52ba1b24e0ba77fa729ad58c4beb",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x2A6FF9b3cA959dF080132B24197BA67c8aa7dC3f",
            "BLjTPUJsth68cHsUQxft7/0YG2bHtrxKYBGQGyUYBCI/Qahsk/wIeRVjlIegCLxEOB49kNLCSti1KHqJCqoTRlA=",
            "7hYTwAkb4OrmA9pX4s18f+lKUrobJOC6d/pymtWMS+s=",
        ),
    ),
    # m/44'/60'/0'/0/807
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xb9234074FBA861A0D3a11A00Ed776615E9EF0231",
            "0x6dcb4be89f90671d2b1b7cd1cf8c7cdc4b3d2b8c78e3ce3e13d31639b4f76edbd10860a8d8be3d09af002b595b9dcc02f847d26545d3731108f4fe608d1c5073",
            "02826517ece981184b18801d9711b2e19d3b3f057438bcbc36c3771eddb06a96",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xb9234074FBA861A0D3a11A00Ed776615E9EF0231",
            "BG3LS+ifkGcdKxt80c+MfNxLPSuMeOPOPhPTFjm0927b0QhgqNi+PQmvACtZW53MAvhH0mVF03MRCPT+YI0cUHM=",
            "AoJlF+zpgRhLGIAdlxGy4Z07PwV0OLy8NsN3Ht2wapY=",
        ),
    ),
    # m/44'/60'/0'/0/808
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xB2dC181CEf88c2591154303a3eA7d9bb58105eC8",
            "0xe933f303eed8731d47891e8a23efa5c3f1a5ea51fbe21d92923cb0c485c57329bfc517a6597d7084a2ff8c937c6becf5473dd14bcfab0295064b9111e0da8b25",
            "e82f78c0d99a9939eedad22433437262ec5cca037bdbcb5a7f86d8148be04a8f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xB2dC181CEf88c2591154303a3eA7d9bb58105eC8",
            "BOkz8wPu2HMdR4keiiPvpcPxpepR++IdkpI8sMSFxXMpv8UXpll9cISi/4yTfGvs9Uc90UvPqwKVBkuREeDaiyU=",
            "6C94wNmamTnu2tIkM0NyYuxcygN728taf4bYFIvgSo8=",
        ),
    ),
    # m/44'/60'/0'/0/809
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x95BA0E70C813e79844B05dd9DEA4D505b99cC48D",
            "0xb660407d7958454e1b583bcbb482c8a4e4039af7ffa07486d5acb39f9e6ac0889b54e47b95c95be146db6dc3aa6b0743bce64f4edf67ce2c33c9b8cf3a3527bb",
            "f9599a727a45184bc6f7796d4134c8de39a6bd9c2e532a0be6c122d8f20c70ab",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x95BA0E70C813e79844B05dd9DEA4D505b99cC48D",
            "BLZgQH15WEVOG1g7y7SCyKTkA5r3/6B0htWss5+easCIm1Tke5XJW+FG223DqmsHQ7zmT07fZ84sM8m4zzo1J7s=",
            "+VmacnpFGEvG93ltQTTI3jmmvZwuUyoL5sEi2PIMcKs=",
        ),
    ),
    # m/44'/60'/0'/0/810
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x7f957AFe372AE041cd6bEaF6bF318c743573094d",
            "0x9ab7cc49ca352386125f7f9943de094f74da6435e1befaa28294cf8a737204b84cb3beef3cd8a4a4bedb6377aacc0898282d78a7c0a8f9b5ec5bf5c6efa3e637",
            "f0e87aac746a537f0f3653532f6f64dd49209c8f7d770fd601660b34f8d42c22",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x7f957AFe372AE041cd6bEaF6bF318c743573094d",
            "BJq3zEnKNSOGEl9/mUPeCU902mQ14b76ooKUz4pzcgS4TLO+7zzYpKS+22N3qswImCgteKfAqPm17Fv1xu+j5jc=",
            "8Oh6rHRqU38PNlNTL29k3UkgnI99dw/WAWYLNPjULCI=",
        ),
    ),
    # m/44'/60'/0'/0/811
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x673344F676E64A997BAEA3F68902d7E7Eec0D25A",
            "0x958ecea5dba60be7f1fd9ede867a0489931c40a7f1d72860d472d65629b7f2b00e9c2a77f7265bb63a340d9ffc24a40a634edd8588d82b75753e876b8f73ae3b",
            "d52449ffaf34e8e14a3d4c911fddd5c32e70cd8057e6b674f2fd78ab46d901cc",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x673344F676E64A997BAEA3F68902d7E7Eec0D25A",
            "BJWOzqXbpgvn8f2e3oZ6BImTHECn8dcoYNRy1lYpt/KwDpwqd/cmW7Y6NA2f/CSkCmNO3YWI2Ct1dT6Ha49zrjs=",
            "1SRJ/6806OFKPUyRH93Vwy5wzYBX5rZ08v14q0bZAcw=",
        ),
    ),
    # m/44'/60'/0'/0/812
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x4163097C257860815D8Ee177eAAF5Ab19ee7c001",
            "0x4eba274e0923cc0e01d53d1700648c68473a601aa58ae8082d08eef6bbd128ab333295c5018688ee632f3159be6ab1438351cf8e133beb370aaba6ba3500dd70",
            "6eea93eedd89924bca2f735923902ca48fe2a5bc28cf503543608b4589cd2014",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x4163097C257860815D8Ee177eAAF5Ab19ee7c001",
            "BE66J04JI8wOAdU9FwBkjGhHOmAapYroCC0I7va70SirMzKVxQGGiO5jLzFZvmqxQ4NRz44TO+s3CqumujUA3XA=",
            "buqT7t2JkkvKL3NZI5AspI/ipbwoz1A1Q2CLRYnNIBQ=",
        ),
    ),
    # m/44'/60'/0'/0/813
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x6adcC41fdE737628BDaB8205cc7DffB76E483849",
            "0x8673f83aa4ee5bfa8e223931bf79598a4105fc137d8552d643cdc874b6bc6b83a88259b2b0654800c091d8e41a2f39f50b6b944100c5af798b51e128ce6ccfdf",
            "110647c943b7ad71316ff43d7af568a73b35835698ab40edfe515464f114d609",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x6adcC41fdE737628BDaB8205cc7DffB76E483849",
            "BIZz+Dqk7lv6jiI5Mb95WYpBBfwTfYVS1kPNyHS2vGuDqIJZsrBlSADAkdjkGi859QtrlEEAxa95i1HhKM5sz98=",
            "EQZHyUO3rXExb/Q9evVopzs1g1aYq0Dt/lFUZPEU1gk=",
        ),
    ),
    # m/44'/60'/0'/0/814
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xDa12E665C5F938B65c7066c40abeB4b7E72468A8",
            "0xc3bceb5f4b003b548a754a5ea47faafebf36e22ceca286efce4226eabd1303d6abf02d2da06fc630317ecccfc9551ea69af7b3664629a1edd62c9091a07f6891",
            "226d3c9ba97acf6f481ea8443ab6d11af5f8f43fb4e4a1ebe545b5ab21e52789",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xDa12E665C5F938B65c7066c40abeB4b7E72468A8",
            "BMO8619LADtUinVKXqR/qv6/NuIs7KKG785CJuq9EwPWq/AtLaBvxjAxfszPyVUeppr3s2ZGKaHt1iyQkaB/aJE=",
            "Im08m6l6z29IHqhEOrbRGvX49D+05KHr5UW1qyHlJ4k=",
        ),
    ),
    # m/44'/60'/0'/0/815
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xC1EBFFC920e718BE3FC76f99b0a5DF0D195C6bC0",
            "0xecc89460946f899320c8180ae2528daf005e07d936209d3e2e103faa76d0b49d718c9247255c27b7d6937b061022d00a58f712392708394e5c3c6f537c70d511",
            "6ba661f3439d900499c65b338ebaae37406a5ef615235dc1e95a05ece41dbf53",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xC1EBFFC920e718BE3FC76f99b0a5DF0D195C6bC0",
            "BOzIlGCUb4mTIMgYCuJSja8AXgfZNiCdPi4QP6p20LSdcYySRyVcJ7fWk3sGECLQClj3EjknCDlOXDxvU3xw1RE=",
            "a6Zh80OdkASZxlszjrquN0BqXvYVI13B6VoF7OQdv1M=",
        ),
    ),
    # m/44'/60'/0'/0/816
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x833589C132C64cFBe75be8Bf731B015AcDD8BD30",
            "0xd9069f096b4d7356c207aa6c2c1e77eddf064ee4395d6b2f496efb05621fdd1d86deaa08d157a3e46fe454955c9c64c5efdabf9139a2c71231fbbaa3cf38164b",
            "440f96d2385cbe91f2778e45c4ec7858efb9bc0e5b10ce30f8a7911c4e8840a9",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x833589C132C64cFBe75be8Bf731B015AcDD8BD30",
            "BNkGnwlrTXNWwgeqbCwed+3fBk7kOV1rL0lu+wViH90dht6qCNFXo+Rv5FSVXJxkxe/av5E5oscSMfu6o884Fks=",
            "RA+W0jhcvpHyd45FxOx4WO+5vA5bEM4w+KeRHE6IQKk=",
        ),
    ),
    # m/44'/60'/0'/0/817
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x8cB79bfeC308CA6048EbC2037B45a63b1664a7eb",
            "0x330aff709edfc9df48822afa9f7776bba9db317eb9de529cce42863d077ecb76a71bdeacffc2e69a0a9519a96dbb5a5064eebdef521ed506e4b530c14b8d56b6",
            "e9f42cf248aa8be46cc704e5f1d62a998cc4d1334e5dd5abb2357e61c0a3a80f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x8cB79bfeC308CA6048EbC2037B45a63b1664a7eb",
            "BDMK/3Ce38nfSIIq+p93drup2zF+ud5SnM5Chj0Hfst2pxverP/C5poKlRmpbbtaUGTuve9SHtUG5LUwwUuNVrY=",
            "6fQs8kiqi+RsxwTl8dYqmYzE0TNOXdWrsjV+YcCjqA8=",
        ),
    ),
    # m/44'/60'/0'/0/818
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x81940B1A7bF4632fc8c388b0eD1fae52fd268731",
            "0xf1fa3362a3624cd4cf94c3c19ef36e0ee0febd5609ddc8a42c5abe6e51dafcd29bd183c838fd1a7dd868278526f3887b65cfd66a3f3474c597b55146393d8407",
            "fc0423ebddf0febc088de6838e422abdadc69b77655fc22c4a3dfdb0371e6162",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x81940B1A7bF4632fc8c388b0eD1fae52fd268731",
            "BPH6M2KjYkzUz5TDwZ7zbg7g/r1WCd3IpCxavm5R2vzSm9GDyDj9Gn3YaCeFJvOIe2XP1mo/NHTFl7VRRjk9hAc=",
            "/AQj693w/rwIjeaDjkIqva3Gm3dlX8IsSj39sDceYWI=",
        ),
    ),
    # m/44'/60'/0'/0/819
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xCCa72Bf69Ae66bAbc6E35fc2b39ab7c7B9ccf0c7",
            "0x742da594893a079bd7323c75c75c3d0a6d9d4cc87dee06f33f09e99d255a7e4692452fbbbf789b9781dd0b73c1958ab28922fe29975e2948537d08016c1d95e6",
            "8b3d06c28afebfff8f4555a6f4e5c168ba7f2fb1dcc95de6e15dbb3fa7686239",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xCCa72Bf69Ae66bAbc6E35fc2b39ab7c7B9ccf0c7",
            "BHQtpZSJOgeb1zI8dcdcPQptnUzIfe4G8z8J6Z0lWn5GkkUvu794m5eB3QtzwZWKsoki/imXXilIU30IAWwdleY=",
            "iz0Gwor+v/+PRVWm9OXBaLp/L7HcyV3m4V27P6doYjk=",
        ),
    ),
    # m/44'/60'/0'/0/820
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xDDD0a99F533857AAc2deEC1449A7D3E36e90F2DD",
            "0xed17154d6725ce1b0c93fc722cd390e963fb7c2808b4c6dbf9883c3be2727606fc225c3204bc1d84150054c6026f29e8d9866e0d84ac2dbe2153513d52ea6b54",
            "a9098b6b1db7a6598d0f9a7a0099fb5dcf2930b4b91973c94dd6f635b6d9c8b4",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xDDD0a99F533857AAc2deEC1449A7D3E36e90F2DD",
            "BO0XFU1nJc4bDJP8cizTkOlj+3woCLTG2/mIPDvicnYG/CJcMgS8HYQVAFTGAm8p6NmGbg2ErC2+IVNRPVLqa1Q=",
            "qQmLax23plmND5p6AJn7Xc8pMLS5GXPJTdb2NbbZyLQ=",
        ),
    ),
    # m/44'/60'/0'/0/821
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xd3E0F7B42BCD217Cc102E25aC6a2134979Cc5C33",
            "0x374715918ba36c6d9d247ae9715acffc67c29da2b9cb647d26aace9c9f1bd4c5e0991a871c188566812f4779d6d52d256d11dadb9fd30fb7c62e85767e7f5fb6",
            "adc7dfa27439042d3c29af44a18baef9de328339a2b2fa61bc426be889a306b5",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xd3E0F7B42BCD217Cc102E25aC6a2134979Cc5C33",
            "BDdHFZGLo2xtnSR66XFaz/xnwp2iuctkfSaqzpyfG9TF4JkahxwYhWaBL0d51tUtJW0R2tuf0w+3xi6Fdn5/X7Y=",
            "rcffonQ5BC08Ka9EoYuu+d4ygzmisvphvEJr6ImjBrU=",
        ),
    ),
    # m/44'/60'/0'/0/822
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xcF9895379820541b7BBC655CFe504f3BEe30de47",
            "0xe5a1cafdfbf7a52448dfca00148a0a3a29169f7b76f82cffcff86365d4662b49735f981060de22ddf0bcb3500b658287f3a83aceae28d0655dad0f5acfcaa58a",
            "cca9a7a30ab9f9bc65b4a82cf6183140aefe99ff9f99ce41317dc9378c816d96",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xcF9895379820541b7BBC655CFe504f3BEe30de47",
            "BOWhyv3796UkSN/KABSKCjopFp97dvgs/8/4Y2XUZitJc1+YEGDeIt3wvLNQC2WCh/OoOs6uKNBlXa0PWs/KpYo=",
            "zKmnowq5+bxltKgs9hgxQK7+mf+fmc5BMX3JN4yBbZY=",
        ),
    ),
    # m/44'/60'/0'/0/823
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x0238096318593Cac84479cda31cC7eCCb81DB53F",
            "0xcd4d8d2de7b328c7136161357ca17c4ecddd80c8e349d9dafbf332890e119430e967944d39069b830b3c07623a9fdcaa7e61aba07bd4e1223dd50d1c3ac230c3",
            "c37e78c7edceb48a40a5f9cd5b620f529520be6f20e197bfd1eaa7247b40b81c",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x0238096318593Cac84479cda31cC7eCCb81DB53F",
            "BM1NjS3nsyjHE2FhNXyhfE7N3YDI40nZ2vvzMokOEZQw6WeUTTkGm4MLPAdiOp/cqn5hq6B71OEiPdUNHDrCMMM=",
            "w354x+3OtIpApfnNW2IPUpUgvm8g4Ze/0eqnJHtAuBw=",
        ),
    ),
    # m/44'/60'/0'/0/824
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x2033eC87670E8C7520725C234391Adc2de00dD74",
            "0xe604ac8b302bcf764c944206d1f54d0d886b2bb44c576e86a6645702230a75cad3ac848bc21bd0d386114a7618d1f643633d5f4f4596cc5b75b369b557887b55",
            "1085feeec74d4732734c0dc5310406be6fe2ede8239cb2db284c0e7bfdceb5a9",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x2033eC87670E8C7520725C234391Adc2de00dD74",
            "BOYErIswK892TJRCBtH1TQ2Iayu0TFduhqZkVwIjCnXK06yEi8Ib0NOGEUp2GNH2Q2M9X09FlsxbdbNptVeIe1U=",
            "EIX+7sdNRzJzTA3FMQQGvm/i7egjnLLbKEwOe/3Otak=",
        ),
    ),
    # m/44'/60'/0'/0/825
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x52C7AF19bD36994d1c7bB75D2f8b86835e892079",
            "0x78b53f83d85f22b1239353531452561adf1b2f263e8141159ced11e31ab4103f2a290c8f37079c0042c3628ca0852a20207b102024dbc24ce3365c7f394a5b0b",
            "629be66d7f575604bb573c11cc263222e6b531f938ad863a7193c908a5add6eb",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x52C7AF19bD36994d1c7bB75D2f8b86835e892079",
            "BHi1P4PYXyKxI5NTUxRSVhrfGy8mPoFBFZztEeMatBA/KikMjzcHnABCw2KMoIUqICB7ECAk28JM4zZcfzlKWws=",
            "YpvmbX9XVgS7VzwRzCYyIua1Mfk4rYY6cZPJCKWt1us=",
        ),
    ),
    # m/44'/60'/0'/0/826
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x60839E84496bCa30Bbff2844530DedDF33F687aC",
            "0x29f3338c6b434fc27bd0ef2313a77eb968a9fe8c07c90daf9f206180c4e52423a71f13d81e1f8bcc139fa9775435df4d13e187ceb751bafc9508d787574ca790",
            "2ed1282584badf010e1cd3f55f14ca0dca6dc5ade51fb22c5fa0ffbf65cd9f3c",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x60839E84496bCa30Bbff2844530DedDF33F687aC",
            "BCnzM4xrQ0/Ce9DvIxOnfrloqf6MB8kNr58gYYDE5SQjpx8T2B4fi8wTn6l3VDXfTRPhh863Ubr8lQjXh1dMp5A=",
            "LtEoJYS63wEOHNP1XxTKDcptxa3lH7IsX6D/v2XNnzw=",
        ),
    ),
    # m/44'/60'/0'/0/827
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x0752D2Ad4b88b96E8fEcff1E0296cf74041aEe35",
            "0x44505f58d2d737f5e44021df3de77168eeeb642be3de4555332a9cd1b20b51e26ea660c8d738b03a44fa6426d344f8d2a617c0e54080150e272aa1ad23930cf5",
            "523671101afbe7d86f0ede775361f5730138ca0dce158e3a9d2c0f9ec6e7e532",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x0752D2Ad4b88b96E8fEcff1E0296cf74041aEe35",
            "BERQX1jS1zf15EAh3z3ncWju62Qr495FVTMqnNGyC1HibqZgyNc4sDpE+mQm00T40qYXwOVAgBUOJyqhrSOTDPU=",
            "UjZxEBr759hvDt53U2H1cwE4yg3OFY46nSwPnsbn5TI=",
        ),
    ),
    # m/44'/60'/0'/0/828
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x1d06A2F3e42967a499660DD13f45bD0958b1FB67",
            "0x72e92dae4b4fd4dd5b9627159544f6a26e75800d74973fa29bd8022a06a09fcd90f55a50e6c110e8cc9b24e2291e70054afb3a98359f80b36963ccccba167d01",
            "de714a05d5a30027c3e992b25661e6c2b49c4c9bd8f826a290faf785277b0cb9",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x1d06A2F3e42967a499660DD13f45bD0958b1FB67",
            "BHLpLa5LT9TdW5YnFZVE9qJudYANdJc/opvYAioGoJ/NkPVaUObBEOjMmyTiKR5wBUr7Opg1n4CzaWPMzLoWfQE=",
            "3nFKBdWjACfD6ZKyVmHmwrScTJvY+CaikPr3hSd7DLk=",
        ),
    ),
    # m/44'/60'/0'/0/829
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x6BAd53CE6891650DAe4D39ce32edcAe67873a57E",
            "0x48b9ae055764d216237070e21f14806950178299855dc54da7b9e79c8b0670a5d0fe367add67b0d064a4c2be13e6546694868990103599a1d374097760a4eef9",
            "cafdeafe60bc9a1f377976ba8de589387baa100baf0d1614fdb44221b080144f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x6BAd53CE6891650DAe4D39ce32edcAe67873a57E",
            "BEi5rgVXZNIWI3Bw4h8UgGlQF4KZhV3FTae555yLBnCl0P42et1nsNBkpMK+E+ZUZpSGiZAQNZmh03QJd2Ck7vk=",
            "yv3q/mC8mh83eXa6jeWJOHuqEAuvDRYU/bRCIbCAFE8=",
        ),
    ),
    # m/44'/60'/0'/0/830
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x46cE3a9b5682d957cDcD5Ff084E446adaf860542",
            "0x9bd245d245a1a59619d5f91cc3855644e95f2f2bd4ac6a2f57dff1e05d147e9fc2e822431f38ef85a0d411c29289daf56bc98de1b7065cdd2e04a0cfa08b56a2",
            "3442ed48fe75f740ba793cc3a9bdac2fcec6f3cd93ec855615a709a45786eefd",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x46cE3a9b5682d957cDcD5Ff084E446adaf860542",
            "BJvSRdJFoaWWGdX5HMOFVkTpXy8r1KxqL1ff8eBdFH6fwugiQx8474Wg1BHCkona9WvJjeG3BlzdLgSgz6CLVqI=",
            "NELtSP5190C6eTzDqb2sL87G882T7IVWFacJpFeG7v0=",
        ),
    ),
    # m/44'/60'/0'/0/831
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x7366350Bd1920D994bb743173D9527415c6C8c66",
            "0x3574e69d11c7cc9942fb508503274667a97037b7f7842aabfbd758ab4f26d0e9f0834b64ab0a70c77142b0fd228e9a32f9f9723b2f11a73b9bf9bdee317add96",
            "85dc8dd65edc54d1319c0d34c55ffa1864514441527440b4c219d1273e35dbf3",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x7366350Bd1920D994bb743173D9527415c6C8c66",
            "BDV05p0Rx8yZQvtQhQMnRmepcDe394Qqq/vXWKtPJtDp8INLZKsKcMdxQrD9Io6aMvn5cjsvEac7m/m97jF63ZY=",
            "hdyN1l7cVNExnA00xV/6GGRRREFSdEC0whnRJz412/M=",
        ),
    ),
    # m/44'/60'/0'/0/832
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x6056EDAf9aC1236eB474eD3E1c38Fe8C9c25aE73",
            "0xd38b667d027dfa8726dd7904190f2f9fc5173f6935d13d616d1d521854771b5ce0021afe13ecabe028bb69b040a3f12a99512ca86a6768c99c7b22b39cfb42ee",
            "e9aeb37d9786aeeea33548060f5004b766519be923eacb1873b9d2436f80c7e9",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x6056EDAf9aC1236eB474eD3E1c38Fe8C9c25aE73",
            "BNOLZn0CffqHJt15BBkPL5/FFz9pNdE9YW0dUhhUdxtc4AIa/hPsq+Aou2mwQKPxKplRLKhqZ2jJnHsis5z7Qu4=",
            "6a6zfZeGru6jNUgGD1AEt2ZRm+kj6ssYc7nSQ2+Ax+k=",
        ),
    ),
    # m/44'/60'/0'/0/833
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x337c6a9d5cc5c7D8b544a8dFC5785A0BDEb3cE48",
            "0x58582419e0217bd58bd593d598fb2c6297d069fe15f4893c290b0713561e583ded60d0fc90b7de464708909aa626fe2645c86c461583d4dc2e8bb2a5725e7f8d",
            "e05cf2702119facd247c950abd78d18119e021c565c1d4b2c11a5de7cd30cd1d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x337c6a9d5cc5c7D8b544a8dFC5785A0BDEb3cE48",
            "BFhYJBngIXvVi9WT1Zj7LGKX0Gn+FfSJPCkLBxNWHlg97WDQ/JC33kZHCJCapib+JkXIbEYVg9TcLouypXJef40=",
            "4FzycCEZ+s0kfJUKvXjRgRngIcVlwdSywRpd580wzR0=",
        ),
    ),
    # m/44'/60'/0'/0/834
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x4d3f6Ea93aA612ceb4f0d1a27C921D790B734AFF",
            "0xa4f37ac0f16cf06a10c5b7e564c9ab38a6d33fa086d4a0d1cca3766f4b0004a39a4c5e6dcf692da1e56bf4b9003f80900be36eface7ab262a654f20bda809537",
            "a408a21f0504c8a3fdd4e8a089796776417d6fee55f44b854bfc943a6895042a",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x4d3f6Ea93aA612ceb4f0d1a27C921D790B734AFF",
            "BKTzesDxbPBqEMW35WTJqzim0z+ghtSg0cyjdm9LAASjmkxebc9pLaHla/S5AD+AkAvjbvrOerJiplTyC9qAlTc=",
            "pAiiHwUEyKP91OigiXlndkF9b+5V9EuFS/yUOmiVBCo=",
        ),
    ),
    # m/44'/60'/0'/0/835
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x12318b2F22E81f2B1bBc662a2eedEE34F3d967bF",
            "0x5c1dc6a8eddba7cba98fdeb2b96c36bc0c14f113ba096e340a32a7a174c19577da85e2fc3c20331a2386d779587b3d37c838ab7385ac48d908688328fea8764f",
            "2f0fc18b9e927e2ce9fb6261664b0de40d4f56e011555bdda60f369dcf60fa36",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x12318b2F22E81f2B1bBc662a2eedEE34F3d967bF",
            "BFwdxqjt26fLqY/esrlsNrwMFPETugluNAoyp6F0wZV32oXi/DwgMxojhtd5WHs9N8g4q3OFrEjZCGiDKP6odk8=",
            "Lw/Bi56Sfizp+2JhZksN5A1PVuARVVvdpg82nc9g+jY=",
        ),
    ),
    # m/44'/60'/0'/0/836
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x2A19c8B7Cc2C2524e61302838C0CC158eDa1FF3e",
            "0xe0d3c8dd843391dde9c81d27a8150c3670e511ae2e1311267dc5b6b8f95c33e81655d6aee790076b061de7a571bca9294a2357cd483764d0da7cea52838f56ee",
            "0eda65d916f3df48a0319a98638f9f0c73973eb7dc008afff967888a8343820a",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x2A19c8B7Cc2C2524e61302838C0CC158eDa1FF3e",
            "BODTyN2EM5Hd6cgdJ6gVDDZw5RGuLhMRJn3Ftrj5XDPoFlXWrueQB2sGHeelcbypKUojV81IN2TQ2nzqUoOPVu4=",
            "Dtpl2Rbz30igMZqYY4+fDHOXPrfcAIr/+WeIioNDggo=",
        ),
    ),
    # m/44'/60'/0'/0/837
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xBceBa1FB04f9372827E585247bb39b5388624176",
            "0xfb5c785ff22ded3712a96b9f4c214cde22d7af9731855ec8924322354ce754b3a422fe8c6d7699361d0ef363bcf44412e84fa48fb9f13a299cfd39d6803d3d8b",
            "b565dc39e3f1701908e83c6fa90dd1b17a80420cd97a66bf17cdd1731136a67f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xBceBa1FB04f9372827E585247bb39b5388624176",
            "BPtceF/yLe03Eqlrn0whTN4i16+XMYVeyJJDIjVM51SzpCL+jG12mTYdDvNjvPREEuhPpI+58TopnP051oA9PYs=",
            "tWXcOePxcBkI6DxvqQ3RsXqAQgzZema/F83RcxE2pn8=",
        ),
    ),
    # m/44'/60'/0'/0/838
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xBFa4C89Ea105dB8938bC41F0f4D3C6f21960d85E",
            "0x1e9d3929ae2890b59297c2d294f61ed7e035b589eba0fc0e8d0410c4d49349f3cbc9b4525c713580eb63a8ab0080b4f1b2e32cbfe79b88ec90692e51219c375b",
            "7d82a216385f19ffa9d48056a62d2d3782c27c88d097ab099635e8f6ff7d18b2",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xBFa4C89Ea105dB8938bC41F0f4D3C6f21960d85E",
            "BB6dOSmuKJC1kpfC0pT2HtfgNbWJ66D8Do0EEMTUk0nzy8m0UlxxNYDrY6irAIC08bLjLL/nm4jskGkuUSGcN1s=",
            "fYKiFjhfGf+p1IBWpi0tN4LCfIjQl6sJljXo9v99GLI=",
        ),
    ),
    # m/44'/60'/0'/0/839
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x9314262FaCEB5bCfB2Df2dac85bee85080FAA07A",
            "0xc084aa996b009485d6229902d40cb45b85614db4f576bb45e0b0f0eb482d8dc9f543fb3cb78ea58f8a93d0267339682ea9a6cc808a2643baeddbf10be8fe5cf8",
            "1e1ae19331e86e299c5f0c29e506689eb6365330bcbe73d449457546ada7fd8f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x9314262FaCEB5bCfB2Df2dac85bee85080FAA07A",
            "BMCEqplrAJSF1iKZAtQMtFuFYU209Xa7ReCw8OtILY3J9UP7PLeOpY+Kk9AmczloLqmmzICKJkO67dvxC+j+XPg=",
            "HhrhkzHobimcXwwp5QZonrY2UzC8vnPUSUV1Rq2n/Y8=",
        ),
    ),
    # m/44'/60'/0'/0/840
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xaE8383F6178861F67Da810ed5af8E7F89E539fAc",
            "0xcea8b5da9401e6ba349aa42f2d02ebc24a52ea29e01491d9710134fe53f06612fbca951d129d6ec38f25df1e4514316cb4ee644b24a5ec21b3bd47cf591a260d",
            "012b214c4363f8ba7b14761ab798894c511dd4de16ac217363ef4386218e0938",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xaE8383F6178861F67Da810ed5af8E7F89E539fAc",
            "BM6otdqUAea6NJqkLy0C68JKUuop4BSR2XEBNP5T8GYS+8qVHRKdbsOPJd8eRRQxbLTuZEskpewhs71Hz1kaJg0=",
            "ASshTENj+Lp7FHYat5iJTFEd1N4WrCFzY+9DhiGOCTg=",
        ),
    ),
    # m/44'/60'/0'/0/841
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xa37a83Aa9D49b07DF23554038F2A246B423A176F",
            "0x2872e1afe3586f28dc7f2ff3ceef04d01f4cde4a262c0c7a72e4b8ffbd3dcb4088136d3000ff6e68b4201b05e9b54016849b493363233cafe1a55870649428a2",
            "9dd3b2ed641064855eb98637c9a5f5075ea74fe6711d484e174720cc2ebb3578",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xa37a83Aa9D49b07DF23554038F2A246B423A176F",
            "BChy4a/jWG8o3H8v887vBNAfTN5KJiwMenLkuP+9PctAiBNtMAD/bmi0IBsF6bVAFoSbSTNjIzyv4aVYcGSUKKI=",
            "ndOy7WQQZIVeuYY3yaX1B16nT+ZxHUhOF0cgzC67NXg=",
        ),
    ),
    # m/44'/60'/0'/0/842
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xCcBcaDa24A29d4B085BDEb6b97f0Cc48e37C716E",
            "0x5d035159797bd9f8d57a15b313e4560e69765a2438331a047a8589260f0b42d1b59e533a688359e9aa245af4b1f10ffdf07c08b6e8ed45cec1536ef77c935be2",
            "4e826f483b1b11e098548b065d9a8eddf47a0b0b9ceb5fd9960e371416ed312c",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xCcBcaDa24A29d4B085BDEb6b97f0Cc48e37C716E",
            "BF0DUVl5e9n41XoVsxPkVg5pdlokODMaBHqFiSYPC0LRtZ5TOmiDWemqJFr0sfEP/fB8CLbo7UXOwVNu93yTW+I=",
            "ToJvSDsbEeCYVIsGXZqO3fR6Cwuc61/Zlg43FBbtMSw=",
        ),
    ),
    # m/44'/60'/0'/0/843
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x37BD1205dfd33448824bDEcb212544773b566B7E",
            "0xe865f0c7c39500e6ddbb70d537d00f375698dae7c615f4bf9bb70e4fa8744ec7e854b43648c9955df45a02611069c368c9b9160144e45acf873887a2a947ff84",
            "a29ab1873554fdab93527880b263dd60e06934fd17827f89aee161a06330d243",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x37BD1205dfd33448824bDEcb212544773b566B7E",
            "BOhl8MfDlQDm3btw1TfQDzdWmNrnxhX0v5u3Dk+odE7H6FS0NkjJlV30WgJhEGnDaMm5FgFE5FrPhziHoqlH/4Q=",
            "opqxhzVU/auTUniAsmPdYOBpNP0Xgn+JruFhoGMw0kM=",
        ),
    ),
    # m/44'/60'/0'/0/844
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xE2E26B5bE0AD26E9203a467912a40b426EC00802",
            "0xa9a3875ea0cb00d7e6417d2073a11439849c3aeb6c4f68b69e64bf2144e4d56b483a3f7ddce4b4f633234ba8bf56f3d14ccba9f532b7ad5042c75c8a5dde98b6",
            "92b5dab1ac1a000183d063f1e575f8c0287ab98beb1937f62a5a67b786cd62e3",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xE2E26B5bE0AD26E9203a467912a40b426EC00802",
            "BKmjh16gywDX5kF9IHOhFDmEnDrrbE9otp5kvyFE5NVrSDo/fdzktPYzI0uov1bz0UzLqfUyt61QQsdcil3emLY=",
            "krXasawaAAGD0GPx5XX4wCh6uYvrGTf2Klpnt4bNYuM=",
        ),
    ),
    # m/44'/60'/0'/0/845
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xc9e84cF9c33B5d9D94f1131C444a0044bbEde3a9",
            "0xbb5df950d6648d5c16f20edba51eded2c6ce504a2b419d2794b86916a4d6fac31d1b0fa87ac31ef8cb8617e294ebdb19c9e57a07ad365407c5f91c4222533c42",
            "20f797fe60476b0c511c8fd2ac1c91ed394424f050faea1d7bb6985cf4b3baa1",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xc9e84cF9c33B5d9D94f1131C444a0044bbEde3a9",
            "BLtd+VDWZI1cFvIO26Ue3tLGzlBKK0GdJ5S4aRak1vrDHRsPqHrDHvjLhhfilOvbGcnlegetNlQHxfkcQiJTPEI=",
            "IPeX/mBHawxRHI/SrByR7TlEJPBQ+uode7aYXPSzuqE=",
        ),
    ),
    # m/44'/60'/0'/0/846
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x06202B5Cf4Ec52D51F4B4282a483793d15EBea1F",
            "0xf95a15fcd1a5217fec9558d8dc453ca84714f28795cde345c7eeb26b18b46e5b27b9ffb53f821e49f68db6011f2ba38b4fbcb93dfd28aaede1084375dd0548f3",
            "90b10e3cf765f786d272d36665f6657d242cb4da235958a0a425c495b409f578",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x06202B5Cf4Ec52D51F4B4282a483793d15EBea1F",
            "BPlaFfzRpSF/7JVY2NxFPKhHFPKHlc3jRcfusmsYtG5bJ7n/tT+CHkn2jbYBHyuji0+8uT39KKrt4QhDdd0FSPM=",
            "kLEOPPdl94bSctNmZfZlfSQstNojWVigpCXElbQJ9Xg=",
        ),
    ),
    # m/44'/60'/0'/0/847
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x44Fb2f6BD816104D42bE8023BAE267188541b320",
            "0x7a5b3f86891e6f24d2d6a76c53c52cf85b671c28f87e01502f3805bf6333302bffe8f893951202b14468dfc653098955e8d904b6656e8688263c23dc40699693",
            "ad9e8b9a674a75ba27596e44d7712a1316aa0b33bd75a38f3e1134f8c5b11aaa",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x44Fb2f6BD816104D42bE8023BAE267188541b320",
            "BHpbP4aJHm8k0tanbFPFLPhbZxwo+H4BUC84Bb9jMzAr/+j4k5USArFEaN/GUwmJVejZBLZlboaIJjwj3EBplpM=",
            "rZ6LmmdKdbonWW5E13EqExaqCzO9daOPPhE0+MWxGqo=",
        ),
    ),
    # m/44'/60'/0'/0/848
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x7101D892040E7E5D59Bb839816e52160A1Ea8eaC",
            "0xa93adb4395449cdf0b5f4c99936bcb2f4ab777372dd1da61f6f1b1cf7c7d1a35cc305d4e4f00e13a8ca2ecc157cadb87ce85efaac6ea2fb84a03af8be2023cb8",
            "443315ea6837f16a2a91293a66a71fdaf83bb758e564399588f6dccb2b6492f6",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x7101D892040E7E5D59Bb839816e52160A1Ea8eaC",
            "BKk620OVRJzfC19MmZNryy9Kt3c3LdHaYfbxsc98fRo1zDBdTk8A4TqMouzBV8rbh86F76rG6i+4SgOvi+ICPLg=",
            "RDMV6mg38WoqkSk6Zqcf2vg7t1jlZDmViPbcyytkkvY=",
        ),
    ),
    # m/44'/60'/0'/0/849
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xe4f851e745eAe95ED16f1c854654945B3B1995A5",
            "0x612d168300f4e31afcdf0c1336f1d9bcf779b79869f2a48185d858a4a8169cc5e8f336bc766b8568c87a003fd140b9e4ebfd14a1d32c8ae7d908c90493d4188f",
            "00fa40eb6b05a3bd3578fca7992ac64a7e48704ab4c54249b23752cddbcc92c5",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xe4f851e745eAe95ED16f1c854654945B3B1995A5",
            "BGEtFoMA9OMa/N8MEzbx2bz3ebeYafKkgYXYWKSoFpzF6PM2vHZrhWjIegA/0UC55Ov9FKHTLIrn2QjJBJPUGI8=",
            "APpA62sFo701ePynmSrGSn5IcEq0xUJJsjdSzdvMksU=",
        ),
    ),
    # m/44'/60'/0'/0/850
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x0E1048496e540f1a357FCBaf5bE82231AD2920E4",
            "0x6ba7683c2a9a52f355778b376605ce77ec0142a01ee825227efd7ffb4ff6f5ea5f284da568df8d02523efb48eea16014aef312057117dacf40db74068fb73897",
            "8294274fc437876215d68caf1367be9d6eb924447070d4c954be430f79427733",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x0E1048496e540f1a357FCBaf5bE82231AD2920E4",
            "BGunaDwqmlLzVXeLN2YFznfsAUKgHuglIn79f/tP9vXqXyhNpWjfjQJSPvtI7qFgFK7zEgVxF9rPQNt0Bo+3OJc=",
            "gpQnT8Q3h2IV1oyvE2e+nW65JERwcNTJVL5DD3lCdzM=",
        ),
    ),
    # m/44'/60'/0'/0/851
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x1522aC0A73732e55A30A912c93C7c8b138734146",
            "0x010f664856b8c56f99abcb1a04f4dc04e0048f62dd5eedb2efdc5412c1db90f19153b95f50348ada7b534b67df92be6af6308944469b8faca73e311da61131b2",
            "e959048ee723a40a45b2a798648a27bbeea4e484bd3d2b76aaf25baf5f21fed7",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x1522aC0A73732e55A30A912c93C7c8b138734146",
            "BAEPZkhWuMVvmavLGgT03ATgBI9i3V7tsu/cVBLB25DxkVO5X1A0itp7U0tn35K+avYwiURGm4+spz4xHaYRMbI=",
            "6VkEjucjpApFsqeYZIonu+6k5IS9PSt2qvJbr18h/tc=",
        ),
    ),
    # m/44'/60'/0'/0/852
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x024F8029F30b4B15F9cf9ed34D962cd659062634",
            "0xa52999731645593add7618e509d273246c7cf947304d386918286d617dc2f945aa011ab676729ff4f33b12ff4059f90807ac3ada5adfef9003534ae48c9fe4b3",
            "f4f6507249d417845a7bb2bc43777c1c6823820df9cc781f967515ae97a5f0af",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x024F8029F30b4B15F9cf9ed34D962cd659062634",
            "BKUpmXMWRVk63XYY5QnScyRsfPlHME04aRgobWF9wvlFqgEatnZyn/TzOxL/QFn5CAesOtpa3++QA1NK5Iyf5LM=",
            "9PZQcknUF4Rae7K8Q3d8HGgjgg35zHgflnUVrpel8K8=",
        ),
    ),
    # m/44'/60'/0'/0/853
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x34966a4CFf5dE1dFcEAC71B2Cf84e577eC5d0555",
            "0x7bc901fcf9785410048eadffd6e9cc8489f9a3f85c440a922804058023158075ed88ec698a5bc435791747f80c9801354f6bea87b6aa1922c43545b0a33640fd",
            "2ae5a14f52c66452c81e63d3ccdcffe7db0571d57501462efe4d5c256275dab6",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x34966a4CFf5dE1dFcEAC71B2Cf84e577eC5d0555",
            "BHvJAfz5eFQQBI6t/9bpzISJ+aP4XEQKkigEBYAjFYB17YjsaYpbxDV5F0f4DJgBNU9r6oe2qhkixDVFsKM2QP0=",
            "KuWhT1LGZFLIHmPTzNz/59sFcdV1AUYu/k1cJWJ12rY=",
        ),
    ),
    # m/44'/60'/0'/0/854
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x32444fA1Bb694bb205c03e13AD21af6794F6A059",
            "0xf8bfc6582b7bacb4d1654c8c26bf10f65087f1d088b0c439de6ccdbe669938ea2a722f011f93c3f3fea16c293ac7e019cf5a82c85dae6e9dfe73f54223da0f4a",
            "f7d7f6b3ff11f368d2e67cfd2dcf8cda9a017a034ad4c791d1dd4e0cdc582059",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x32444fA1Bb694bb205c03e13AD21af6794F6A059",
            "BPi/xlgre6y00WVMjCa/EPZQh/HQiLDEOd5szb5mmTjqKnIvAR+Tw/P+oWwpOsfgGc9agshdrm6d/nP1QiPaD0o=",
            "99f2s/8R82jS5nz9Lc+M2poBegNK1MeR0d1ODNxYIFk=",
        ),
    ),
    # m/44'/60'/0'/0/855
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x4bE6006B0A723b9AE71472c06C4A0534489F93Ca",
            "0x4a7d88105f130bfed51945754c3aa3d7320618cbf077e1329956b630368161d5da02a26206a9d06e47b5fb517d0d2667f278cc5533a4bcb00966190a352ac60a",
            "5307f18190dfc96621b60f6ea35100686f747b374c95d494f0701cbe16db8db6",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x4bE6006B0A723b9AE71472c06C4A0534489F93Ca",
            "BEp9iBBfEwv+1RlFdUw6o9cyBhjL8HfhMplWtjA2gWHV2gKiYgap0G5HtftRfQ0mZ/J4zFUzpLywCWYZCjUqxgo=",
            "UwfxgZDfyWYhtg9uo1EAaG90ezdMldSU8HAcvhbbjbY=",
        ),
    ),
    # m/44'/60'/0'/0/856
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xCaAf46aAD5FA21b6dD7dE5c2Ec7E5441B6f83997",
            "0x13d19174b8de696ff4e061238b9bc4446877f8dae327d6ae1325446e60a29285978f1421eb0994a947b0beaa1e774cd04b2c39ba6daaee0f05f118297d22bd86",
            "738ecde696f07661b9cefeb5f0cd016e7143e828778aee4bcaa295bdfa254c3b",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xCaAf46aAD5FA21b6dD7dE5c2Ec7E5441B6f83997",
            "BBPRkXS43mlv9OBhI4ubxERod/ja4yfWrhMlRG5gopKFl48UIesJlKlHsL6qHndM0EssObptqu4PBfEYKX0ivYY=",
            "c47N5pbwdmG5zv618M0BbnFD6Ch3iu5LyqKVvfolTDs=",
        ),
    ),
    # m/44'/60'/0'/0/857
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x0689912d8b78c536d18762139688dbf2F63C7f63",
            "0xac8d4d5f284ed7e45833c75b624423636fdb45ef3a91bc939182af7a08f785994c269cdbde2d912929fb746fffeee24714bfddec97a05c1867bb610d9934e15a",
            "813bbe1782987ada5434f0e3cd34cea9fbe5aa66e80dcb1cde6d5e7082366a22",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x0689912d8b78c536d18762139688dbf2F63C7f63",
            "BKyNTV8oTtfkWDPHW2JEI2Nv20XvOpG8k5GCr3oI94WZTCac294tkSkp+3Rv/+7iRxS/3eyXoFwYZ7thDZk04Vo=",
            "gTu+F4KYetpUNPDjzTTOqfvlqmboDcsc3m1ecII2aiI=",
        ),
    ),
    # m/44'/60'/0'/0/858
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xcAA81Bee574b7EbA9360C6f40BCD747a4DF1d545",
            "0x0ed2fbacef62c9b9d26f1fcfa2161ad9328090321ba2e257f1d1120d3c53577f742787b0f5289ff4e4e8f63191aedc532d5baf274b5a8b55d3fba3747451a7a3",
            "3bfebdb0c69ea8370543f59bdf38974863e2177f3389276e0992cb2501e21976",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xcAA81Bee574b7EbA9360C6f40BCD747a4DF1d545",
            "BA7S+6zvYsm50m8fz6IWGtkygJAyG6LiV/HREg08U1d/dCeHsPUon/Tk6PYxka7cUy1brydLWotV0/ujdHRRp6M=",
            "O/69sMaeqDcFQ/Wb3ziXSGPiF38ziSduCZLLJQHiGXY=",
        ),
    ),
    # m/44'/60'/0'/0/859
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xD7FDF5822d202CE368B35673BcBeA6Ee99f8D410",
            "0x643ecdf1e37f684b734fd8c151e42c1c033eb4d1ab4de80c09ff3da7d527a4af4b8fae502b9bb4394bece0ea31c4c86819ab5b7be27f827a74ef84e4b40b1f81",
            "152c4a74cd491f2f74cd87ddf01d20ef682ef42306e591c7b55cbe1a74ffe8af",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xD7FDF5822d202CE368B35673BcBeA6Ee99f8D410",
            "BGQ+zfHjf2hLc0/YwVHkLBwDPrTRq03oDAn/PafVJ6SvS4+uUCubtDlL7ODqMcTIaBmrW3vif4J6dO+E5LQLH4E=",
            "FSxKdM1JHy90zYfd8B0g72gu9CMG5ZHHtVy+GnT/6K8=",
        ),
    ),
    # m/44'/60'/0'/0/860
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x8C847dcB90270e98AA029F69F59fAf711bac53e6",
            "0x66aceab0b6e25d0e2d7e4a62fb903e93c05b158c5ee1cd6365855317b8ac1b6e21eae4750d1fc28edc53d622bb2461b47fb7fd81c64728ef482c254a2d4f1577",
            "a38717c4e020ac32899fa4058f19912d8ec936b554601b47e2e2d61a31f52394",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x8C847dcB90270e98AA029F69F59fAf711bac53e6",
            "BGas6rC24l0OLX5KYvuQPpPAWxWMXuHNY2WFUxe4rBtuIerkdQ0fwo7cU9YiuyRhtH+3/YHGRyjvSCwlSi1PFXc=",
            "o4cXxOAgrDKJn6QFjxmRLY7JNrVUYBtH4uLWGjH1I5Q=",
        ),
    ),
    # m/44'/60'/0'/0/861
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x5d6973D5c6971e0E20a6e7580Bf0e0fe0EA7Ce78",
            "0x6ad3d2d857a81abd7259212c221926b5a755bc1a80f98acfdab94470e67d5fad217f88e87ab85ceb8cfc1d7ea6bb2b5fb78413e3eac5094c6b64882fb2ea3bf8",
            "69e3bcc2697edcde40e599c6daf5818a6230e744aec73018f2b92ea5cbe7402b",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x5d6973D5c6971e0E20a6e7580Bf0e0fe0EA7Ce78",
            "BGrT0thXqBq9clkhLCIZJrWnVbwagPmKz9q5RHDmfV+tIX+I6Hq4XOuM/B1+prsrX7eEE+PqxQlMa2SIL7LqO/g=",
            "aeO8wml+3N5A5ZnG2vWBimIw50SuxzAY8rkupcvnQCs=",
        ),
    ),
    # m/44'/60'/0'/0/862
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x179dBD9aA5A339597eAc7959149DB0D27665CDE5",
            "0xa017b43aa761d6217438ae987d0e154c76cacbb5b488da8a1b986b1a93d187786d537ddc7e6cf18ccfa8bbdb87282c6dc5d7a839473fecddaf3e7d0126bc7dae",
            "741e94ba7834a336b96ae818d943536c6a41651b281c096980769af11337250f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x179dBD9aA5A339597eAc7959149DB0D27665CDE5",
            "BKAXtDqnYdYhdDiumH0OFUx2ysu1tIjaihuYaxqT0Yd4bVN93H5s8YzPqLvbhygsbcXXqDlHP+zdrz59ASa8fa4=",
            "dB6Uung0oza5augY2UNTbGpBZRsoHAlpgHaa8RM3JQ8=",
        ),
    ),
    # m/44'/60'/0'/0/863
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x0dC7Fe6727f511A995898e70da08c3E36a3496Be",
            "0x1dfd139ff365a32928e9c28ed9b5ea21e6777f8c9d2d2abbb6ea49ec5183af56b625d80baa93e26a9a2ff0f185fc4885efcd97944df9221e9a24ee76ffa4c37b",
            "84a29b7ee6778a4a4b949f74a2f73a1bab8424b4fe60489050f54c0f02c446f4",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x0dC7Fe6727f511A995898e70da08c3E36a3496Be",
            "BB39E5/zZaMpKOnCjtm16iHmd3+MnS0qu7bqSexRg69WtiXYC6qT4mqaL/DxhfxIhe/Nl5RN+SIemiTudv+kw3s=",
            "hKKbfuZ3ikpLlJ90ovc6G6uEJLT+YEiQUPVMDwLERvQ=",
        ),
    ),
    # m/44'/60'/0'/0/864
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xB64B489aA22084D8bc82878f4b2B627001708260",
            "0x2338de1af255ec095e336f81005242e2247bf33d897802dd1d865a223894f5439bf35c5a4d7188092ca355439d9b672e139e7b40785989acc1a9cd5d4375ab7a",
            "eab6763babf6c14cd924d2562a046c4855f9b2aa0b8ceebcacd8755fcc61f8bf",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xB64B489aA22084D8bc82878f4b2B627001708260",
            "BCM43hryVewJXjNvgQBSQuIke/M9iXgC3R2GWiI4lPVDm/NcWk1xiAkso1VDnZtnLhOee0B4WYmswanNXUN1q3o=",
            "6rZ2O6v2wUzZJNJWKgRsSFX5sqoLjO68rNh1X8xh+L8=",
        ),
    ),
    # m/44'/60'/0'/0/865
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x7Cfa0a6aD618791870F9c762b236e3b7DaeC66D6",
            "0xc5425cd0d0962154b3d9fd00772d0d07f7e16a853ed6664ed32057a6e6c9ffdf5fe9f556459104e666b34a311bbbed4448064d57416642838a4c5120bb265cdf",
            "da99b4bf0183cf4076dd860db7551c89c39ef8a9d8522fc35714a123427b3b58",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x7Cfa0a6aD618791870F9c762b236e3b7DaeC66D6",
            "BMVCXNDQliFUs9n9AHctDQf34WqFPtZmTtMgV6bmyf/fX+n1VkWRBOZms0oxG7vtREgGTVdBZkKDikxRILsmXN8=",
            "2pm0vwGDz0B23YYNt1UcicOe+KnYUi/DVxShI0J7O1g=",
        ),
    ),
    # m/44'/60'/0'/0/866
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x212Aa9f41A3B8c236b2B8bDd51E80d8b8A0EdDFf",
            "0x9ce261c8a26e42af80bdde1c6bd0c471cee6c3ed7949b1d2d589e8184b61e7be4794e26cf3c55afbc27e61a4c209eebc48fa165423fe9907587550c6a55ff1ea",
            "41ee7071989990a68e828eadc3c353ab15dfd6e951e55225a4e3c6e4eac5629c",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x212Aa9f41A3B8c236b2B8bDd51E80d8b8A0EdDFf",
            "BJziYciibkKvgL3eHGvQxHHO5sPteUmx0tWJ6BhLYee+R5TibPPFWvvCfmGkwgnuvEj6FlQj/pkHWHVQxqVf8eo=",
            "Qe5wcZiZkKaOgo6tw8NTqxXf1ulR5VIlpOPG5OrFYpw=",
        ),
    ),
    # m/44'/60'/0'/0/867
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x6fe54B75B2cCA407b1351002983Ff256d5869B69",
            "0x5089f282a8950a7c8aa96d01c9216cebd45787ee49196b5593e795bec74f8b1e0f7ad76ff6c52ffc2327aee4069e2952f13836f7ebb5c2f33638d4c298a08554",
            "de0151ee4f036e74a84aba4dc983cb3b041c2b284c263a962944522028452fbf",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x6fe54B75B2cCA407b1351002983Ff256d5869B69",
            "BFCJ8oKolQp8iqltAckhbOvUV4fuSRlrVZPnlb7HT4seD3rXb/bFL/wjJ67kBp4pUvE4NvfrtcLzNjjUwpighVQ=",
            "3gFR7k8DbnSoSrpNyYPLOwQcKyhMJjqWKURSIChFL78=",
        ),
    ),
    # m/44'/60'/0'/0/868
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x860974B83D3eE7A92A0808044EF602184882F821",
            "0x7328878d2b87ce0b53f566ad204f55a67b9be7f0f8e5e72eea86684e2c17d6b539639ed28190e46789dde1d41ebfa110d7502d24750f9e9b2b6b976b52cb54c5",
            "04b214df1aaeeebb83a4a445d56c3d3cda1ac8d4fef4b3c4b74c38d2b4a8ccce",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x860974B83D3eE7A92A0808044EF602184882F821",
            "BHMoh40rh84LU/VmrSBPVaZ7m+fw+OXnLuqGaE4sF9a1OWOe0oGQ5GeJ3eHUHr+hENdQLSR1D56bK2uXa1LLVMU=",
            "BLIU3xqu7ruDpKRF1Ww9PNoayNT+9LPEt0w40rSozM4=",
        ),
    ),
    # m/44'/60'/0'/0/869
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xC974B2bf9AA77B65C420098D28d57406bD6C8881",
            "0x9320e7030a00dd1aa9a8ad2556c2ca75cea724bb61161aa980d46381542a7dca67df90b84d101183773e36e926cc34aad9edff80809e1415a7a18c4db2b3608e",
            "beb091920632a0aa2ca7f17a39876cd12d526d01681f14800c8d13f767f8935d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xC974B2bf9AA77B65C420098D28d57406bD6C8881",
            "BJMg5wMKAN0aqaitJVbCynXOpyS7YRYaqYDUY4FUKn3KZ9+QuE0QEYN3PjbpJsw0qtnt/4CAnhQVp6GMTbKzYI4=",
            "vrCRkgYyoKosp/F6OYds0S1SbQFoHxSADI0T92f4k10=",
        ),
    ),
    # m/44'/60'/0'/0/870
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x0e1B8C7Bf88a429CEfB1F64aeAa5eC765d8A6d77",
            "0xce4a053e46a619af8b76b501fb2d1cbd6f8a9444f8ea931598dd5591732c349363d58eca27f1b1a751407ab207ffb1ed2cfca8afcc94cdd30b92352dfa1f851d",
            "9ab05acee75a644951c72152533742c2ae5e37bcc24f2569b4928e391fb15f49",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x0e1B8C7Bf88a429CEfB1F64aeAa5eC765d8A6d77",
            "BM5KBT5Gphmvi3a1AfstHL1vipRE+OqTFZjdVZFzLDSTY9WOyifxsadRQHqyB/+x7Sz8qK/MlM3TC5I1LfofhR0=",
            "mrBazudaZElRxyFSUzdCwq5eN7zCTyVptJKOOR+xX0k=",
        ),
    ),
    # m/44'/60'/0'/0/871
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xe433F475eF03f57C15822DD2448611b73C5d478B",
            "0x33b7c85d8db4aeaecb56e49244ba3aa994a71bba794a80cd66c460319d449116ef493325e47d2509c72f753762c323c4af634b71127e112cd12652e2be08e229",
            "10e825336132eddf53ca4f376226ff7613a587816f7faf8dc2add24742feae8a",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xe433F475eF03f57C15822DD2448611b73C5d478B",
            "BDO3yF2NtK6uy1bkkkS6OqmUpxu6eUqAzWbEYDGdRJEW70kzJeR9JQnHL3U3YsMjxK9jS3ESfhEs0SZS4r4I4ik=",
            "EOglM2Ey7d9Tyk83Yib/dhOlh4Fvf6+Nwq3SR0L+roo=",
        ),
    ),
    # m/44'/60'/0'/0/872
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x3a0DDfA86C5fdDF22dC08d007764374cf6223DA7",
            "0x24c0ec9c0ccc46458e3a23030ba780adb841af357a623093b7a7273a0e3b4d0a6e8b1b1a52e27948f561d694a6bba012c5b62c6cb7ab8c156f39f1c30f9efcc6",
            "ecd304bce87e50cddffdc4da3a526d03037b3dafab4538784cdc1e2fea3ab032",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x3a0DDfA86C5fdDF22dC08d007764374cf6223DA7",
            "BCTA7JwMzEZFjjojAwungK24Qa81emIwk7enJzoOO00KbosbGlLieUj1YdaUprugEsW2LGy3q4wVbznxww+e/MY=",
            "7NMEvOh+UM3f/cTaOlJtAwN7Pa+rRTh4TNweL+o6sDI=",
        ),
    ),
    # m/44'/60'/0'/0/873
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xD5EFFa9F357d4ced260f144989249548A521531b",
            "0x2a37beec793197071b213223122de03585bcfa4356e144c4f49d3830088fca4deb69445280caf2d8dbbb56f055d82e4153c07d9836d7d1d2e4db3bda28b8aeea",
            "94659dd693af83385b628cf541d03cfee887613966731a15ad79d246158a8248",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xD5EFFa9F357d4ced260f144989249548A521531b",
            "BCo3vux5MZcHGyEyIxIt4DWFvPpDVuFExPSdODAIj8pN62lEUoDK8tjbu1bwVdguQVPAfZg219HS5Ns72ii4ruo=",
            "lGWd1pOvgzhbYoz1QdA8/uiHYTlmcxoVrXnSRhWKgkg=",
        ),
    ),
    # m/44'/60'/0'/0/874
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x82d4EFFeF5d4078Ac997172C39EB4C54B651c990",
            "0x03ffc9f40219780f8ba8d47b69640dd2a72c5e92ef7ba06346c863a5704b0e7969649052cc69ecf6ffcf25d6f2192cc79dde9c8c870fff87bad1ec9d251495af",
            "4fcdcd83f2181e9cb680c4e4f5b28505f525d4a4502f77d04bb57b1866137ae1",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x82d4EFFeF5d4078Ac997172C39EB4C54B651c990",
            "BAP/yfQCGXgPi6jUe2lkDdKnLF6S73ugY0bIY6VwSw55aWSQUsxp7Pb/zyXW8hksx53enIyHD/+HutHsnSUUla8=",
            "T83Ng/IYHpy2gMTk9bKFBfUl1KRQL3fQS7V7GGYTeuE=",
        ),
    ),
    # m/44'/60'/0'/0/875
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xC1fFc77eb67a0ccdd436808815D23ddBA362AC0e",
            "0x4172789173edf43193ea63cd1d1093dc117c2856a98dcf23f24d861d28b08e7fab2d266d9a1854caabfbee149563e0eb0e98b0824f6cb12a218538ed2cf31f10",
            "8b52469511286edc94877b03e6e86bf0eb5c024f7978a561d80f4497e91dcece",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xC1fFc77eb67a0ccdd436808815D23ddBA362AC0e",
            "BEFyeJFz7fQxk+pjzR0Qk9wRfChWqY3PI/JNhh0osI5/qy0mbZoYVMqr++4UlWPg6w6YsIJPbLEqIYU47SzzHxA=",
            "i1JGlREobtyUh3sD5uhr8OtcAk95eKVh2A9El+kdzs4=",
        ),
    ),
    # m/44'/60'/0'/0/876
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x503829ebbFe52d31FE285D435C7080c9305A674a",
            "0x41a503a842a2cb28c23b2feab9edd1aca0c8211aa7763d004c519c6925cddd8df8beb9b3d31575113ae153de46ac5326fdd44bb841349e17e63d3c0f0472487b",
            "d9ba3b8e0935a6df5fa87d8fcb812059e63dc77b15ae66be37699d2febee461d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x503829ebbFe52d31FE285D435C7080c9305A674a",
            "BEGlA6hCossowjsv6rnt0aygyCEap3Y9AExRnGklzd2N+L65s9MVdRE64VPeRqxTJv3US7hBNJ4X5j08DwRySHs=",
            "2bo7jgk1pt9fqH2Py4EgWeY9x3sVrma+N2mdL+vuRh0=",
        ),
    ),
    # m/44'/60'/0'/0/877
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x8688C887d023e90211051F43CAA19620Eb82016d",
            "0x4ae805f740fed05728411ed8abf9565d925fc69d4ce7b1089ca8b0d182908410d80b4c3c99699c4d1ca8fb16ff5f8e1cde0370c6e50ff4b6f2c6b7677ebfe6e7",
            "c48a795a24f77b60bbc1e0a814c1d4939e2462f335a2ce4461667325e33d4fbb",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x8688C887d023e90211051F43CAA19620Eb82016d",
            "BEroBfdA/tBXKEEe2Kv5Vl2SX8adTOexCJyosNGCkIQQ2AtMPJlpnE0cqPsW/1+OHN4DcMblD/S28sa3Z36/5uc=",
            "xIp5WiT3e2C7weCoFMHUk54kYvM1os5EYWZzJeM9T7s=",
        ),
    ),
    # m/44'/60'/0'/0/878
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x8Da2b4ECe6E16033ebA3DB0F17F8A3CeEcd23C4A",
            "0x8f0f0075060f106227a8e7195179c189f688d1959d452a9f05b6cef3f59898a0a6e40a9e474e9a2f4e56b449c037df4b7ac18b7d154776093e9b3ba2e9809796",
            "fa1ed47d72b8b277e61ce7be2d26692cd8d213c78a14fab17c1f66053f38a186",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x8Da2b4ECe6E16033ebA3DB0F17F8A3CeEcd23C4A",
            "BI8PAHUGDxBiJ6jnGVF5wYn2iNGVnUUqnwW2zvP1mJigpuQKnkdOmi9OVrRJwDffS3rBi30VR3YJPps7oumAl5Y=",
            "+h7UfXK4snfmHOe+LSZpLNjSE8eKFPqxfB9mBT84oYY=",
        ),
    ),
    # m/44'/60'/0'/0/879
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x4585e7dc8224AE9B179a166285a8B7bcc48AfC81",
            "0x3eb8bd9aee717361d3d42a853dfe5b9e17dd6e03d77e7c6aad658a71c419b720b426306d6358311642d7f0107eb0d1ed3c1e111e8ebb8b70c83a796451e102e2",
            "e6ba3714ef6bbbc8a756bd1f5264aee4b28dcb7480c09ddcb38410a9c9e64a2e",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x4585e7dc8224AE9B179a166285a8B7bcc48AfC81",
            "BD64vZrucXNh09QqhT3+W54X3W4D1358aq1linHEGbcgtCYwbWNYMRZC1/AQfrDR7TweER6Ou4twyDp5ZFHhAuI=",
            "5ro3FO9ru8inVr0fUmSu5LKNy3SAwJ3cs4QQqcnmSi4=",
        ),
    ),
    # m/44'/60'/0'/0/880
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x1755DC07b3E8c19DB45332846C99101f9dB9E5af",
            "0xd25e5ee6c6ed28ea4796b70826e54b9ced6b9616c8ec229f4d37a8a25472691d9c897e2ef423b7aa673fe84fb89efa54c7d9240a107d08f751eeecff9b922d11",
            "c68a9de8e1c14488a4be16a5856b6d5480baacc03174b4f3d069efa4ac2d5f60",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x1755DC07b3E8c19DB45332846C99101f9dB9E5af",
            "BNJeXubG7SjqR5a3CCblS5zta5YWyOwin003qKJUcmkdnIl+LvQjt6pnP+hPuJ76VMfZJAoQfQj3Ue7s/5uSLRE=",
            "xoqd6OHBRIikvhalhWttVIC6rMAxdLTz0GnvpKwtX2A=",
        ),
    ),
    # m/44'/60'/0'/0/881
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x90686c9b24772240fd0037378b1c024E7297CC46",
            "0x887efb5992a2c9ce864ac15eb4cb213f875f8010943d27a603dcd1cf279cc97fe9f298e3b217da0bcfa8b08e3521c48c126e06c3487eea1ca9c6393f36f29fc6",
            "3cb8029550b8bdc593ce54a6e1918d02c25e05c81b1da8a78c618ff676dbfb55",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x90686c9b24772240fd0037378b1c024E7297CC46",
            "BIh++1mSosnOhkrBXrTLIT+HX4AQlD0npgPc0c8nnMl/6fKY47IX2gvPqLCONSHEjBJuBsNIfuocqcY5Pzbyn8Y=",
            "PLgClVC4vcWTzlSm4ZGNAsJeBcgbHainjGGP9nbb+1U=",
        ),
    ),
    # m/44'/60'/0'/0/882
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x93CEFEc0D0ac67cA5E5808B22EAAB22860071836",
            "0xd113fa70d60000721438d46fc4324e33a2ce48e57267f36fb4c2a18e045525589e923c97332c7f2c9d00dc7fe1cbe24f396177029a63167fe403faf3b912cf62",
            "22096cc1d4997636057f68fcfc5a666a69935429fdd4c00126b3899219087177",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x93CEFEc0D0ac67cA5E5808B22EAAB22860071836",
            "BNET+nDWAAByFDjUb8QyTjOizkjlcmfzb7TCoY4EVSVYnpI8lzMsfyydANx/4cviTzlhdwKaYxZ/5AP687kSz2I=",
            "IglswdSZdjYFf2j8/FpmammTVCn91MABJrOJkhkIcXc=",
        ),
    ),
    # m/44'/60'/0'/0/883
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x7C66243304FeCa9127219f9656a012EAE1C62235",
            "0x1a0a41f71aeca2cff150fa9d3e37144d0d0d68e3d9c411ce1ef5a2b75db7de4d2f7a0068177b59bdeaf4a1900af452dcf53889e3b36625f61c7de3c9d76ffc72",
            "ed527915bd3a7be305c9eaf99ea71eb0d0a60422effd0efab7d96f88746895dc",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x7C66243304FeCa9127219f9656a012EAE1C62235",
            "BBoKQfca7KLP8VD6nT43FE0NDWjj2cQRzh71orddt95NL3oAaBd7Wb3q9KGQCvRS3PU4ieOzZiX2HH3jyddv/HI=",
            "7VJ5Fb06e+MFyer5nqcesNCmBCLv/Q76t9lviHRoldw=",
        ),
    ),
    # m/44'/60'/0'/0/884
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xaA7ce6e8A44D597f73207C2A116464CD6F544227",
            "0x1a9b988fc4cff694fba2301136c11f038bcf5c7647eca6b21520fc4b0389f56beb589f68a07a595a30df79f8268c8967d5d0779563ed7178e61e2d55e44a27c1",
            "c9cc989178bef20680fb308f38f047d4e1022efbe24f756ea38063835d4006bc",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xaA7ce6e8A44D597f73207C2A116464CD6F544227",
            "BBqbmI/Ez/aU+6IwETbBHwOLz1x2R+ymshUg/EsDifVr61ifaKB6WVow33n4JoyJZ9XQd5Vj7XF45h4tVeRKJ8E=",
            "ycyYkXi+8gaA+zCPOPBH1OECLvviT3Vuo4Bjg11ABrw=",
        ),
    ),
    # m/44'/60'/0'/0/885
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xB2317585c2DCA6058f407777718c3CD437CA83B5",
            "0xb9e71d183fa405bc0e0a4ac08c4d82e78dda1a5f655218b8c6573e5237463e40a1b1d1bf00a0418f0adf0bfb37a8cd52c8adeb72ee8cfaec8062d2b837db65d3",
            "ec6360267b192eb8d763bc0d3c68d3451bd3f022ec2e1ea6797a74a5fe33ba99",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xB2317585c2DCA6058f407777718c3CD437CA83B5",
            "BLnnHRg/pAW8DgpKwIxNgueN2hpfZVIYuMZXPlI3Rj5AobHRvwCgQY8K3wv7N6jNUsit63LujPrsgGLSuDfbZdM=",
            "7GNgJnsZLrjXY7wNPGjTRRvT8CLsLh6meXp0pf4zupk=",
        ),
    ),
    # m/44'/60'/0'/0/886
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x0bc9d790a0199BbAb912aE952B92972E813d1894",
            "0xf11273fc3973ffcdd566d8a564d6f78e2b5c15339f05c1fb2825f60c5d1c7d628e4418a77c965e9aff45b4c771a65ea62b71faacc666bf8e5025d950f4e6dce7",
            "c077a7be420b39519cb065dda1937512eda5920b1b1418687980012deef32f53",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x0bc9d790a0199BbAb912aE952B92972E813d1894",
            "BPESc/w5c//N1WbYpWTW944rXBUznwXB+ygl9gxdHH1ijkQYp3yWXpr/RbTHcaZepitx+qzGZr+OUCXZUPTm3Oc=",
            "wHenvkILOVGcsGXdoZN1Eu2lkgsbFBhoeYABLe7zL1M=",
        ),
    ),
    # m/44'/60'/0'/0/887
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x0c07Ec015E3132dA2F3647F161eca1c6B3434aBc",
            "0x1126fcb42612a3d65ce50ecaec8e8e2804681d76bff547cfc705d0661e1381405c887be98b3129616f271a4de86ad73b402d516af96c255f6234d5ce87620d26",
            "60898a7a417ccf3920c0f0af90e016742e7644ccd22a24abb366d101c32458cc",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x0c07Ec015E3132dA2F3647F161eca1c6B3434aBc",
            "BBEm/LQmEqPWXOUOyuyOjigEaB12v/VHz8cF0GYeE4FAXIh76YsxKWFvJxpN6GrXO0AtUWr5bCVfYjTVzodiDSY=",
            "YImKekF8zzkgwPCvkOAWdC52RMzSKiSrs2bRAcMkWMw=",
        ),
    ),
    # m/44'/60'/0'/0/888
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xb7CAD7059ee5472C050195ED84975fC0aCd55fbA",
            "0x0f503dfca7227a1a1407ea32fceec12b0eb6def109e0786620d24b7b21f0078e760166ef1d5de3846b6646bb88df715a277654613f08c59ff0266ef1aeb13f1b",
            "63dd0b31b3aa8570eb478bd66857a7024f7a9b87a974c685a2afa82b43aeabab",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xb7CAD7059ee5472C050195ED84975fC0aCd55fbA",
            "BA9QPfynInoaFAfqMvzuwSsOtt7xCeB4ZiDSS3sh8AeOdgFm7x1d44RrZka7iN9xWid2VGE/CMWf8CZu8a6xPxs=",
            "Y90LMbOqhXDrR4vWaFenAk96m4epdMaFoq+oK0Ouq6s=",
        ),
    ),
    # m/44'/60'/0'/0/889
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x1bF41b4BD6e3C4d28669437F92c65fEc9272675e",
            "0xa56f3c466d12a4bd9a257024ca26fd189b46808a492c0463d98aa3ab623a2bc2e915ce8baa6b3a1929cdfc97fdfd9c292ad05b49f7753836589819eba2d9f660",
            "7e0e4867ce2016b0174169ee0dcbc8995b66688f27cc2e43dd6049a76d34613e",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x1bF41b4BD6e3C4d28669437F92c65fEc9272675e",
            "BKVvPEZtEqS9miVwJMom/RibRoCKSSwEY9mKo6tiOivC6RXOi6prOhkpzfyX/f2cKSrQW0n3dTg2WJgZ66LZ9mA=",
            "fg5IZ84gFrAXQWnuDcvImVtmaI8nzC5D3WBJp200YT4=",
        ),
    ),
    # m/44'/60'/0'/0/890
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x01d1cA621885CA5DC73ea283e1D7B95e891aF400",
            "0xc5dc79861d7cf9e0048cce6061ae692dd311e4211fa8f871cd300af7bb5c95897ab380653232d481ac4e4e90ada4c91a7e347303aa07635dcc108fa1038ed2a8",
            "78d552c303ddf403a3c5d848de0cadf628cb2edd976e4221463ac73b2d6bbfa5",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x01d1cA621885CA5DC73ea283e1D7B95e891aF400",
            "BMXceYYdfPngBIzOYGGuaS3TEeQhH6j4cc0wCve7XJWJerOAZTIy1IGsTk6QraTJGn40cwOqB2NdzBCPoQOO0qg=",
            "eNVSwwPd9AOjxdhI3gyt9ijLLt2XbkIhRjrHOy1rv6U=",
        ),
    ),
    # m/44'/60'/0'/0/891
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xFfB9AC5901bf1De2579D4CdD4D710F3eAeB5AD96",
            "0x56610620488f2dd06388334646135cc0857e3092db857b97863e326a86b2a4d0bf156abbe8a81377009f0b4372569f7d92b0b9e0b958177a73af35112edc6d9e",
            "e81f1525859ed69688c9724624e2edff1e6db9c12de6db77882bbff4edbd7efd",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xFfB9AC5901bf1De2579D4CdD4D710F3eAeB5AD96",
            "BFZhBiBIjy3QY4gzRkYTXMCFfjCS24V7l4Y+MmqGsqTQvxVqu+ioE3cAnwtDclaffZKwueC5WBd6c681ES7cbZ4=",
            "6B8VJYWe1paIyXJGJOLt/x5tucEt5tt3iCu/9O29fv0=",
        ),
    ),
    # m/44'/60'/0'/0/892
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xAFdADABe8668Ec5E0F83f13f6794cC316CbD9E56",
            "0xfd32cadbae353e1deb04772793bb871c03d7cb6300cee7a786d480f33dbe1d9404dc2c192a061ce48cf76a976052a073bd2ff9f3eed62f02d107b8e9abc33bef",
            "cd1e6b129b4c5453eb5c3f9a5ca9da57b43547edcbc70b5765f82940231e70e4",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xAFdADABe8668Ec5E0F83f13f6794cC316CbD9E56",
            "BP0yytuuNT4d6wR3J5O7hxwD18tjAM7np4bUgPM9vh2UBNwsGSoGHOSM92qXYFKgc70v+fPu1i8C0Qe46avDO+8=",
            "zR5rEptMVFPrXD+aXKnaV7Q1R+3LxwtXZfgpQCMecOQ=",
        ),
    ),
    # m/44'/60'/0'/0/893
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x415EDb478288eea3996ef1dcb78B5D46C251DA17",
            "0xf0c66d6401af924a9c3a2be191853a37105d6ce44f97101b07817163ff42568178569e5d9c063b0fb02b66e3c88d908c7b4181c298f560f98a04f7e1cfd77f11",
            "1611b0d32846427722df71aeff2e015145438817fc676f7a4e706ead3d95949d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x415EDb478288eea3996ef1dcb78B5D46C251DA17",
            "BPDGbWQBr5JKnDor4ZGFOjcQXWzkT5cQGweBcWP/QlaBeFaeXZwGOw+wK2bjyI2QjHtBgcKY9WD5igT34c/XfxE=",
            "FhGw0yhGQnci33Gu/y4BUUVDiBf8Z296TnBurT2VlJ0=",
        ),
    ),
    # m/44'/60'/0'/0/894
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x5261AA8d1685788b2fA1494dD48359cFE7b118Ca",
            "0x8b3938c8d0b22286489b489a33e64faf6ee91130d2b35e687a844cdb3a5ac354f114e46030169b374b8ebdd457a338f60576d78a1748cb8e17f2c56c5ddea021",
            "7477a9401d2276d1a9b77b0e0b901d3c2faccece1e2ff9ee509b8fed17abca5f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x5261AA8d1685788b2fA1494dD48359cFE7b118Ca",
            "BIs5OMjQsiKGSJtImjPmT69u6REw0rNeaHqETNs6WsNU8RTkYDAWmzdLjr3UV6M49gV214oXSMuOF/LFbF3eoCE=",
            "dHepQB0idtGpt3sOC5AdPC+szs4eL/nuUJuP7Reryl8=",
        ),
    ),
    # m/44'/60'/0'/0/895
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xdE85c843765574a1fB18eDbC56eF9491a8F03AaA",
            "0x335439dda63323873762a69cc085f083ad13149a258aec520679e2cfede457120254a4686e2001a26433f0dfabc84bcbd0569ef744edd6db7df33c7c5ad2ac8b",
            "f786c7ea91e2eb278282618b135dd002268f5a10a28b9bed6811ed319ec135c0",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xdE85c843765574a1fB18eDbC56eF9491a8F03AaA",
            "BDNUOd2mMyOHN2KmnMCF8IOtExSaJYrsUgZ54s/t5FcSAlSkaG4gAaJkM/Dfq8hLy9BWnvdE7dbbffM8fFrSrIs=",
            "94bH6pHi6yeCgmGLE13QAiaPWhCii5vtaBHtMZ7BNcA=",
        ),
    ),
    # m/44'/60'/0'/0/896
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x531452835e52E3eE316cb1D858018Ba67CCb4A6a",
            "0x5c38e05570502f247f8501412bcc6df0861913ac36d35be7635cfec9b267eb7045470e6a8187c526c52438e64d0fd91efa01c482da3823a5005c7e4cdacb7470",
            "42c23cbbec5aec95b4b57d4462c80c2237ec12b4f364d43b07f83d2d5fd7a1f1",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x531452835e52E3eE316cb1D858018Ba67CCb4A6a",
            "BFw44FVwUC8kf4UBQSvMbfCGGROsNtNb52Nc/smyZ+twRUcOaoGHxSbFJDjmTQ/ZHvoBxILaOCOlAFx+TNrLdHA=",
            "QsI8u+xa7JW0tX1EYsgMIjfsErTzZNQ7B/g9LV/XofE=",
        ),
    ),
    # m/44'/60'/0'/0/897
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x70a9D18eadCa0D7Fe4d901C757EC459Fcb9dd85C",
            "0xdca7cf6df4b5206eb05f89859ebe73085088cfedc16ba90a8d59d4786c6274c337a80986d56145cd8dc4b3f0e0cd72c8edae1f0f5096c8ac87b2b56e7975902d",
            "e9bcc56c9fc4d283a43d61471b842df10e55fcb7703a70e3131dff6ef9135883",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x70a9D18eadCa0D7Fe4d901C757EC459Fcb9dd85C",
            "BNynz230tSBusF+JhZ6+cwhQiM/twWupCo1Z1HhsYnTDN6gJhtVhRc2NxLPw4M1yyO2uHw9Qlsish7K1bnl1kC0=",
            "6bzFbJ/E0oOkPWFHG4Qt8Q5V/LdwOnDjEx3/bvkTWIM=",
        ),
    ),
    # m/44'/60'/0'/0/898
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x0465A285C958fc728D577AE725cfDa7e73ccC7AE",
            "0x719299cad72dba5d6008ebfa6f2b2c500961b771b84ba88209576ec23fcbf5c936ed9978837f452cdd14c2a207e6fcbd6f0f1332de5459b6fa772ff401cc2ca0",
            "f7ab0b54c980ac43bd5bdec486776b2290f94d722fe404041193a9e12a5e964e",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x0465A285C958fc728D577AE725cfDa7e73ccC7AE",
            "BHGSmcrXLbpdYAjr+m8rLFAJYbdxuEuogglXbsI/y/XJNu2ZeIN/RSzdFMKiB+b8vW8PEzLeVFm2+ncv9AHMLKA=",
            "96sLVMmArEO9W97EhndrIpD5TXIv5AQEEZOp4Spelk4=",
        ),
    ),
    # m/44'/60'/0'/0/899
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x4578a788f757B07a0E3e982A85e6462B4131BA80",
            "0x99c4226a6392b1dd2790e2eaba9ef2fcec0dc0de16f06bd7263f9caca3b7a3cb3b8d500e6378efc6bb6477bf79a2f8828b5faa97b90e2db09d33dce365288cc7",
            "0df495da1a921f59ba77f9d6d6d17abc5dcb3c5c559470dc26571051b7b86fa3",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x4578a788f757B07a0E3e982A85e6462B4131BA80",
            "BJnEImpjkrHdJ5Di6rqe8vzsDcDeFvBr1yY/nKyjt6PLO41QDmN478a7ZHe/eaL4gotfqpe5Di2wnTPc42UojMc=",
            "DfSV2hqSH1m6d/nW1tF6vF3LPFxVlHDcJlcQUbe4b6M=",
        ),
    ),
    # m/44'/60'/0'/0/900
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x3b2094474658B83939aA3250a32A4d85681Fc670",
            "0xa8dff2ec348acb28e851e836b817c80dbd7b0c71ead5fb629131ad8164621765fcf63103864602bfc870e02a94acabc4f613facf51447b7e30b8cacac2e8f6a1",
            "2f93a72d312c0b0f47f741164d48535a50281204a845ebd8782c51cd7bbbed9b",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x3b2094474658B83939aA3250a32A4d85681Fc670",
            "BKjf8uw0isso6FHoNrgXyA29ewxx6tX7YpExrYFkYhdl/PYxA4ZGAr/IcOAqlKyrxPYT+s9RRHt+MLjKysLo9qE=",
            "L5OnLTEsCw9H90EWTUhTWlAoEgSoRevYeCxRzXu77Zs=",
        ),
    ),
    # m/44'/60'/0'/0/901
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x4831A835544f61573f08217498D9e8482C7d1b71",
            "0x3a61dce74046a5a11e68954fce66ec6002dfb51b0aa7fe422d016aed54c64bf3158b09e7fe2f546550c66235150b8421e158fa3d925d5dfd128a7805a5772109",
            "053c79c9a671cca4fa8de0f2146e8ad584e1f521ac743ff112934e9f62ecfb6b",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x4831A835544f61573f08217498D9e8482C7d1b71",
            "BDph3OdARqWhHmiVT85m7GAC37UbCqf+Qi0Bau1UxkvzFYsJ5/4vVGVQxmI1FQuEIeFY+j2SXV39Eop4BaV3IQk=",
            "BTx5yaZxzKT6jeDyFG6K1YTh9SGsdD/xEpNOn2Ls+2s=",
        ),
    ),
    # m/44'/60'/0'/0/902
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x9A830a0fE74e8857D297b140845D4355EE20cDB7",
            "0x5b62fa872b029284d08d22b43b6f7859067d2d5248957993ff249b060a65ae3d5336380e939166f29e6d0ca8c89311ccb4793f6734ab481ec406a267a861f7cf",
            "e551c958d24f0a0055115c760ee62e278536115c67e59a1d4dce55288602dc39",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x9A830a0fE74e8857D297b140845D4355EE20cDB7",
            "BFti+ocrApKE0I0itDtveFkGfS1SSJV5k/8kmwYKZa49UzY4DpORZvKebQyoyJMRzLR5P2c0q0gexAaiZ6hh988=",
            "5VHJWNJPCgBVEVx2DuYuJ4U2EVxn5ZodTc5VKIYC3Dk=",
        ),
    ),
    # m/44'/60'/0'/0/903
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xee78826d7C225383bD6E7B0b492667b82694b33E",
            "0x25b1aba734b524a8b6f75951e2d9f1c75177ccf4f9f13fd2bcfbc6f27f8373694ef5d480649b2fde90f452d3713b99160bba420b96ec9ce1a25a7810926d573e",
            "07c7465625a50a8fe0841af5b519dcf55d4d7e21a88057f5c934454b66eb3bfa",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xee78826d7C225383bD6E7B0b492667b82694b33E",
            "BCWxq6c0tSSotvdZUeLZ8cdRd8z0+fE/0rz7xvJ/g3NpTvXUgGSbL96Q9FLTcTuZFgu6QguW7Jzholp4EJJtVz4=",
            "B8dGViWlCo/ghBr1tRnc9V1NfiGogFf1yTRFS2brO/o=",
        ),
    ),
    # m/44'/60'/0'/0/904
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xE526829817Db702a2655c30a098502388a4dF20D",
            "0x0b4b39f97148422237fabef7207f3c6f7140a626686e41dd9d4d0704242f29190d6b2aa8afe78d8860ac08494731e1a411f51a45be83ee9031cab8b68fb56095",
            "14fbf400a709d13e874ddaaf6354956f54412d071ef25cb636aecb4ccf9ed02c",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xE526829817Db702a2655c30a098502388a4dF20D",
            "BAtLOflxSEIiN/q+9yB/PG9xQKYmaG5B3Z1NBwQkLykZDWsqqK/njYhgrAhJRzHhpBH1GkW+g+6QMcq4to+1YJU=",
            "FPv0AKcJ0T6HTdqvY1SVb1RBLQce8ly2Nq7LTM+e0Cw=",
        ),
    ),
    # m/44'/60'/0'/0/905
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x41A4da145B5d827464b99B1197F138735228C2ac",
            "0x0ed3b6e49fa6d3ce1d45908bca62b16ecd57c7ccdb67de29294635f85b8a4bddaf4b45f09f519173b712b93c62102b0aa6667442efc3241efbfd2f8b2fd17d0b",
            "9d5b897e36a23a7c4e761f190516ab47759e4704be7e2775884360ab696b609f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x41A4da145B5d827464b99B1197F138735228C2ac",
            "BA7TtuSfptPOHUWQi8pisW7NV8fM22feKSlGNfhbikvdr0tF8J9RkXO3Erk8YhArCqZmdELvwyQe+/0viy/RfQs=",
            "nVuJfjaiOnxOdh8ZBRarR3WeRwS+fid1iENgq2lrYJ8=",
        ),
    ),
    # m/44'/60'/0'/0/906
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xB5ec2448061f269A9E30Af7A9AC55eD70974a971",
            "0xfa285682c57c121834e7efd5196c4131ea1c29c216370e088789357d0eb4508fbf83af7b45d1dc60192d6d6df22e570b5f61882cc74b8976401ae858da7ac576",
            "832c7d430f826c34b36951e26904d406b5a294ea8775089a47b5f7437fdfc39a",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xB5ec2448061f269A9E30Af7A9AC55eD70974a971",
            "BPooVoLFfBIYNOfv1RlsQTHqHCnCFjcOCIeJNX0OtFCPv4Ove0XR3GAZLW1t8i5XC19hiCzHS4l2QBroWNp6xXY=",
            "gyx9Qw+CbDSzaVHiaQTUBrWilOqHdQiaR7X3Q3/fw5o=",
        ),
    ),
    # m/44'/60'/0'/0/907
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xe69B2F05646b68096be7Df44b12Ad84656d1ac1a",
            "0x5e0b9e7264a8aac2114168774f850b7e5e43e406cd230eab9fa3ffcb9e75e442bfd37b33c422fe78acba53e034fc6ed7011d65eaff95de3abc751d33e7000ded",
            "8843291c6d55b3c4d5556ba4d04f409e53e8330b90024e9d73ef01c6aa10abcd",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xe69B2F05646b68096be7Df44b12Ad84656d1ac1a",
            "BF4LnnJkqKrCEUFod0+FC35eQ+QGzSMOq5+j/8uedeRCv9N7M8Qi/nisulPgNPxu1wEdZer/ld46vHUdM+cADe0=",
            "iEMpHG1Vs8TVVWuk0E9AnlPoMwuQAk6dc+8BxqoQq80=",
        ),
    ),
    # m/44'/60'/0'/0/908
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x262b4B7F25CD47bfbE880f43A472252717732c6f",
            "0x9773de35b2e284fb6735588bef325561d8f8a932dcd762687d013fce6884b294bc137ecd2d1b5c37ab8759238ee948d93fa853f195fa6771b06c8f9ccbb69667",
            "438b793c5e127a66a4aae482b0ad49a3a3098c613a53361773e1c4bfe87bf221",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x262b4B7F25CD47bfbE880f43A472252717732c6f",
            "BJdz3jWy4oT7ZzVYi+8yVWHY+Kky3NdiaH0BP85ohLKUvBN+zS0bXDerh1kjjulI2T+oU/GV+mdxsGyPnMu2lmc=",
            "Q4t5PF4SemakquSCsK1Jo6MJjGE6UzYXc+HEv+h78iE=",
        ),
    ),
    # m/44'/60'/0'/0/909
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x8FAf0B182FaD95c8796b32FBc2b18a2e6979774c",
            "0x1b40faaa26959d0a484de1e0ebf0c50f9ccec52398fdc206551972014c89235c032d2ff734d7ae76521538ae95e59ac0761c89c821959a17c781ac14f94c9052",
            "bbf4b91ce62c38afa9f6957f4a104322d69aa4dd42ecd2fb65fdba8d4cb81e17",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x8FAf0B182FaD95c8796b32FBc2b18a2e6979774c",
            "BBtA+qomlZ0KSE3h4OvwxQ+czsUjmP3CBlUZcgFMiSNcAy0v9zTXrnZSFTiuleWawHYcicghlZoXx4GsFPlMkFI=",
            "u/S5HOYsOK+p9pV/ShBDItaapN1C7NL7Zf26jUy4Hhc=",
        ),
    ),
    # m/44'/60'/0'/0/910
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xA7BcaAa033bB3F6092481C98a6fA9942f09e6996",
            "0xfd800c36e2a68dfbcf9d9d9e6a8f7a310f218dd133a563be418358493603f0c1afed99674aedbee5314512c37245c7104a50814f8556e040675354f1683d1488",
            "46d3e4c0c9a2c5a0be7b2c42992d8099f0287f35960d1464b51f25e2cc575ba4",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xA7BcaAa033bB3F6092481C98a6fA9942f09e6996",
            "BP2ADDbipo37z52dnmqPejEPIY3RM6VjvkGDWEk2A/DBr+2ZZ0rtvuUxRRLDckXHEEpQgU+FVuBAZ1NU8Wg9FIg=",
            "RtPkwMmixaC+eyxCmS2AmfAofzWWDRRktR8l4sxXW6Q=",
        ),
    ),
    # m/44'/60'/0'/0/911
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xdc538EC357b60122156542FE77c7E485d141C25a",
            "0x58e1d6a5613105cecdaacd71a7a0ef6dac291761f64d90118d3f33bfcfadc7fa0361f136749cda4b51237fe20861089f82485dc0ab17d16084cb5d4107f88ef3",
            "b6fe3b38c92c10a533d817fb817d94ee0e135ada3adebb8adbec3f2912c37fc6",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xdc538EC357b60122156542FE77c7E485d141C25a",
            "BFjh1qVhMQXOzarNcaeg722sKRdh9k2QEY0/M7/Prcf6A2HxNnSc2ktRI3/iCGEIn4JIXcCrF9FghMtdQQf4jvM=",
            "tv47OMksEKUz2Bf7gX2U7g4TWto63ruK2+w/KRLDf8Y=",
        ),
    ),
    # m/44'/60'/0'/0/912
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xF9b96915d5B015E946D0c1e5E0A921e188893c0b",
            "0x8a1d457cb6f7e680e51098f8b126621997523b52b4612872875415f90924631aa13ec5152c11ca80091e3369f2b8a64a0873c9094516f741c1e4da6ac3f6c31c",
            "a79961a3389ba0f99e37cf7d15e9c359e65c14722da6294eba08b7c65d69f834",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xF9b96915d5B015E946D0c1e5E0A921e188893c0b",
            "BIodRXy29+aA5RCY+LEmYhmXUjtStGEocodUFfkJJGMaoT7FFSwRyoAJHjNp8rimSghzyQlFFvdBweTaasP2wxw=",
            "p5lhoziboPmeN899FenDWeZcFHItpilOugi3xl1p+DQ=",
        ),
    ),
    # m/44'/60'/0'/0/913
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x2B4d49197acF204C3139f88AC221727df55BC53c",
            "0x3e27004957e906f1a001df893a201ae5d7279d1990a36629536dc36b7afa052a37370502a6faaaf46b9441247be00618850a96bf225a459639a814289dca5051",
            "0f6a949f1009f3584a7c36456dfaba3bf452e2d7bebc8639ef9998c07ca154f8",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x2B4d49197acF204C3139f88AC221727df55BC53c",
            "BD4nAElX6QbxoAHfiTogGuXXJ50ZkKNmKVNtw2t6+gUqNzcFAqb6qvRrlEEke+AGGIUKlr8iWkWWOagUKJ3KUFE=",
            "D2qUnxAJ81hKfDZFbfq6O/RS4te+vIY575mYwHyhVPg=",
        ),
    ),
    # m/44'/60'/0'/0/914
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x4230CF3702e7B4D112A059D19A15D93A39AC86F9",
            "0x5d5a59339f2173611804712f124d173b4c94d9649f0c4a1a443d708924adfafe6abae1a7608eec2db174c89d1c33770aa9f25ed3c34569f51b09c1661f491bd2",
            "6e94d325264728b5d6b5c47befb89a3a6545f0c285b5d3dac216fc3e708d6677",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x4230CF3702e7B4D112A059D19A15D93A39AC86F9",
            "BF1aWTOfIXNhGARxLxJNFztMlNlknwxKGkQ9cIkkrfr+arrhp2CO7C2xdMidHDN3CqnyXtPDRWn1GwnBZh9JG9I=",
            "bpTTJSZHKLXWtcR777iaOmVF8MKFtdPawhb8PnCNZnc=",
        ),
    ),
    # m/44'/60'/0'/0/915
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x34c3CD53ef1Bc2952d1c539a105C3aE01D94a2D9",
            "0xcbd00fb8c9f73fd4aa3121e6fb1cefbc10af7c23ce5b5afcd393181dfa4b4e5d23bcd831f312fc5bf578ba2f47c1c518f771b3fa2c2c635862cecd5976cea55f",
            "f8df85aa4500b98c7f6c4e26301d4dc23ca3447560a09b41515ae265d0f7497f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x34c3CD53ef1Bc2952d1c539a105C3aE01D94a2D9",
            "BMvQD7jJ9z/UqjEh5vsc77wQr3wjzlta/NOTGB36S05dI7zYMfMS/Fv1eLovR8HFGPdxs/osLGNYYs7NWXbOpV8=",
            "+N+FqkUAuYx/bE4mMB1NwjyjRHVgoJtBUVriZdD3SX8=",
        ),
    ),
    # m/44'/60'/0'/0/916
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x5122035B17D64c1ea6397dFC9a8876E7e7948b2d",
            "0x4b031a03d5e7bf743a337b5195afaa5460b45c204cf643859b1f6b039df377678e28b8399b1897d2b8d0e49cb77635148c728b2e5a30ce187cd006e7e1f3f198",
            "0646e02cf41364d27fa9fbc4e8227aa1054e793cef9ae3ac9f006b64c1ac34b6",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x5122035B17D64c1ea6397dFC9a8876E7e7948b2d",
            "BEsDGgPV5790OjN7UZWvqlRgtFwgTPZDhZsfawOd83dnjii4OZsYl9K40OSct3Y1FIxyiy5aMM4YfNAG5+Hz8Zg=",
            "BkbgLPQTZNJ/qfvE6CJ6oQVOeTzvmuOsnwBrZMGsNLY=",
        ),
    ),
    # m/44'/60'/0'/0/917
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x7159B8859a152186e866a91813Fb2555602684A5",
            "0x3a84b75f53152b3351829e67a351a29d0f572d74cfb72750ce1f09417c785d059a040ffdbb794efc57c6fd5b16d94cbd46c224306596186bd60657536d4ef684",
            "3526c052d79c8de2660fc8b130be6aea4b6f02ba8e926569313b2ad073636ef1",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x7159B8859a152186e866a91813Fb2555602684A5",
            "BDqEt19TFSszUYKeZ6NRop0PVy10z7cnUM4fCUF8eF0FmgQP/bt5TvxXxv1bFtlMvUbCJDBllhhr1gZXU21O9oQ=",
            "NSbAUtecjeJmD8ixML5q6ktvArqOkmVpMTsq0HNjbvE=",
        ),
    ),
    # m/44'/60'/0'/0/918
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x0Ca2Aa7aC4DAf8e45e8D0029474D9E05FeB48435",
            "0xf25a570c47de56f3c54ea4ff0e2c42ea9a44614f7ff968fc4c9de1fdff17c4dd8d68a9e1c33eb3fc7d98ef839bade40d614165846836841c347be79656c12511",
            "9da76656f166bd385c973a0e488d3538de87cab878c6b3f772cd8b819a27d544",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x0Ca2Aa7aC4DAf8e45e8D0029474D9E05FeB48435",
            "BPJaVwxH3lbzxU6k/w4sQuqaRGFPf/lo/Eyd4f3/F8TdjWip4cM+s/x9mO+Dm63kDWFBZYRoNoQcNHvnllbBJRE=",
            "nadmVvFmvThclzoOSI01ON6Hyrh4xrP3cs2LgZon1UQ=",
        ),
    ),
    # m/44'/60'/0'/0/919
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xFf4Cbe5Eb52102981938cBc8F165b41213853AE1",
            "0x012fccfccf2b65ed8622424970ff3e3c436972266bd6965feab937b31b17671b2f302ba89f963cafbc982f09cbb3e1ffa35a26165018f284ae773dd1da7f19a6",
            "691ba666eb60122c45e98826571614335f919f3542b0f8d833380ccebb577e8a",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xFf4Cbe5Eb52102981938cBc8F165b41213853AE1",
            "BAEvzPzPK2XthiJCSXD/PjxDaXIma9aWX+q5N7MbF2cbLzArqJ+WPK+8mC8Jy7Ph/6NaJhZQGPKErnc90dp/GaY=",
            "aRumZutgEixF6YgmVxYUM1+RnzVCsPjYMzgMzrtXfoo=",
        ),
    ),
    # m/44'/60'/0'/0/920
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x9Eb50BfC59eB833B54c47405dbc026AA82827D90",
            "0x8e522365060f50a9f23ba730032a120d5ce4dea6d5ced9239f8970924e34ec500f95026551ff17935835c59e2aa3d89e0a54235040eab1cfadb899c125ae15da",
            "89ba919aa978a9238af29379904b66e2a9d486e7f4af980251d825e3595f8f49",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x9Eb50BfC59eB833B54c47405dbc026AA82827D90",
            "BI5SI2UGD1Cp8junMAMqEg1c5N6m1c7ZI5+JcJJONOxQD5UCZVH/F5NYNcWeKqPYngpUI1BA6rHPrbiZwSWuFdo=",
            "ibqRmql4qSOK8pN5kEtm4qnUhuf0r5gCUdgl41lfj0k=",
        ),
    ),
    # m/44'/60'/0'/0/921
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x3A3ed5Fc88B956870dE320EB89c0183606c2E874",
            "0x130180ed0f4b2617b698d55ca4525b059fef27c39b7dcd8b81b3691cfe5a9b03221cc1f4eeed2dee232259dfb969765ebcd4c8f639dbf226c994a62961ab1acc",
            "0de8acc3282720fc76cd19d991ecd8d3ed3f619cbffe45bd0c4cdd83ca64fb91",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x3A3ed5Fc88B956870dE320EB89c0183606c2E874",
            "BBMBgO0PSyYXtpjVXKRSWwWf7yfDm33Ni4GzaRz+WpsDIhzB9O7tLe4jIlnfuWl2XrzUyPY52/ImyZSmKWGrGsw=",
            "DeiswygnIPx2zRnZkezY0+0/YZy//kW9DEzdg8pk+5E=",
        ),
    ),
    # m/44'/60'/0'/0/922
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x94891c73d0C47E0b9ae1197FC9AA212D56855922",
            "0xd81f10f2b0ccfce60ebd432bd3648ef0e6b648fead0bde2cf095b32d8f40f779a2a787f8742dc1c75880daba32319bd80370d70b6745cdea369dd825deaab0df",
            "459a722f939a93a9e5642203769b3b9111c2617e3266999f50bb39780df52243",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x94891c73d0C47E0b9ae1197FC9AA212D56855922",
            "BNgfEPKwzPzmDr1DK9NkjvDmtkj+rQveLPCVsy2PQPd5oqeH+HQtwcdYgNq6MjGb2ANw1wtnRc3qNp3YJd6qsN8=",
            "RZpyL5Oak6nlZCIDdps7kRHCYX4yZpmfULs5eA31IkM=",
        ),
    ),
    # m/44'/60'/0'/0/923
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x8824636002cb0a9E2100F84FD7dFc1fC237A4Eab",
            "0x6984db85a11221694a71e449635e4298d3a4498cc7f76737d44986a1a4ee307ce70104dfd2654c883df11e9591b4227e38618c0dce3b42c47333411eb13b295d",
            "823c4aafd980071760bfc2a5ea13e3f747ec8381e804b934566a4239e1487322",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x8824636002cb0a9E2100F84FD7dFc1fC237A4Eab",
            "BGmE24WhEiFpSnHkSWNeQpjTpEmMx/dnN9RJhqGk7jB85wEE39JlTIg98R6VkbQifjhhjA3OO0LEczNBHrE7KV0=",
            "gjxKr9mABxdgv8Kl6hPj90fsg4HoBLk0VmpCOeFIcyI=",
        ),
    ),
    # m/44'/60'/0'/0/924
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x4B9C69c47DD6Dc0Fe3A40b69409D5ba208AF5777",
            "0x2f71d0ea38155cddaa96eaed031f5858cbdc25152d2943eb3e867d488d4eae94a1ea4916888e9fafe52e154ccc573b59fbd8cac65022e7cb328923eec773de29",
            "df14cb6dfec4d06e1d3e7912cb7f96f53980ff95a16825e120dab8d8f3ce1d6d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x4B9C69c47DD6Dc0Fe3A40b69409D5ba208AF5777",
            "BC9x0Oo4FVzdqpbq7QMfWFjL3CUVLSlD6z6GfUiNTq6UoepJFoiOn6/lLhVMzFc7WfvYysZQIufLMokj7sdz3ik=",
            "3xTLbf7E0G4dPnkSy3+W9TmA/5WhaCXhINq42PPOHW0=",
        ),
    ),
    # m/44'/60'/0'/0/925
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x40b3782DA658Be8B24178FD73ECccAC15DEEd9E3",
            "0xf8ff13e17cf5575af550f69cbbde8852cb8af549b79eecd032efd78dbf955db99a689468e0902b84fc5a486e65d627191d110359903ad3427e310d4a381c76ec",
            "dc0f9ec5b5f348f73f91e31dc0146ea6fc277df0c7e15e08a34a3a04bbb830ec",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x40b3782DA658Be8B24178FD73ECccAC15DEEd9E3",
            "BPj/E+F89Vda9VD2nLveiFLLivVJt57s0DLv142/lV25mmiUaOCQK4T8WkhuZdYnGR0RA1mQOtNCfjENSjgcduw=",
            "3A+exbXzSPc/keMdwBRupvwnffDH4V4Io0o6BLu4MOw=",
        ),
    ),
    # m/44'/60'/0'/0/926
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xB4E082012F1E18198Ba2D2D50C0b461AEb0Ae566",
            "0xf0cf1ece1b44a3d3847d4f08b669740b342978c59d83c3acfe2ad2514cd0572bda71b028e1b3f1eb10a94fe30afaccb4059fa6694775b97cd478248d0f59ad3c",
            "54dc7d2068181aa97ae436f99bca1d6f088ce62503a2996a36645b139f882668",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xB4E082012F1E18198Ba2D2D50C0b461AEb0Ae566",
            "BPDPHs4bRKPThH1PCLZpdAs0KXjFnYPDrP4q0lFM0Fcr2nGwKOGz8esQqU/jCvrMtAWfpmlHdbl81HgkjQ9ZrTw=",
            "VNx9IGgYGql65Db5m8odbwiM5iUDoplqNmRbE5+IJmg=",
        ),
    ),
    # m/44'/60'/0'/0/927
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x88993627eced1BAD48B7f96e6527c5CAc7CB725F",
            "0x122c138f98d68495fe03ea9704bf20b2259121548ce0bdd10679f541d0d176e88a26a7d45c0f2013f1b34e9b6798c287c2180f8b42a14cf83bb38dc2007357c6",
            "9523ad81fa8a0f951417337ca08c4c6b947453b05269b94bdd29f815a9f827b2",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x88993627eced1BAD48B7f96e6527c5CAc7CB725F",
            "BBIsE4+Y1oSV/gPqlwS/ILIlkSFUjOC90QZ59UHQ0Xboiian1FwPIBPxs06bZ5jCh8IYD4tCoUz4O7ONwgBzV8Y=",
            "lSOtgfqKD5UUFzN8oIxMa5R0U7BSablL3Sn4Fan4J7I=",
        ),
    ),
    # m/44'/60'/0'/0/928
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x577368b23372Dfb938856b8640C65362b64d495c",
            "0x49675ac16ee8da449ce0a6368b91a1fd01841f6a3f5a9fee15352f60153a393bf30e137bbb8352356946af401dff51214d2f03e0c51df954f3313c0950123f27",
            "f3202415d7305d56955e8d863f5f53fc49dd3440db98b9ca1a64ca5067190b19",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x577368b23372Dfb938856b8640C65362b64d495c",
            "BElnWsFu6NpEnOCmNouRof0BhB9qP1qf7hU1L2AVOjk78w4Te7uDUjVpRq9AHf9RIU0vA+DFHflU8zE8CVASPyc=",
            "8yAkFdcwXVaVXo2GP19T/EndNEDbmLnKGmTKUGcZCxk=",
        ),
    ),
    # m/44'/60'/0'/0/929
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xc75e701B8Bb3e433345AEf7fB5EF6F0DC38a1111",
            "0x1633ec076bde04f2ba2d93503ef0efc320da5ebaeb23fba51490bc53626d6bb9e0daba74de6546d9f53afeaf298feec4faf7a5614a36e66a803842f2f43eafa2",
            "32f54f9d0c30f911b027584ee5c5f39099d6a0a62246c3d171824e92f89df5fd",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xc75e701B8Bb3e433345AEf7fB5EF6F0DC38a1111",
            "BBYz7Adr3gTyui2TUD7w78Mg2l666yP7pRSQvFNibWu54Nq6dN5lRtn1Ov6vKY/uxPr3pWFKNuZqgDhC8vQ+r6I=",
            "MvVPnQww+RGwJ1hO5cXzkJnWoKYiRsPRcYJOkvid9f0=",
        ),
    ),
    # m/44'/60'/0'/0/930
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xF5ca1CA60FB5F430562b86ac06eA990F60606c38",
            "0xdd83d4a89d4734f31c962027ae454a69a600bc333ee054eb6355e9d4d2e94e7553688ee1a349ae201a358096ed3ce14ced8531fe4230c050e8b892a5e992757b",
            "4b0a5974fb3d37b1059dfa01fc9577da815f3384956b7c5ed9ae897e0abcc6c5",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xF5ca1CA60FB5F430562b86ac06eA990F60606c38",
            "BN2D1KidRzTzHJYgJ65FSmmmALwzPuBU62NV6dTS6U51U2iO4aNJriAaNYCW7TzhTO2FMf5CMMBQ6LiSpemSdXs=",
            "SwpZdPs9N7EFnfoB/JV32oFfM4SVa3xe2a6Jfgq8xsU=",
        ),
    ),
    # m/44'/60'/0'/0/931
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xa1F81c74F631c33570Bc88B6DcAaDC8E8da24BCC",
            "0x2af94fd33580bbacb6ba4624a58174967ad8ee712fac9ca3a56fd686ffce771f48c5c169cff8f13a8ea9af3a622f15920d25e9cfd45dacb10f842693c97c181c",
            "0f3b5ede0d3bcb5e43f65f1112d51fa7897553352aef1a3972de906279cf34f5",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xa1F81c74F631c33570Bc88B6DcAaDC8E8da24BCC",
            "BCr5T9M1gLustrpGJKWBdJZ62O5xL6yco6Vv1ob/zncfSMXBac/48TqOqa86Yi8Vkg0l6c/UXayxD4Qmk8l8GBw=",
            "Dzte3g07y15D9l8REtUfp4l1UzUq7xo5ct6QYnnPNPU=",
        ),
    ),
    # m/44'/60'/0'/0/932
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x9A4F4d5C0FABa848fF724D6F9317742a39d932F4",
            "0x5b931fcbda77f2f88983675b76f124fd124b0c3d634db9b1430e0308eb4f757b823c2d1c8d69a65d52286a4c8509b67af84d4081b25d44d6094e7a36b35be20b",
            "b27e7eb97a8ef07ba4f0497a212c25341cce1f22ee9faa8de2bd24807e6f138b",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x9A4F4d5C0FABa848fF724D6F9317742a39d932F4",
            "BFuTH8vad/L4iYNnW3bxJP0SSww9Y025sUMOAwjrT3V7gjwtHI1ppl1SKGpMhQm2evhNQIGyXUTWCU56NrNb4gs=",
            "sn5+uXqO8Huk8El6ISwlNBzOHyLun6qN4r0kgH5vE4s=",
        ),
    ),
    # m/44'/60'/0'/0/933
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x76E5836ADddaA16167481a5b4a3a95eA510d904C",
            "0x823f80a21b926afa76c8bb951337441f8b5187054750c006c2687f9936a7c1c35fd98f953cd2e791648e0621e747e9515e097965cd45ccab33b3db1d5be65127",
            "ab92c6908603a0a15c0f8c604a3383b145e1a543ddf86192965a56eb5cd938e7",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x76E5836ADddaA16167481a5b4a3a95eA510d904C",
            "BII/gKIbkmr6dsi7lRM3RB+LUYcFR1DABsJof5k2p8HDX9mPlTzS55FkjgYh50fpUV4JeWXNRcyrM7PbHVvmUSc=",
            "q5LGkIYDoKFcD4xgSjODsUXhpUPd+GGSllpW61zZOOc=",
        ),
    ),
    # m/44'/60'/0'/0/934
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xe7552351E5907E115Fe0FafCc68D8ad886787A72",
            "0x75c1e7b8b8e10e78bdb64040b07eeb8e662f40a6a9dd1c44f3f617c590bc70133659a3d82b207e7dc9ef773c6c4eddfd8c5749261834dd605fb378e39b12b9c3",
            "0edf70d59958e09b63dea2d3fe87cedeb49a1b0ae8d616ab78b307777263e980",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xe7552351E5907E115Fe0FafCc68D8ad886787A72",
            "BHXB57i44Q54vbZAQLB+645mL0Cmqd0cRPP2F8WQvHATNlmj2Csgfn3J73c8bE7d/YxXSSYYNN1gX7N445sSucM=",
            "Dt9w1ZlY4Jtj3qLT/ofO3rSaGwro1hareLMHd3Jj6YA=",
        ),
    ),
    # m/44'/60'/0'/0/935
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x93E536234637bb1c7D831E7e7f4C53573400D44f",
            "0x7c6d8d6cf1dad1a93eec8485d4725cf46141b1f5060e22f8a9b2a8190f284335f63168961d45f9daa5fd803c574f32fb20e366dd5769cd916877b3a666b8119e",
            "256f84d89eb01de70a469a0d498a54493fb276e1a26071c3df33e5f54b9908b7",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x93E536234637bb1c7D831E7e7f4C53573400D44f",
            "BHxtjWzx2tGpPuyEhdRyXPRhQbH1Bg4i+KmyqBkPKEM19jFolh1F+dql/YA8V08y+yDjZt1Xac2RaHezpma4EZ4=",
            "JW+E2J6wHecKRpoNSYpUST+yduGiYHHD3zPl9UuZCLc=",
        ),
    ),
    # m/44'/60'/0'/0/936
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xD2142af8F41F525C2e655ebedA2908c394E0F5FC",
            "0x310d84e06af620e04de9314569608b59c9c938591504c1730aceb9fe13bb96b98f7cb8fb26f7074c30b3b9d989ef8b23764b87063e764478f1bb1bc53508e795",
            "cbd25274c62da3521b0e61e405db30bfadd3ddc993f39f41997b50d017e1a6a4",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xD2142af8F41F525C2e655ebedA2908c394E0F5FC",
            "BDENhOBq9iDgTekxRWlgi1nJyThZFQTBcwrOuf4Tu5a5j3y4+yb3B0wws7nZie+LI3ZLhwY+dkR48bsbxTUI55U=",
            "y9JSdMYto1IbDmHkBdswv63T3cmT859BmXtQ0BfhpqQ=",
        ),
    ),
    # m/44'/60'/0'/0/937
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x1ae8345d30E4E4A6911e43512F2A273BF28c3E1B",
            "0x44f2e6140c446b5e0f88e6d78c625d80767de635847490356ab1056b88c1e7301f8c45e7da4bf8dba0ab48bd0fec68ae5414acd4ed24ee14818a86b03f6e0896",
            "c730064641b317f42ba60d505ada4a733dd159f51713b9773adf754688cc8284",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x1ae8345d30E4E4A6911e43512F2A273BF28c3E1B",
            "BETy5hQMRGteD4jm14xiXYB2feY1hHSQNWqxBWuIwecwH4xF59pL+Nugq0i9D+xorlQUrNTtJO4UgYqGsD9uCJY=",
            "xzAGRkGzF/Qrpg1QWtpKcz3RWfUXE7l3Ot91RojMgoQ=",
        ),
    ),
    # m/44'/60'/0'/0/938
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x1A8b5B4080CB675C5F62359d23d6d4B12BeE612a",
            "0x622f3b9f2a6f506415a21bd33049d0dc9751dcf4c222c30d7fbe4537c188d45a4f2d6f8092be91341c07fc7ce71c1b7e903f3793721d721638d619d146523232",
            "aa04c1a8e0a3b4035ef74ead5e09d1c8e19eb3fb476304a373a3b2f257e8228f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x1A8b5B4080CB675C5F62359d23d6d4B12BeE612a",
            "BGIvO58qb1BkFaIb0zBJ0NyXUdz0wiLDDX++RTfBiNRaTy1vgJK+kTQcB/x85xwbfpA/N5NyHXIWONYZ0UZSMjI=",
            "qgTBqOCjtANe906tXgnRyOGes/tHYwSjc6Oy8lfoIo8=",
        ),
    ),
    # m/44'/60'/0'/0/939
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x5A7C51EE2a32fF76903A17Fde6246334DaAd4E6a",
            "0x3937835258358f25a47d7190ad79387f07c17d1651c09bf56908f58eb7bbd056f3af408dc9072e86e898dd98041ac70a875940b9dc35d7aab178df2115d5afe0",
            "2305ee3d4325dee49f20cd74d6cd6b87cbf48fc4513abadabffa1b63a0a60069",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x5A7C51EE2a32fF76903A17Fde6246334DaAd4E6a",
            "BDk3g1JYNY8lpH1xkK15OH8HwX0WUcCb9WkI9Y63u9BW869AjckHLobomN2YBBrHCodZQLncNdeqsXjfIRXVr+A=",
            "IwXuPUMl3uSfIM101s1rh8v0j8RROrrav/obY6CmAGk=",
        ),
    ),
    # m/44'/60'/0'/0/940
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x2ED2D22A41F447ca9a297A0cFb681E7Bb92236B1",
            "0xdba39da44feeabf1fc59e4fe23c3dd54177ca355e36a761c29562ec4cfb59e9123ad82ec5ec10d9e72f7106ef394969d158ff6fe116cb499808a5784ee55502e",
            "bd760ba53ff78f56a7c8def13b5f73eb10046dc13c1c3b156021b1cc29d68885",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x2ED2D22A41F447ca9a297A0cFb681E7Bb92236B1",
            "BNujnaRP7qvx/Fnk/iPD3VQXfKNV42p2HClWLsTPtZ6RI62C7F7BDZ5y9xBu85SWnRWP9v4RbLSZgIpXhO5VUC4=",
            "vXYLpT/3j1anyN7xO19z6xAEbcE8HDsVYCGxzCnWiIU=",
        ),
    ),
    # m/44'/60'/0'/0/941
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xD5f4567D1A73E7328dEF461AD5C2c2a1AD0db688",
            "0x66c5ebd6641c3ca5ec8f3da048cfc3361bcf349228b8d2a1f9c070708950219fcf67cb5a0cf6f5749210895d6d4658f242a5488786bdae2441b6d57c91da71f9",
            "08698d0e1009361d3df92913e72a89b12bd36950b41c24dd3e6001ada34446f3",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xD5f4567D1A73E7328dEF461AD5C2c2a1AD0db688",
            "BGbF69ZkHDyl7I89oEjPwzYbzzSSKLjSofnAcHCJUCGfz2fLWgz29XSSEIldbUZY8kKlSIeGva4kQbbVfJHacfk=",
            "CGmNDhAJNh09+SkT5yqJsSvTaVC0HCTdPmABraNERvM=",
        ),
    ),
    # m/44'/60'/0'/0/942
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xf2cb649a7358A481f7d571E90352A5EcC1455A61",
            "0xf123ecc8f7dc5898ccb6994ca3be2dd22a7a92f56f77fe2f82cb83da33d8f608bcb63e5ff6bc60f1318412599a7452edbf00d1ebc8d426403c099ae6d34c836a",
            "735af0dbb88752dd5c9bbdb49c3ee66cb1e6a96b2489c0ab35d68a1f74f0eb90",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xf2cb649a7358A481f7d571E90352A5EcC1455A61",
            "BPEj7Mj33FiYzLaZTKO+LdIqepL1b3f+L4LLg9oz2PYIvLY+X/a8YPExhBJZmnRS7b8A0evI1CZAPAma5tNMg2o=",
            "c1rw27iHUt1cm720nD7mbLHmqWskicCrNdaKH3Tw65A=",
        ),
    ),
    # m/44'/60'/0'/0/943
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x21B30aB868c879aA3E0E07Ef610Af14E4907698b",
            "0xc338555d5ca66e72784d870c009bca3e197f7f8a6007621d45b02556975ee09826317da4e7ad43cd6401747fa0ef184ab41805375091bc071d459a79f1ee008c",
            "80e308749cc2ab23b15a413e562dff2d3533255a38a719e9d20e96d8f1dec0a2",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x21B30aB868c879aA3E0E07Ef610Af14E4907698b",
            "BMM4VV1cpm5yeE2HDACbyj4Zf3+KYAdiHUWwJVaXXuCYJjF9pOetQ81kAXR/oO8YSrQYBTdQkbwHHUWaefHuAIw=",
            "gOMIdJzCqyOxWkE+Vi3/LTUzJVo4pxnp0g6W2PHewKI=",
        ),
    ),
    # m/44'/60'/0'/0/944
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xcee529614B26718aD1D9Ca570f1bFE860CAbDaB2",
            "0xa212e72f1c1b69e9ba6550aae2d3df3f55e342f0a7bf59f5f286e6581d7790e5e7f676c474da2fa21da6a16c5b182a5f49b832f48f21c9bbdcc770cea478bdd2",
            "f57e65d139d89f01cbab3836cefc5e8d9d9d57e188fdcf9d9709a54bba6c2e30",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xcee529614B26718aD1D9Ca570f1bFE860CAbDaB2",
            "BKIS5y8cG2npumVQquLT3z9V40Lwp79Z9fKG5lgdd5Dl5/Z2xHTaL6IdpqFsWxgqX0m4MvSPIcm73MdwzqR4vdI=",
            "9X5l0TnYnwHLqzg2zvxejZ2dV+GI/c+dlwmlS7psLjA=",
        ),
    ),
    # m/44'/60'/0'/0/945
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x95ef46feB1269C82Fd854d5383b24eC4de9044Ba",
            "0x4eab848c25f7fffc64553225f36c736bde661367041e63fc171335985fc54652c8941e92ce60b37abbc9f8f4c004c3f95ca0993950bb8f434f260a56f462888f",
            "6278bc8996f3576f923df3d996e5026ff858e8ee4911b65283b64fe39cc4a5d8",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x95ef46feB1269C82Fd854d5383b24eC4de9044Ba",
            "BE6rhIwl9//8ZFUyJfNsc2veZhNnBB5j/BcTNZhfxUZSyJQeks5gs3q7yfj0wATD+VygmTlQu49DTyYKVvRiiI8=",
            "Yni8iZbzV2+SPfPZluUCb/hY6O5JEbZSg7ZP45zEpdg=",
        ),
    ),
    # m/44'/60'/0'/0/946
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x7C07d8002BD78637A57BBf01b4C2dd6A79C5B1DE",
            "0x9880917542ace2bd2036555f9657eccf5c8d6cd2b5afc0615dadff7513605f06d96be2089fed66d0cf5913f98b41cea240ff7fae1fa6d62ee82c6d707e8e4432",
            "deacae4a3b30e4690643adce54b75ccd1c08c61e9a540f56c5baeaef6b223445",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x7C07d8002BD78637A57BBf01b4C2dd6A79C5B1DE",
            "BJiAkXVCrOK9IDZVX5ZX7M9cjWzSta/AYV2t/3UTYF8G2WviCJ/tZtDPWRP5i0HOokD/f64fptYu6CxtcH6ORDI=",
            "3qyuSjsw5GkGQ63OVLdczRwIxh6aVA9Wxbrq72siNEU=",
        ),
    ),
    # m/44'/60'/0'/0/947
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xfd97654C419a5bBb9059a00D1AFAaaBc082E6c46",
            "0xb16e7ab66f0d05bdbf3948fa27afeffd7a0cedc5645151394083e92fbc9ad8feb0824321e63824ea985f0366ad20cdf2077694dd72f8b90de84c00d4aed5c351",
            "a018f288d68a4c8189eca3198e06678d75572a232eab1698d85d2cdbb7f77ba5",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xfd97654C419a5bBb9059a00D1AFAaaBc082E6c46",
            "BLFuerZvDQW9vzlI+iev7/16DO3FZFFROUCD6S+8mtj+sIJDIeY4JOqYXwNmrSDN8gd2lN1y+LkN6EwA1K7Vw1E=",
            "oBjyiNaKTIGJ7KMZjgZnjXVXKiMuqxaY2F0s27f3e6U=",
        ),
    ),
    # m/44'/60'/0'/0/948
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xEf7Fb17B5bB6a322A5dC141eF796E915173479e8",
            "0x3c64cf7b7955d80c39904e450357d57106baee6136c666c65cb97c9bacda742cdf9334bd04de274aae10fc39c847fe5e0aea99ac6691ee157c3c22071d2f1549",
            "8b6cbd2707bb8e6891f537663991ec37eb227df6d3fe96f3ebdd01f2b82bd80d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xEf7Fb17B5bB6a322A5dC141eF796E915173479e8",
            "BDxkz3t5VdgMOZBORQNX1XEGuu5hNsZmxly5fJus2nQs35M0vQTeJ0quEPw5yEf+Xgrqmaxmke4VfDwiBx0vFUk=",
            "i2y9Jwe7jmiR9TdmOZHsN+siffbT/pbz690B8rgr2A0=",
        ),
    ),
    # m/44'/60'/0'/0/949
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x97Cb0cFD09C1e098b86183C1DbA7FE512011F035",
            "0xff2967a11a349730ca295b32c5cac74cd618872f5d45657c2dfc9726a22f2035de6ef2997de1ae4909cb55151914df58f788c07b5c5c27c3fd8c74cd463cf125",
            "5a78f0c3783ced8ea42d778bcb889660f5a167db78b4bd316f97b50d8be524c3",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x97Cb0cFD09C1e098b86183C1DbA7FE512011F035",
            "BP8pZ6EaNJcwyilbMsXKx0zWGIcvXUVlfC38lyaiLyA13m7ymX3hrkkJy1UVGRTfWPeIwHtcXCfD/Yx0zUY88SU=",
            "Wnjww3g87Y6kLXeLy4iWYPWhZ9t4tL0xb5e1DYvlJMM=",
        ),
    ),
    # m/44'/60'/0'/0/950
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xfB0e5f60e587C0855259da1730770CB4952DF201",
            "0x56f1cdce1ff90ea15613b9361db995ac1bd35417a2f66388c433d87696c789c4be9f4a33c867a8a30f8b7ec1ca05dc6dc65f949a2aa33d363d279bbba8d5907c",
            "6129e2df4cd9966e1d4f72ae69b2cb5bc2c887392a8927599fa7fb32ca661ad2",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xfB0e5f60e587C0855259da1730770CB4952DF201",
            "BFbxzc4f+Q6hVhO5Nh25lawb01QXovZjiMQz2HaWx4nEvp9KM8hnqKMPi37BygXcbcZflJoqoz02PSebu6jVkHw=",
            "YSni30zZlm4dT3KuabLLW8LIhzkqiSdZn6f7MspmGtI=",
        ),
    ),
    # m/44'/60'/0'/0/951
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xfF881E45FAf760f6A033C14e3f9854A851cE2686",
            "0xdbeb26b02e39aa86f0ee114f4129cebab4f3606d42e6727752cbb2574cbe618cb6e268a5f57062e6fcb9f7a953fe2436983c6c98776743ba15af2f7959338ea8",
            "9341b25e9e5d8af085844a1cae5585440da498dca15168e5b5c02bb98cb65258",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xfF881E45FAf760f6A033C14e3f9854A851cE2686",
            "BNvrJrAuOaqG8O4RT0Epzrq082BtQuZyd1LLsldMvmGMtuJopfVwYub8ufepU/4kNpg8bJh3Z0O6Fa8veVkzjqg=",
            "k0GyXp5divCFhEocrlWFRA2kmNyhUWjltcAruYy2Ulg=",
        ),
    ),
    # m/44'/60'/0'/0/952
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x54b3aac05258f1a217705566297B170023FfD365",
            "0x5b840ae29eb30469c85b651d48888b2a09ae295618124e28f6e73a5b0aac2b57f0d3064d6c76506a21c8436f1a7816811766702a695ba94027b141ef15eb7d93",
            "7be13ad48be4fa16c6b3464773f2ea82171367785ced0fb410f55f77930c13f2",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x54b3aac05258f1a217705566297B170023FfD365",
            "BFuECuKeswRpyFtlHUiIiyoJrilWGBJOKPbnOlsKrCtX8NMGTWx2UGohyENvGngWgRdmcCppW6lAJ7FB7xXrfZM=",
            "e+E61Ivk+hbGs0ZHc/LqghcTZ3hc7Q+0EPVfd5MME/I=",
        ),
    ),
    # m/44'/60'/0'/0/953
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x05555a59D412b2263E1FdAD62bf6F0E5B259a96C",
            "0xfe65c80d5634095bbce385b598514ee37fc02b9addc8e7090c3554c6afbc33a61c7317dbc65e212a40bebc80ab63363bbd85d4dac6ed03943817d19d891cd0e9",
            "aaea67ca59f8913f1eb7a6a3761f066ee305704798f1a0c94a0e9885d55bfcb7",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x05555a59D412b2263E1FdAD62bf6F0E5B259a96C",
            "BP5lyA1WNAlbvOOFtZhRTuN/wCua3cjnCQw1VMavvDOmHHMX28ZeISpAvryAq2M2O72F1NrG7QOUOBfRnYkc0Ok=",
            "qupnyln4kT8et6ajdh8GbuMFcEeY8aDJSg6YhdVb/Lc=",
        ),
    ),
    # m/44'/60'/0'/0/954
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xf0B378554363aA8E021274243BE6ea62aFB0c944",
            "0x4ed062e1fb50d02c4ce9b8633820c65721419be75490a45dfffac892b9d675358a2d1321c62ba13889a86593e931391a793a6969787c4f30fab5fac5af2ac64e",
            "aaff7a80f93e3f4f913b0c295c110e73f42f79c94d540dcf8de1ecb01c440630",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xf0B378554363aA8E021274243BE6ea62aFB0c944",
            "BE7QYuH7UNAsTOm4YzggxlchQZvnVJCkXf/6yJK51nU1ii0TIcYroTiJqGWT6TE5Gnk6aWl4fE8w+rX6xa8qxk4=",
            "qv96gPk+P0+ROwwpXBEOc/QveclNVA3PjeHssBxEBjA=",
        ),
    ),
    # m/44'/60'/0'/0/955
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x152ABcCb4966ccF57Dd74c43105f8f470c22678e",
            "0xfc6379d570c4dcde680f2135a13dd52b2753280a7189adfd2996272643b9b17abe81811602a7065a915dca13ed75ca16114f70f758d441af68dd4f705c7b3fcd",
            "55c8d194514e2005455cd28841897670cd6ff78aef09c19da0daf130a91741f4",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x152ABcCb4966ccF57Dd74c43105f8f470c22678e",
            "BPxjedVwxNzeaA8hNaE91SsnUygKcYmt/SmWJyZDubF6voGBFgKnBlqRXcoT7XXKFhFPcPdY1EGvaN1PcFx7P80=",
            "VcjRlFFOIAVFXNKIQYl2cM1v94rvCcGdoNrxMKkXQfQ=",
        ),
    ),
    # m/44'/60'/0'/0/956
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xFe921B6B9721391d51f0d8575653e8adDdF1FCa0",
            "0x029c91abef23b6f648cc17a89348ff01b9b896721355ad8fe25feb4b5f6264d621f7cfa9f7baff786c65ce220aabe71fbd7f1d6000593951fcbe7f1f950982f9",
            "e45dbbdc5f331495c7a256788adf36a890bd0e058d1e0fcb8e63e934f1d9007d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xFe921B6B9721391d51f0d8575653e8adDdF1FCa0",
            "BAKckavvI7b2SMwXqJNI/wG5uJZyE1Wtj+Jf60tfYmTWIffPqfe6/3hsZc4iCqvnH71/HWAAWTlR/L5/H5UJgvk=",
            "5F273F8zFJXHolZ4it82qJC9DgWNHg/LjmPpNPHZAH0=",
        ),
    ),
    # m/44'/60'/0'/0/957
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x2062d1A0cC4c3288cDB7198041f893F4c423fE92",
            "0x5a8c1fa95f887bea9f56d710a2c0dac41b7f00fa4b8a6eea3f1f91e2a85996b2c3c16717caf43bb7f263220c372e123d83544489ff0edd2e0b8789e3cb5c688b",
            "d8b8d3eea6dff48bd64396251d0f157afd3f7a7fa46073fe162c2d96e032e751",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x2062d1A0cC4c3288cDB7198041f893F4c423fE92",
            "BFqMH6lfiHvqn1bXEKLA2sQbfwD6S4pu6j8fkeKoWZayw8FnF8r0O7fyYyIMNy4SPYNURIn/Dt0uC4eJ48tcaIs=",
            "2LjT7qbf9IvWQ5YlHQ8Vev0/en+kYHP+FiwtluAy51E=",
        ),
    ),
    # m/44'/60'/0'/0/958
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x920484E700e693e5398D5f6F2B17f114b3BE9a9F",
            "0x1436de546efc216e656fe0320c8d00a2eb00c2ee18fb097654c84119ed8a1584d0c7130b92871720e60403cf78485b4e34d5df14b57f909d1bc1644c23abc3d1",
            "468c77c69d219e99b52c74cf7b4d1c0b243dabe91d549a1bf8eea48e01fdabd4",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x920484E700e693e5398D5f6F2B17f114b3BE9a9F",
            "BBQ23lRu/CFuZW/gMgyNAKLrAMLuGPsJdlTIQRntihWE0McTC5KHFyDmBAPPeEhbTjTV3xS1f5CdG8FkTCOrw9E=",
            "Rox3xp0hnpm1LHTPe00cCyQ9q+kdVJob+O6kjgH9q9Q=",
        ),
    ),
    # m/44'/60'/0'/0/959
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x239b13d71EF0f81efABe17c5B78f10A728f4Be32",
            "0x182f4058dad0425888639d925e3ffc3eee389ce94b11f62ce3d43964c1f5db1d57302a0745b9b9ee9b1160b1077ff41665fd7d8a046af690922488143c3a2dc6",
            "1af7e78259748106afeb6060b1a6386e1186be749920b63a696d480d7befd352",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x239b13d71EF0f81efABe17c5B78f10A728f4Be32",
            "BBgvQFja0EJYiGOdkl4//D7uOJzpSxH2LOPUOWTB9dsdVzAqB0W5ue6bEWCxB3/0FmX9fYoEavaQkiSIFDw6LcY=",
            "Gvfngll0gQav62BgsaY4bhGGvnSZILY6aW1IDXvv01I=",
        ),
    ),
    # m/44'/60'/0'/0/960
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x422d19ab5B68825377286b7Ac22880466508466E",
            "0x0aedf6c1e447ea527e018f64923d8060639381604ac8d0967d9c1857d5b3fb624017606ee23c0c03a642d62bcc3c603c6456159639b50ea255f17ee33ed1b6d0",
            "75a56ab58e910ce129ab701781c4e58763e932d37c7ed36cf54b6232c4ce2268",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x422d19ab5B68825377286b7Ac22880466508466E",
            "BArt9sHkR+pSfgGPZJI9gGBjk4FgSsjQln2cGFfVs/tiQBdgbuI8DAOmQtYrzDxgPGRWFZY5tQ6iVfF+4z7RttA=",
            "daVqtY6RDOEpq3AXgcTlh2PpMtN8ftNs9UtiMsTOImg=",
        ),
    ),
    # m/44'/60'/0'/0/961
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x1D7CC9dF495301Ddf0F1fAE1381dfe91225A3D7E",
            "0x75e0e1b031ed8878c10ffb1d08a505d35dba5b9fece17c26409d6d26092b852f65f9825182494819344dacd3fc132f99a0188a349b50ed399928849ccd0ce82f",
            "b1badf38b122b1a85be7961e5c73956b6c6c38a8eceaaf414cf8a8912ff09b68",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x1D7CC9dF495301Ddf0F1fAE1381dfe91225A3D7E",
            "BHXg4bAx7Yh4wQ/7HQilBdNduluf7OF8JkCdbSYJK4UvZfmCUYJJSBk0TazT/BMvmaAYijSbUO05mSiEnM0M6C8=",
            "sbrfOLEisahb55YeXHOVa2xsOKjs6q9BTPiokS/wm2g=",
        ),
    ),
    # m/44'/60'/0'/0/962
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x2a103c39E6AF06bfFad79efd91c001e37d6AD87B",
            "0xfde7aae2830aaf5d1453a4884bfa54fee9b95cb486e5b0f962059f1b51ee38bf3a7b3a1a5aefb5ba3cbfc0a23a5c280aaa28c9c4cf0b05b5618e09169ad695bc",
            "7d2c5d897b1765cebd7d3560438e20d7b2eacfaa246c684b177391076be5ae04",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x2a103c39E6AF06bfFad79efd91c001e37d6AD87B",
            "BP3nquKDCq9dFFOkiEv6VP7puVy0huWw+WIFnxtR7ji/Ons6Glrvtbo8v8CiOlwoCqooycTPCwW1YY4JFprWlbw=",
            "fSxdiXsXZc69fTVgQ44g17Lqz6okbGhLF3ORB2vlrgQ=",
        ),
    ),
    # m/44'/60'/0'/0/963
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x9450FeB3982a19F9A8Bd90987Ef4f2C6A76326F4",
            "0xa3e2c8c15cd6153a2d4eddfed8e4701cb7571e8ffd4ed22cd0d44a2ab8d796ed58cb6a1afb60136f7f6dfa609bec6b42bcf6abe8b285cea0165f5eb34c838c03",
            "590f8f4dbe031973243fc7f9a33f94d4a9ff331d55b593b0fe8f877fee27aba1",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x9450FeB3982a19F9A8Bd90987Ef4f2C6A76326F4",
            "BKPiyMFc1hU6LU7d/tjkcBy3Vx6P/U7SLNDUSiq415btWMtqGvtgE29/bfpgm+xrQrz2q+iyhc6gFl9es0yDjAM=",
            "WQ+PTb4DGXMkP8f5oz+U1Kn/Mx1VtZOw/o+Hf+4nq6E=",
        ),
    ),
    # m/44'/60'/0'/0/964
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x3183a79B484ed6708aAA5425aB2953c4cF79C271",
            "0xabcabd5292f3747729c0be6b28c679281fb08f9639ddfc3baf57421edacc78eda3b7ed2daeb42f37d3101dd18f47b13dc828aa1e30e23535cf5734cd7b1b073e",
            "78c3b6865ecf9513a3085b3e96208aaa06dd095298aa712cb9019e835f766394",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x3183a79B484ed6708aAA5425aB2953c4cF79C271",
            "BKvKvVKS83R3KcC+ayjGeSgfsI+WOd38O69XQh7azHjto7ftLa60LzfTEB3Rj0exPcgoqh4w4jU1z1c0zXsbBz4=",
            "eMO2hl7PlROjCFs+liCKqgbdCVKYqnEsuQGeg192Y5Q=",
        ),
    ),
    # m/44'/60'/0'/0/965
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xEe101DC9ED468228c8e1B641b8c0eFbBa9521910",
            "0x5e03c885f36925e794d2f70a82930e214bf28f747b0bf5f49dd27f484f01231cfab29ded232ab4f234861e2c03999d7fc3411f0e51935277b068dac5734bcf25",
            "f3e8ff41d115d1b27f9b6c3b0a0ec6c62216f7e8edc9446bc845dde1bad1cd61",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xEe101DC9ED468228c8e1B641b8c0eFbBa9521910",
            "BF4DyIXzaSXnlNL3CoKTDiFL8o90ewv19J3Sf0hPASMc+rKd7SMqtPI0hh4sA5mdf8NBHw5Rk1J3sGjaxXNLzyU=",
            "8+j/QdEV0bJ/m2w7Cg7GxiIW9+jtyURryEXd4brRzWE=",
        ),
    ),
    # m/44'/60'/0'/0/966
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x71F6e11F20bD143E5AD4364CA8D22FAC7bc2E017",
            "0xa5be09938ad719db7873c858df6a2744523a35df249d830d8c8d332be16f604a0f2777dfc6c3536e19c94193adb03abb39b106fe17c83f0add135361a7e7b2c4",
            "7cb2da429967fd0eddfce366cde3c42250038fde93d01209bd3e15c20d2ca67f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x71F6e11F20bD143E5AD4364CA8D22FAC7bc2E017",
            "BKW+CZOK1xnbeHPIWN9qJ0RSOjXfJJ2DDYyNMyvhb2BKDyd338bDU24ZyUGTrbA6uzmxBv4XyD8K3RNTYafnssQ=",
            "fLLaQpln/Q7d/ONmzePEIlADj96T0BIJvT4Vwg0spn8=",
        ),
    ),
    # m/44'/60'/0'/0/967
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xd60FaeDbD3998013B90C598dE0b8bC55e85C19b2",
            "0x1623b4b49759afbcf4d2789b6a15a2117880f7f2376c9dec0583e02bdb11c2c485b3e2febc7616a8b309888532b04a56e66982101a0f95db631d733396d07c67",
            "ef32e444bd1bbc5b25bf033fbd4ee11bd1da409bfbeaca1dc535ebdb579d9d3b",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xd60FaeDbD3998013B90C598dE0b8bC55e85C19b2",
            "BBYjtLSXWa+89NJ4m2oVohF4gPfyN2yd7AWD4CvbEcLEhbPi/rx2FqizCYiFMrBKVuZpghAaD5XbYx1zM5bQfGc=",
            "7zLkRL0bvFslvwM/vU7hG9HaQJv76sodxTXr21ednTs=",
        ),
    ),
    # m/44'/60'/0'/0/968
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xE00F144B09747644B38c8335ACf16cEcEC44c576",
            "0xbb02660ce12a6a39e1722c963adf57fa8b9069b423001b38bda6e81093dfd188ef0c4aafecd865ffffb1a0e33e228d0f4b7ed9b4555c29bfda64cdfbeda7fe15",
            "363d55f90026311505170b78689b71b0d67cce3b9d25e83e9c00b2d9112c2966",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xE00F144B09747644B38c8335ACf16cEcEC44c576",
            "BLsCZgzhKmo54XIsljrfV/qLkGm0IwAbOL2m6BCT39GI7wxKr+zYZf//saDjPiKND0t+2bRVXCm/2mTN++2n/hU=",
            "Nj1V+QAmMRUFFwt4aJtxsNZ8zjudJeg+nACy2REsKWY=",
        ),
    ),
    # m/44'/60'/0'/0/969
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xbba8632BB5aa9CA66Dde6aD63c9d3b4Fbb496014",
            "0x07ffcea4719de61982d7c550a9412276f6bca1516f3d609408161193d37fc3a70d0ccccfc881f4d276b049d1a40290a1648c5294a454ff39e631b21f293aabb6",
            "5ef776953876745f1bfd40182aacb1912d27cfe98c9ff3e3980e7e4cb298705b",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xbba8632BB5aa9CA66Dde6aD63c9d3b4Fbb496014",
            "BAf/zqRxneYZgtfFUKlBInb2vKFRbz1glAgWEZPTf8OnDQzMz8iB9NJ2sEnRpAKQoWSMUpSkVP855jGyHyk6q7Y=",
            "Xvd2lTh2dF8b/UAYKqyxkS0nz+mMn/PjmA5+TLKYcFs=",
        ),
    ),
    # m/44'/60'/0'/0/970
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x8160dA464e997223081411538c0dcE350c8a291D",
            "0x9dc5328f84f832199f5b862fa888dd05530168b923f1f0b308468367b016947e14c40d01c327cccda2815d3130053c6f5f14bd5e5208f7418905fc9810afeb46",
            "236938ef5256f38007067f70fd8d695a00b98f7094bd7b83c4527e0fe7f907a5",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x8160dA464e997223081411538c0dcE350c8a291D",
            "BJ3FMo+E+DIZn1uGL6iI3QVTAWi5I/HwswhGg2ewFpR+FMQNAcMnzM2igV0xMAU8b18UvV5SCPdBiQX8mBCv60Y=",
            "I2k471JW84AHBn9w/Y1pWgC5j3CUvXuDxFJ+D+f5B6U=",
        ),
    ),
    # m/44'/60'/0'/0/971
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xC65c4E2966C4B6F84179125765C319a33D7127e4",
            "0xcd7aaf2952e7af70e68d3244e13a127fe59dc09162bb4944f752210c63c59cf022547bbbe863b0f620da57c715207c332d4cc9571bea791c1dbdfd549e897eb8",
            "78e8f54a8eeb5dee119231d93bfb25c447511b9ad358e11380d37a4999babfb1",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xC65c4E2966C4B6F84179125765C319a33D7127e4",
            "BM16rylS569w5o0yROE6En/lncCRYrtJRPdSIQxjxZzwIlR7u+hjsPYg2lfHFSB8My1MyVcb6nkcHb39VJ6Jfrg=",
            "eOj1So7rXe4RkjHZO/slxEdRG5rTWOETgNN6SZm6v7E=",
        ),
    ),
    # m/44'/60'/0'/0/972
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x7ED092e1d0f2fC221790f5a6F74107D5e7F99dDd",
            "0x5325110e07be7f37d319a7d2bb29365ac8920ac9ceb2dff3ae5b2116e87a9d95b88011e11ea55ed39fb8a333cf4a38f43020dc4a8c8313877455200184ce11bc",
            "b8895e0e4dbc2ff1dfb002174ca48bfb78cec83f73a2a516098a610ebaf99e6f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x7ED092e1d0f2fC221790f5a6F74107D5e7F99dDd",
            "BFMlEQ4Hvn830xmn0rspNlrIkgrJzrLf865bIRboep2VuIAR4R6lXtOfuKMzz0o49DAg3EqMgxOHdFUgAYTOEbw=",
            "uIleDk28L/HfsAIXTKSL+3jOyD9zoqUWCYphDrr5nm8=",
        ),
    ),
    # m/44'/60'/0'/0/973
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xE4BEa1239a059Ca622483483a79403a79b248373",
            "0x0eea13c5599ffe7d2414bdd7468f0c97bc02b70b39f4f8247540b1b529986e8c6dd36f9fcb0ced3c89c35a182989c13f53831bd087ad652cf33dddea5a3ac6f9",
            "ee9c64516ef278917b162adb2b8fc201f3618fc112ebc5ffdffaf77c3dc02a95",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xE4BEa1239a059Ca622483483a79403a79b248373",
            "BA7qE8VZn/59JBS910aPDJe8ArcLOfT4JHVAsbUpmG6MbdNvn8sM7TyJw1oYKYnBP1ODG9CHrWUs8z3d6lo6xvk=",
            "7pxkUW7yeJF7FirbK4/CAfNhj8ES68X/3/r3fD3AKpU=",
        ),
    ),
    # m/44'/60'/0'/0/974
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x85e3F76e69327c28AFED73e2De7DCCa1185931A3",
            "0xde4b08c144fc1c1f5e73d2267ff4b44b6d0826c6d490d11ce6f5cfea795e5696e4f2c20d8816738c28c6caebfb9ff3f58084f9d785b718bbade684ea79ec244a",
            "ae9f6d75918ac5343f34d3c98357013fb1ea96e6b552bef8adb98912498bc07d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x85e3F76e69327c28AFED73e2De7DCCa1185931A3",
            "BN5LCMFE/BwfXnPSJn/0tEttCCbG1JDRHOb1z+p5XlaW5PLCDYgWc4woxsrr+5/z9YCE+deFtxi7reaE6nnsJEo=",
            "rp9tdZGKxTQ/NNPJg1cBP7Hqlua1Ur74rbmJEkmLwH0=",
        ),
    ),
    # m/44'/60'/0'/0/975
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x6D886da1Bd6ED5daf18456c703afA4f56398b73f",
            "0xb5338017e9d9012a8b336168a9096776eabcbe9298051226eda4fc0db1506faf4d6fbc747fed53cd103dd43ffa890eac5b10a8cde51ba33868a7934dc7565ea8",
            "a63c920eb493e29a423a407130e51f5b82f3c3a06d1d313e36ee45b5af83723a",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x6D886da1Bd6ED5daf18456c703afA4f56398b73f",
            "BLUzgBfp2QEqizNhaKkJZ3bqvL6SmAUSJu2k/A2xUG+vTW+8dH/tU80QPdQ/+okOrFsQqM3lG6M4aKeTTcdWXqg=",
            "pjySDrST4ppCOkBxMOUfW4Lzw6BtHTE+Nu5Fta+Dcjo=",
        ),
    ),
    # m/44'/60'/0'/0/976
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xBB4360073bA7bEd2DDAabA6EcC61A0c9c971Eda1",
            "0x102e71b8830c8ebb7d305117905594d2962222110ca4ff678e841169548d550be95018c4a64376abbcbf1d2c0d5e18409820928ed83920adf2c9c3505f59afd9",
            "617fcdfe3b215eab08fa89f08d9036bfeccb3e3586918a981071149dc07c3667",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xBB4360073bA7bEd2DDAabA6EcC61A0c9c971Eda1",
            "BBAucbiDDI67fTBRF5BVlNKWIiIRDKT/Z46EEWlUjVUL6VAYxKZDdqu8vx0sDV4YQJggko7YOSCt8snDUF9Zr9k=",
            "YX/N/jshXqsI+onwjZA2v+zLPjWGkYqYEHEUncB8Nmc=",
        ),
    ),
    # m/44'/60'/0'/0/977
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xB23793936e5253C23CDE950D6F5301e1875630AF",
            "0xf013e435c1094be2319585c7a2183fa41b832ee89c583255ed941151219a7d0a47ac5775196dee0fd59e5158827e95c1ab9387fe827bd2ae45d8e73ff1f1f783",
            "605e7885514632c2a2dcbc9c6a3fc7df410bbab87c0313a37001def1907dbfbf",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xB23793936e5253C23CDE950D6F5301e1875630AF",
            "BPAT5DXBCUviMZWFx6IYP6Qbgy7onFgyVe2UEVEhmn0KR6xXdRlt7g/VnlFYgn6VwauTh/6Ce9KuRdjnP/Hx94M=",
            "YF54hVFGMsKi3Lycaj/H30ELurh8AxOjcAHe8ZB9v78=",
        ),
    ),
    # m/44'/60'/0'/0/978
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xed30CeABD0CBBBA7D22f320Cc37cCF138e02Bf38",
            "0x1dc30d1e27c11815ceb073f625873214afa7d2453f81face14e83f27df542dfd8c947a0b0e030e235cf119e8f57fcd9a9e729785d22dd78dfa1bf27353185f84",
            "92da0454e55c970eb47550d57ca4f949fa30bfa3c5287a56be29683ad9c14aef",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xed30CeABD0CBBBA7D22f320Cc37cCF138e02Bf38",
            "BB3DDR4nwRgVzrBz9iWHMhSvp9JFP4H6zhToPyffVC39jJR6Cw4DDiNc8Rno9X/Nmp5yl4XSLdeN+hvyc1MYX4Q=",
            "ktoEVOVclw60dVDVfKT5Sfowv6PFKHpWviloOtnBSu8=",
        ),
    ),
    # m/44'/60'/0'/0/979
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x9Add8AdFf2ec7d8977052b80B9f07C57E23BD178",
            "0x9004d916d763a96537c9c8a12d7d75b0c99badf72cbcd7d55b5e714ac1819b32e615fcd1a58f4ea165f73f4100ddbd7fd62be18d5359c3e5b317c6ece65160a6",
            "ed506e4bbe02ce945af1af8bc3e22c43b42d47b19f20d04e45bad8b2a8f49dc2",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x9Add8AdFf2ec7d8977052b80B9f07C57E23BD178",
            "BJAE2RbXY6llN8nIoS19dbDJm633LLzX1VtecUrBgZsy5hX80aWPTqFl9z9BAN29f9Yr4Y1TWcPlsxfG7OZRYKY=",
            "7VBuS74CzpRa8a+Lw+IsQ7QtR7GfINBORbrYsqj0ncI=",
        ),
    ),
    # m/44'/60'/0'/0/980
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x7dd85E8773F9dCB70df81E74eAaE276e991baF33",
            "0x9d08c17b7bf51693cc2aa3d29e74fb15e45194ef2fdae74d942a0dbbc73b293780f2926379cbeadfa19767c3b076c52efa45ceba4b2d4fee805bd0aea148450a",
            "92d47eb19f371c2042bd9a88e0768149ed5c30fe7750d002200e7c676eb0a250",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x7dd85E8773F9dCB70df81E74eAaE276e991baF33",
            "BJ0IwXt79RaTzCqj0p50+xXkUZTvL9rnTZQqDbvHOyk3gPKSY3nL6t+hl2fDsHbFLvpFzrpLLU/ugFvQrqFIRQo=",
            "ktR+sZ83HCBCvZqI4HaBSe1cMP53UNACIA58Z26wolA=",
        ),
    ),
    # m/44'/60'/0'/0/981
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x436d04eE4b5069CC97f2104E57d891e4A1029fA9",
            "0x4aa03c7062f76bc33be7e0c5af335ee531e2b13c18655c89e9be8af1e66cb805f572e7b9d3a0669488aae45b3d702ce1009f85ffd776c18431a2fb795f787ee9",
            "28c0670a852c309b5939b3eb52b3be726ae88eafc6fe9a88f230611703f0500b",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x436d04eE4b5069CC97f2104E57d891e4A1029fA9",
            "BEqgPHBi92vDO+fgxa8zXuUx4rE8GGVciem+ivHmbLgF9XLnudOgZpSIquRbPXAs4QCfhf/XdsGEMaL7eV94fuk=",
            "KMBnCoUsMJtZObPrUrO+cmrojq/G/pqI8jBhFwPwUAs=",
        ),
    ),
    # m/44'/60'/0'/0/982
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xe4c81DC93c26C0d5cecc91F71C9e2b40CB32dc84",
            "0x45af7af0f1ad798574970d015a0343eb23ddc242ce447c9edea6d60ea09b4d553b2bde6f00ef22abc8a04ac299ecdf2b6c4c1b8f9155cdd51d0afc2f80b7da5d",
            "2880243d7e8ded77771389048cf54fd4065c621ee8926220ce4e9788c62c1dfb",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xe4c81DC93c26C0d5cecc91F71C9e2b40CB32dc84",
            "BEWvevDxrXmFdJcNAVoDQ+sj3cJCzkR8nt6m1g6gm01VOyvebwDvIqvIoErCmezfK2xMG4+RVc3VHQr8L4C32l0=",
            "KIAkPX6N7Xd3E4kEjPVP1AZcYh7okmIgzk6XiMYsHfs=",
        ),
    ),
    # m/44'/60'/0'/0/983
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xf4daD266FCF43Ffc0C12A85e57b2f84921369C6d",
            "0x7678195ced450f8482406d8d8d575bb10186cb7b23eea4c0ac81f535766486e8cce1bfb85c5173d5e4d5cd26af7bf191511346fc0931c2da8d48aba84e85201d",
            "d6025738caed7a977edc304337426a0601f80da0f05fe6ae7b6989d2ec5eb64a",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xf4daD266FCF43Ffc0C12A85e57b2f84921369C6d",
            "BHZ4GVztRQ+EgkBtjY1XW7EBhst7I+6kwKyB9TV2ZIbozOG/uFxRc9Xk1c0mr3vxkVETRvwJMcLajUirqE6FIB0=",
            "1gJXOMrtepd+3DBDN0JqBgH4DaDwX+aue2mJ0uxetko=",
        ),
    ),
    # m/44'/60'/0'/0/984
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x5492b3EEf0AB631BB68A5188c6eda76BFf0d7826",
            "0x94b325a94ab114d899b20ca0f1da6e433b669a026bcbce794b2857efd7f7a434f5b46ed43062056028ede0369ed8ceb2195f2fe54112785dfa7257f33250eb54",
            "61ebf334e765c84b04578ab38d5334cff465ee671318b9c77eb25769e36fc8b1",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x5492b3EEf0AB631BB68A5188c6eda76BFf0d7826",
            "BJSzJalKsRTYmbIMoPHabkM7ZpoCa8vOeUsoV+/X96Q09bRu1DBiBWAo7eA2ntjOshlfL+VBEnhd+nJX8zJQ61Q=",
            "YevzNOdlyEsEV4qzjVM0z/Rl7mcTGLnHfrJXaeNvyLE=",
        ),
    ),
    # m/44'/60'/0'/0/985
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xC8999aEBFbcccd7ECdA5e0CD7AffB44F53a8C6ca",
            "0x90b2c04269fa8123ecee112c4af43ac45ffdc2c3c871711629e873a08ee165a0a66500d98951137ba65e8c083d0eada64ef9b1a17d8c6ad1a25176aba22d61a3",
            "ab99113e24926bf3e2c1333828afab4fdc36d1bb72cc23728c193262cdf1f488",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xC8999aEBFbcccd7ECdA5e0CD7AffB44F53a8C6ca",
            "BJCywEJp+oEj7O4RLEr0OsRf/cLDyHFxFinoc6CO4WWgpmUA2YlRE3umXowIPQ6tpk75saF9jGrRolF2q6ItYaM=",
            "q5kRPiSSa/PiwTM4KK+rT9w20btyzCNyjBkyYs3x9Ig=",
        ),
    ),
    # m/44'/60'/0'/0/986
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xB8e3EAD6A07b2420fD062eC763E86bAc2a49E5Be",
            "0x5abe2f99b381abe5b226520d82f14305f7c09aedbdeb777d01c98c1ca1ff2bdf0800310a14bd1324f6e82427847bac1815f10f44cc5f78e47dc078aca3179305",
            "ef4141cf5621385cc2a45a90bb189cb5df3d42648b5af84a689a3ff88f1eb911",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xB8e3EAD6A07b2420fD062eC763E86bAc2a49E5Be",
            "BFq+L5mzgavlsiZSDYLxQwX3wJrtvet3fQHJjByh/yvfCAAxChS9EyT26CQnhHusGBXxD0TMX3jkfcB4rKMXkwU=",
            "70FBz1YhOFzCpFqQuxictd89QmSLWvhKaJo/+I8euRE=",
        ),
    ),
    # m/44'/60'/0'/0/987
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x306957159a6640dE7e85fcbd465b83A29F5C8b67",
            "0x79405eda7bf7b86126c0d1a3cf061d8727d6bb259cf1fe06aa9cc2c9cad8a43f55dc6d7c92ffaeda442ed7b8cbed402845a531bd2d436904e8e6d3d6b25fb707",
            "2b199d6cb5e3d5a7228d1d1f72c496a1457c44329bb709cc679314531109727d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x306957159a6640dE7e85fcbd465b83A29F5C8b67",
            "BHlAXtp797hhJsDRo88GHYcn1rslnPH+BqqcwsnK2KQ/VdxtfJL/rtpELte4y+1AKEWlMb0tQ2kE6ObT1rJftwc=",
            "KxmdbLXj1acijR0fcsSWoUV8RDKbtwnMZ5MUUxEJcn0=",
        ),
    ),
    # m/44'/60'/0'/0/988
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x6704039E556a9aAe070bC883FFFb42cc6e502a79",
            "0xf3b7b2a4d23bfbfd1ccf6c223f97f2fb2f2429a3d8bea8d55fd052606e32c72794235fc8c02d6a06baf91a6ccaf96dc0495039f9d5c2fb92008bbae5950471f8",
            "20789498ece8bac65440e01a6d0e3f77229b43861b0c6a6940d9eb6ffd0de1a1",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x6704039E556a9aAe070bC883FFFb42cc6e502a79",
            "BPO3sqTSO/v9HM9sIj+X8vsvJCmj2L6o1V/QUmBuMscnlCNfyMAtaga6+RpsyvltwElQOfnVwvuSAIu65ZUEcfg=",
            "IHiUmOzousZUQOAabQ4/dyKbQ4YbDGppQNnrb/0N4aE=",
        ),
    ),
    # m/44'/60'/0'/0/989
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xAa2c87726Cba3BE0A180362Df1D45133b7Df614f",
            "0x1f31814c34c70466c7f2030d02e4cbf90513b975f18d17f3e5cf3e1ce6a6b0ce1ad589a7656e28b9c35cf12d177c86e158e4714110243d31408be80568f8960a",
            "ff4b49f29a0aa72c8eb83af09096ba3949d3058a217ee676f2c01b225817da30",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xAa2c87726Cba3BE0A180362Df1D45133b7Df614f",
            "BB8xgUw0xwRmx/IDDQLky/kFE7l18Y0X8+XPPhzmprDOGtWJp2VuKLnDXPEtF3yG4VjkcUEQJD0xQIvoBWj4lgo=",
            "/0tJ8poKpyyOuDrwkJa6OUnTBYohfuZ28sAbIlgX2jA=",
        ),
    ),
    # m/44'/60'/0'/0/990
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x425254957a24C6Ed8951f856e9119986bD754093",
            "0x07edcbab4615a90d1ddf0670ce7d7214f7dbd58f2f2dd7207b2f003b31cbab036dcffab6447ffd6ee99f4a0f852931035419b2f4a5c79802db67c820dc69594d",
            "289e6ebf10339c60f3cbfd62ad12445517b5106ba0403c3da8eb89bbc7b9e2b9",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x425254957a24C6Ed8951f856e9119986bD754093",
            "BAfty6tGFakNHd8GcM59chT329WPLy3XIHsvADsxy6sDbc/6tkR//W7pn0oPhSkxA1QZsvSlx5gC22fIINxpWU0=",
            "KJ5uvxAznGDzy/1irRJEVRe1EGugQDw9qOuJu8e54rk=",
        ),
    ),
    # m/44'/60'/0'/0/991
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xfeC2d07767a41D3CeA16F83365221De75Ca55d02",
            "0x9e2e9a659ce86342f4449011e8d2a8a61d49831f1306f48759ea39c77c33c727b13b13bab75be1cdbbdff1401cfd859e0af30d71f8480452224e15f34b9b795f",
            "472b1dca2adc2d39df5c86d97f6fb8b32c97de11e61bae9352cdfe1c14e9755d",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xfeC2d07767a41D3CeA16F83365221De75Ca55d02",
            "BJ4ummWc6GNC9ESQEejSqKYdSYMfEwb0h1nqOcd8M8cnsTsTurdb4c273/FAHP2FngrzDXH4SARSIk4V80ubeV8=",
            "RysdyircLTnfXIbZf2+4syyX3hHmG66TUs3+HBTpdV0=",
        ),
    ),
    # m/44'/60'/0'/0/992
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xB30Cc5ef90C548ae9a863C633696884de6d0aAf0",
            "0x2a5cceb53ba0b9ac9163b124873da3ca264b09b96f781fe39d84b6a3abe4cd90fc7cde65c9e6f6f66b19addbfa67a2196932104724ecab738d5ca2595b40cc3e",
            "a981b3a25fd2973e974cbe8f9cc6c408451f81bfc900f60702ea821b943cd588",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xB30Cc5ef90C548ae9a863C633696884de6d0aAf0",
            "BCpczrU7oLmskWOxJIc9o8omSwm5b3gf452EtqOr5M2Q/HzeZcnm9vZrGa3b+meiGWkyEEck7KtzjVyiWVtAzD4=",
            "qYGzol/Slz6XTL6PnMbECEUfgb/JAPYHAuqCG5Q81Yg=",
        ),
    ),
    # m/44'/60'/0'/0/993
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xdBFFD1da81F13719D099f5DA7B61Db746eAb308D",
            "0x83dcce21c99c958c58836ae6fc660461952296f1b6c7e63f8640249ad8dd67d90e1718e8da2f09a3b8c1cf5471efea13c9108a96626e99308c1478d970d61332",
            "723f4bcfa1d689aaab45490f504a52d235954d93be4d8f82cb5f19775da17974",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xdBFFD1da81F13719D099f5DA7B61Db746eAb308D",
            "BIPcziHJnJWMWINq5vxmBGGVIpbxtsfmP4ZAJJrY3WfZDhcY6NovCaO4wc9Uce/qE8kQipZibpkwjBR42XDWEzI=",
            "cj9Lz6HWiaqrRUkPUEpS0jWVTZO+TY+Cy18Zd12heXQ=",
        ),
    ),
    # m/44'/60'/0'/0/994
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x5bcd88c2b30A5f102354E7E4B8D5b48B4a6FF1aa",
            "0x6c3fcb94bc2d9487bde53f609b2f698b2a05c5edf66b2a6eccc7216b11c53a5da480b7c24f29e5ff834d0b6f9d89de7b4ccdba7bb2b07c5608a1136349c89aa1",
            "aff382d513fbf4d12ca0b7bf264070b2f673ed87ed733108d3e387b29bdd5278",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x5bcd88c2b30A5f102354E7E4B8D5b48B4a6FF1aa",
            "BGw/y5S8LZSHveU/YJsvaYsqBcXt9msqbszHIWsRxTpdpIC3wk8p5f+DTQtvnYnee0zNunuysHxWCKETY0nImqE=",
            "r/OC1RP79NEsoLe/JkBwsvZz7YftczEI0+OHspvdUng=",
        ),
    ),
    # m/44'/60'/0'/0/995
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xA38D030ee8B8bCFCE17bFE9b9477165858a3fC9d",
            "0xdbb270b368dbba2f38372a1fe7acd182954ef62024a14985c6e179e93849c190c6d1ac3f52e1fde21b9b8cd6c70b65e9b764e509c70d65faa4f8096ea2ef0189",
            "d31b2055c0bcaed90667a5621f14cb2c6b4e1afde7c8aa230fd82edd7e1e8008",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xA38D030ee8B8bCFCE17bFE9b9477165858a3fC9d",
            "BNuycLNo27ovODcqH+es0YKVTvYgJKFJhcbheek4ScGQxtGsP1Lh/eIbm4zWxwtl6bdk5QnHDWX6pPgJbqLvAYk=",
            "0xsgVcC8rtkGZ6ViHxTLLGtOGv3nyKojD9gu3X4egAg=",
        ),
    ),
    # m/44'/60'/0'/0/996
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x54272B1c185C824a0cED06E2Cc9294f0898a5a01",
            "0x18ca56989178720eea75254e8b29d6da71e590d18b3cae3a9a939b8426ef2e1d0414ca1346fffc965f03681fd8dd307d1c138656162fa725f17734595bc20482",
            "50a8c2c5e5181ff1f498a7203b90dd014c6061db380eb796bc8613fa73a04af3",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x54272B1c185C824a0cED06E2Cc9294f0898a5a01",
            "BBjKVpiReHIO6nUlTosp1tpx5ZDRizyuOpqTm4Qm7y4dBBTKE0b//JZfA2gf2N0wfRwThlYWL6cl8Xc0WVvCBII=",
            "UKjCxeUYH/H0mKcgO5DdAUxgYds4DreWvIYT+nOgSvM=",
        ),
    ),
    # m/44'/60'/0'/0/997
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x95d982685Af64Ff93bC9A74D40c38B43A69d4076",
            "0x6e7ba984e65952eaa6c7650b9fb306256c31151be666ce988f2512fb17af9623cef69897385c0d634bf766d4ce44093e8f07364d0d8fb9ba8d09fa23dffd5cd9",
            "1c1774982b5a30a963188f8721c8e89fbfd78e7206daa0a963564fa9a57de5dd",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x95d982685Af64Ff93bC9A74D40c38B43A69d4076",
            "BG57qYTmWVLqpsdlC5+zBiVsMRUb5mbOmI8lEvsXr5YjzvaYlzhcDWNL92bUzkQJPo8HNk0Nj7m6jQn6I9/9XNk=",
            "HBd0mCtaMKljGI+HIcjon7/XjnIG2qCpY1ZPqaV95d0=",
        ),
    ),
    # m/44'/60'/0'/0/998
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0x7Cf6F7f2fA133Ae060159050Ae9c8548578f9EB9",
            "0x7dfad1f3724250f65f914f07b512eba9ac158853eb31c70ebb81e2620e2a4358c04a1f7cb2c210951d964d8307b99461179a50436e6fdcf9978e41af04f60456",
            "d5c6c8b781be2c0c0e13fb2759fdfc956294a07f57ed1e18547613ec8bba16fc",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0x7Cf6F7f2fA133Ae060159050Ae9c8548578f9EB9",
            "BH360fNyQlD2X5FPB7US66msFYhT6zHHDruB4mIOKkNYwEoffLLCEJUdlk2DB7mUYReaUENub9z5l45BrwT2BFY=",
            "1cbIt4G+LAwOE/snWf38lWKUoH9X7R4YVHYT7Iu6Fvw=",
        ),
    ),
    # m/44'/60'/0'/0/999
    account.new_validator(
        # ETH/Tendermint account - used by heimdall validators.
        account.new(
            "0xd74c0D3dEe45a0a9516fB66E31C01536e8756e2A",
            "0x125925a928ac0c6c2aea9005ebaf358098ecdf6f6c455b041056dfb89f4ac8eda42f1d72a1274b88d8b9989c3e4bfabf0775d574a9f3b0d53002f8ff4c9d9908",
            "f118c1f07cd6e1a417175f6316a5a36707da7be07cf5e360a9397e8a52bc690f",
        ),
        # CometBFT account (secp256k1) - used by heimdall-v2 validators and derived from the ETH private key.
        account.new(
            "0xd74c0D3dEe45a0a9516fB66E31C01536e8756e2A",
            "BBJZJakorAxsKuqQBeuvNYCY7N9vbEVbBBBW37ifSsjtpC8dcqEnS4jYuZicPkv6vwd11XSp87DVMAL4/0ydmQg=",
            "8RjB8HzW4aQXF19jFqWjZwfae+B89eNgqTl+ilK8aQ8=",
        ),
    ),
]
