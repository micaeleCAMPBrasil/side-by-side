'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "c5f353062e2262584227e87eb15c69ff",
"assets/AssetManifest.bin.json": "b3b12df90c1712f213265082a01cef78",
"assets/AssetManifest.json": "3dd7f259c5b37a729f7d3e632ed2734a",
"assets/assets/fonts/Mukta-Bold.ttf": "d9897871be7241ac63b7c69fad340f2d",
"assets/assets/fonts/Mukta-Medium.ttf": "d6b60760a3f2c824b32f12d95eef9027",
"assets/assets/fonts/Mukta-Regular.ttf": "20172687cfdfab812d98a4e0e071081c",
"assets/assets/fonts/Mukta-SemiBold.ttf": "b986116346c34aa0452616bf012fc617",
"assets/assets/image/appetit/Apple.png": "edf69c512c568836d5a1f10ed7dece7d",
"assets/assets/image/appetit/a_face.jpeg": "2cbd599fc2213507933c6c2e75039a29",
"assets/assets/image/appetit/a_face2.jpeg": "b96c96856dd4cd19eeb232c3b1684674",
"assets/assets/image/appetit/backgroundprofile.jpg": "9603a8a69a6e8afd75ff3018137d9269",
"assets/assets/image/appetit/calories1.jpg": "c3aa9fb0abe06065bf2b0d3f21f48157",
"assets/assets/image/appetit/calories2.jpg": "092e9cf62a3d9acdceafe1633ddfbcae",
"assets/assets/image/appetit/calories3.jpg": "4f5321c475a058219bfe2e9a931f03f5",
"assets/assets/image/appetit/calories4.jpg": "f2c9b75a9a785a27ef395f3c7868bce2",
"assets/assets/image/appetit/calories5.jpg": "f9dccda39072d259943c3f3cb666c0bd",
"assets/assets/image/appetit/calories6.jpg": "bc9ba2d93fee198bd5dcfd840b48d795",
"assets/assets/image/appetit/category1.jpg": "ebfc044a13ab37a2a99688c2fe429e48",
"assets/assets/image/appetit/category2.jpg": "ab98bf6367d2314295dd5fb8f676017e",
"assets/assets/image/appetit/category3.jpg": "a23353cd8d8f977a1c04c9b47c8d2348",
"assets/assets/image/appetit/category4.jpg": "fb460b384fd86e953104869ede6551d4",
"assets/assets/image/appetit/category5.jpg": "eb054bd6fb6aae658afe69d1820fe32a",
"assets/assets/image/appetit/category6.jpg": "b3dcdd35b08f75075b2bb8012173b5c4",
"assets/assets/image/appetit/categoryicon1.png": "e1373f16ad416fa4aecc408aa34ba15a",
"assets/assets/image/appetit/categoryicon2.png": "4d7a91a4f5acb1a7cde8f62ccd9a5e7b",
"assets/assets/image/appetit/categoryicon3.png": "00b6992a6a3431a52d836db54944796a",
"assets/assets/image/appetit/categoryicon4.png": "3bd84750dfb55f0583036cbf586ffc3b",
"assets/assets/image/appetit/createaccount.jpg": "6fc516d2d97f8a426b086536aec4c346",
"assets/assets/image/appetit/fb.png": "a70e8491872b2a7ab186a5d5f25ddb8f",
"assets/assets/image/appetit/google.png": "bdb9b9307f099629585fd2d1bec3478f",
"assets/assets/image/appetit/info1.png": "4214aca69897846004b3cdca692205c0",
"assets/assets/image/appetit/info2.png": "c6d217638fd2bcd45613925b78bb8600",
"assets/assets/image/appetit/info3.png": "56b6dc29d33b95b663f78359049b4ac2",
"assets/assets/image/appetit/ingredients1.png": "bb54208e0e8101a9abc2d64bed423973",
"assets/assets/image/appetit/ingredients10.png": "6286000f2ede5e74a631f98406621892",
"assets/assets/image/appetit/ingredients2.png": "ad7c75384efa795d95341fe6fe57c0c7",
"assets/assets/image/appetit/ingredients3.png": "20473ce5d847199baa6c690a6dffa2fe",
"assets/assets/image/appetit/ingredients4.png": "de6bd0ce409ccf12758b5b90551cf0ae",
"assets/assets/image/appetit/ingredients5.png": "c4a4c8f9deba50f54fa63c5cd7ae1463",
"assets/assets/image/appetit/ingredients6.png": "3f6d9a6b23da569d43b6b7e16380e881",
"assets/assets/image/appetit/ingredients7.png": "ec55281d8148279326d28afd48d8c53b",
"assets/assets/image/appetit/ingredients8.png": "80cda24649c70ec9b43d190df9751653",
"assets/assets/image/appetit/ingredients9.png": "12d2a266b7864b650aaefc0db7dfe6f7",
"assets/assets/image/appetit/livecooking1.jpg": "60172586ccdc39ad7c87fe7dc032f8de",
"assets/assets/image/appetit/livecooking2.jpg": "78d9ccf89517518aa07768a5cb7d004b",
"assets/assets/image/appetit/livecooking3.jpg": "1438d8ea95489701829cf054ac2b0793",
"assets/assets/image/appetit/livecooking4.jpg": "2240d57c9206db24ad02ea98b8cd4912",
"assets/assets/image/appetit/livecooking5.jpg": "865d56ee9cd13284995799719d749005",
"assets/assets/image/appetit/logo.png": "3506dd24ca094991f92a8eb16bf3e652",
"assets/assets/image/appetit/multipeople.png": "e24539a652d527c6658679636576f73b",
"assets/assets/image/appetit/p1.jpg": "c590703deefb1a1c6b42eb6d3d3cae92",
"assets/assets/image/appetit/p2.jpg": "78d9ccf89517518aa07768a5cb7d004b",
"assets/assets/image/appetit/p3.jpg": "3220ac9ce837d819f289e08e309861f6",
"assets/assets/image/appetit/pizza.jpg": "57cdcf06b9cc023a0c2fca25e1a3e3d1",
"assets/assets/image/appetit/pizza1.png": "1cb596cf51c9be859e123f80c8d1513a",
"assets/assets/image/appetit/pizza2.png": "3ee7d47aea07183a9801d35604a6d080",
"assets/assets/image/appetit/search1.png": "f88d6037bc32e391edef08d398b91793",
"assets/assets/image/appetit/search2.png": "1f91a714501a35343a07121f500f87e4",
"assets/assets/image/appetit/search3.png": "594ccadcde2874f1805d38c2637935f4",
"assets/assets/image/appetit/search4.png": "a4f592378392b071f80425f549ab6209",
"assets/assets/image/appetit/set.jpg": "16cca1c3177b8f17b6a0dee0a63dddbb",
"assets/assets/image/appetit/soup.jpg": "db6bedb134d706d562e914d8a2507f96",
"assets/assets/image/appetit/topchef1.jpg": "dc7b3448d8dea567abdde63c0cc1a9c1",
"assets/assets/image/appetit/topchef2.jpg": "efe6d221ca496bae9b941c27b86223a6",
"assets/assets/image/appetit/topchef3.jpg": "fd7858054bf5a2ce25af38cbb1cddbf6",
"assets/assets/image/appetit/topchef4.jpg": "77fb99cd93513dbe9a036be532891bbf",
"assets/assets/image/appetit/topchef5.jpg": "dcbc43e64d9c0b11b95aa4419f8dbb91",
"assets/assets/image/appetit/topchef6.jpg": "9e00ddd9544170f5c1ff264b3b240495",
"assets/assets/image/appetit/user2.png": "9425b79c250e34c8d291c387b675f964",
"assets/assets/image/appetit/user3.jpg": "4ad16ce7806ca0c18f1ec83840243b24",
"assets/assets/image/appetit/user4.jpg": "e7fb15d5f5ff3bfdcecb2b73ac0ca663",
"assets/assets/image/appetit/user6.jpg": "4053fe2b4260c3a6a3c3a035085b2668",
"assets/assets/image/appetit/user7.jpg": "29a681a8fd25c897cd3913b4efb117d4",
"assets/assets/image/background.png": "a61e3dc1a77e41b878348329143c1a7e",
"assets/assets/image/capas/capa-arco.png": "36f4834ea6d31d411450f2364c1bbbd7",
"assets/assets/image/capas/estacao-final.jpg": "bdc8f0789e8916c783b607987455a308",
"assets/assets/image/capas/mergulho.jpg": "d605cc2ba0ac46222e68db4605f8985b",
"assets/assets/image/capas/santuario.jpg": "f83231316370a7680673d9be5b6ae8ff",
"assets/assets/image/capas/trilha.png": "3327e36309efe5d1e4a9df3619734cec",
"assets/assets/image/icons/1.png": "a7008660e48e116fb6c926f9f74015f4",
"assets/assets/image/icons/10.png": "cc5e83f223a83a4e8cdd1dcef9561dc3",
"assets/assets/image/icons/11.png": "66564b58deac48be4e9a8c51130065f3",
"assets/assets/image/icons/12.png": "532737781963df96e95862a0749c693c",
"assets/assets/image/icons/13.png": "106c09f5e7208f24b1d518e944e4ae5b",
"assets/assets/image/icons/14.png": "6f1b27532b7fda6f38dbb096b820757d",
"assets/assets/image/icons/15.png": "1c992df61c3fefbbee4ac80af05c1343",
"assets/assets/image/icons/16.png": "9c023b44e22dda9d036881d3927983c4",
"assets/assets/image/icons/17.png": "fd419f83fcb2b10ba33f5ec83244c048",
"assets/assets/image/icons/18.png": "842251d4413e55dea78cab81c796ca7b",
"assets/assets/image/icons/19.png": "36c0f5022f9fca89a5ce751dd07bf741",
"assets/assets/image/icons/2.png": "432f69dedbf187fc83927328602b4d78",
"assets/assets/image/icons/20.png": "424f02fd1540e42e5a1f3779fcef58e8",
"assets/assets/image/icons/21.png": "703d6f55cc9c6aca955adf74193e320d",
"assets/assets/image/icons/22.png": "66c1ed8ba8417f69785753e5182fc91b",
"assets/assets/image/icons/23.png": "22822d2b0bd6cf25386451b37a2f268f",
"assets/assets/image/icons/3.png": "8e08e5fcbf9b1b8b72061d7b3714f846",
"assets/assets/image/icons/4.png": "4bc6f8204ce8d70524e2258e59e1cbf3",
"assets/assets/image/icons/5.png": "4b0b84fc01e2514f6e24eac89bbe9dcd",
"assets/assets/image/icons/6.png": "dae6ec1d235280d168590a219b600599",
"assets/assets/image/icons/7.png": "4120eed6c8de09768208869882397447",
"assets/assets/image/icons/8.png": "d7c6c4c4f22615260579b1d1e2a4e984",
"assets/assets/image/icons/9.png": "eb6f2d0f391f061f8ce6d099d9aaf32b",
"assets/assets/image/icons/abc.png": "d8d12f0519bceb201b70ebc7df6bc338",
"assets/assets/image/icons/agua.png": "29e666d20448ae332c11cb464dc3dbd1",
"assets/assets/image/icons/ampulheta.png": "e8e9010d4bb86aa134730cea072222c6",
"assets/assets/image/icons/animais.png": "a74866199e644e87d5d7b1f2e23dc4fa",
"assets/assets/image/icons/animais_2.png": "3de95a18ea12affdd7dea7fa1d80e022",
"assets/assets/image/icons/arco.png": "c953ada0b3792c3eee33c8b15a4e034b",
"assets/assets/image/icons/arvore_1.png": "46286ee221e003cbc344e83bac878c05",
"assets/assets/image/icons/arvore_2.png": "28b8aaa60053473066f9cf954fe7dada",
"assets/assets/image/icons/baleia.png": "3e33f2448e49bd9f86ce2144a8ac7a20",
"assets/assets/image/icons/biblia.png": "ad59aa0361a48e8e6f79231c60415332",
"assets/assets/image/icons/biblia_2.png": "bbee686efb71793fce66a0bac29a79dd",
"assets/assets/image/icons/biblia_3.png": "18e739678aa60f344d5d1a6fb47eabb8",
"assets/assets/image/icons/biblia_4.png": "8639f14298d9c34f4c854b936baac99c",
"assets/assets/image/icons/boca.png": "2a281f3d71a06bcd8a8e62c3505cca7a",
"assets/assets/image/icons/bussula.png": "a3fbbd4644a2898a83764282692f082d",
"assets/assets/image/icons/calendario_1.png": "da332b51c0070c2fdaffe23bed9f9db6",
"assets/assets/image/icons/calendario_2.png": "d7e796277d8147eb59c1f1dba6d7a8fb",
"assets/assets/image/icons/coracao.png": "1c3a056bbf20300b4f975cf03fd4fcc7",
"assets/assets/image/icons/cruz.png": "f6cdb5168ccf858ec4578b4cfba6505f",
"assets/assets/image/icons/engrenagem.png": "20c1738c0899020becbfb52f071f314d",
"assets/assets/image/icons/estacao_final.png": "544364ef7615cf52b8e1819de81e022d",
"assets/assets/image/icons/estrelas.png": "8af6819a0141b775830e0fec8e187838",
"assets/assets/image/icons/fazendoasmalas.png": "ea60118a549f089822e5711dffe3e4ea",
"assets/assets/image/icons/folhas.png": "9c5402c37079e70b2b0685a0b55e3094",
"assets/assets/image/icons/fruta_1.png": "8009f44bec9b8052d3df8f62eb22b5e7",
"assets/assets/image/icons/haja_luz.png": "b3b676191d9ce0588546097f14f3697a",
"assets/assets/image/icons/infinito.png": "a373eb87e72e951c8fe4889c5e4b9e3e",
"assets/assets/image/icons/infinito_2.png": "6394b754aeafc85a1111e24fbdd8fe94",
"assets/assets/image/icons/infinito_3.png": "ccd17479814db1c85226e5c332bb8033",
"assets/assets/image/icons/licoes/01/v_1.png": "9af3348e841d6b3b1ff517ece7893853",
"assets/assets/image/icons/licoes/01/v_2.png": "74133802d7b38c6b82a21231d1c26043",
"assets/assets/image/icons/licoes/01/v_3.png": "b6f60dbc2d63eb740f1ecb6758eb8e09",
"assets/assets/image/icons/licoes/01/v_4.png": "dfc8bdccd678807e9a4930ccde2d7d26",
"assets/assets/image/icons/licoes/01/v_5.png": "69664e5480c7af05e2056a13cc93aee5",
"assets/assets/image/icons/licoes/02/1.png": "85f8e39633575fcdeedd0c87da3b4b39",
"assets/assets/image/icons/licoes/03/1.png": "1d9a03145f31873bfe7f7f92978b3c14",
"assets/assets/image/icons/licoes/03/2-1.png": "764cca018d90adecd5b800deade30856",
"assets/assets/image/icons/licoes/03/2-2.png": "bdae98e8b337cd4d93203eaad30f222b",
"assets/assets/image/icons/licoes/04/1.png": "5a76e18326080223aa644ef29e133a8d",
"assets/assets/image/icons/licoes/05/1.png": "5c038ea5068cb11a61d621c9eeebaca1",
"assets/assets/image/icons/licoes/05/2.png": "4dc01669dbbeecbaec8e7c7a91970db6",
"assets/assets/image/icons/licoes/05/3.png": "f71fcead3b463d36813214db297cae38",
"assets/assets/image/icons/licoes/06/1.png": "79c61389162e66e19293d12b7be974dc",
"assets/assets/image/icons/licoes/08/1.png": "9fded04be8bc3ccb4ffa1e8b788c34ec",
"assets/assets/image/icons/linha.png": "ecf7f93a1605d30499471070b2d30a13",
"assets/assets/image/icons/linha_2.png": "18d389dd7e0ec33eb42c283cedd40ebb",
"assets/assets/image/icons/linha_3.png": "b46c523622498a934294c223aff5d0da",
"assets/assets/image/icons/linha_mapa.png": "3e5df13aa56e1e1211b3dd3bb031ebc4",
"assets/assets/image/icons/livros.png": "4c030fa90f6d24dd7313d08a20a2e50f",
"assets/assets/image/icons/lua.png": "6fa90ebf9fe931372a4e0967a4acd664",
"assets/assets/image/icons/lua_sol.png": "280c18d1079503a863b1cb682fba9d79",
"assets/assets/image/icons/lua_sol_2.png": "bfb448c3aefe33f35796e718538d2214",
"assets/assets/image/icons/luz.png": "02d9e6bfd1a99341700037051ab8a79c",
"assets/assets/image/icons/mancha_1.png": "17e397cda131cb2e64b5b96747a128e4",
"assets/assets/image/icons/mancha_2.png": "636d3564ea44c7fe4fd1d54f9df4c62c",
"assets/assets/image/icons/mancha_3.png": "aaa90bf0758044868d5a8603b32eb3f4",
"assets/assets/image/icons/mancha_4.png": "33c1303ce8bb5c6cc776ea0451f3068d",
"assets/assets/image/icons/mancha_5.png": "bee4aacfafc905fee77e55d989a0b551",
"assets/assets/image/icons/mancha_6.png": "3ad3fe976ec70902b6f6aa34b50decfe",
"assets/assets/image/icons/mao.png": "069d74e9dbbc6e8779a3c76165deb41a",
"assets/assets/image/icons/mao_2.png": "9d668eb319653be857cbe04f90c22690",
"assets/assets/image/icons/mao_3.png": "448b61be5888e5101cd521391926201e",
"assets/assets/image/icons/mao_4.png": "77649a78a231423182e7608864e53448",
"assets/assets/image/icons/mapadatrilha.png": "60feea6240f41f6357b6a9eab133954e",
"assets/assets/image/icons/mergulho.png": "f6c04187270e2c0e8a98769bc4014720",
"assets/assets/image/icons/misterios.png": "049182c3755be724a16bf2abc44a5102",
"assets/assets/image/icons/montanha.png": "3c2b27b92df9ab577b95ec33d0f0875c",
"assets/assets/image/icons/nuvem.png": "13424ad4d268a6a36ec8711036f1e838",
"assets/assets/image/icons/nuvem_2.png": "889be847cf949e6dc047f91544052b82",
"assets/assets/image/icons/n_2.png": "48f0c20f3bb58a5326fe46d31cac7f9f",
"assets/assets/image/icons/n_5.png": "50c4ac0b09d07106e503a6ceafe40480",
"assets/assets/image/icons/n_6.png": "8241fd77e5849a33b52561b8a027cf35",
"assets/assets/image/icons/n_7.png": "3964c03bfb65d2ad7d550b0c1da8e577",
"assets/assets/image/icons/olho.png": "4914ccb257a99d6e56a258efdfef96a3",
"assets/assets/image/icons/passaros_1.png": "9fbc82c9f2d738957c76ff3933b33813",
"assets/assets/image/icons/passaros_2.png": "6dcf4b7d915e6208ae3f3eab0c29ba91",
"assets/assets/image/icons/peixe.png": "c58b48a58e42874489a4083097692852",
"assets/assets/image/icons/planeta.png": "27dd2fbc0134896c8f971f2b9929fcd6",
"assets/assets/image/icons/planetas.png": "c1c402ae458d276dee0b8c1dbfbd5293",
"assets/assets/image/icons/planta.png": "f355ce65948b1e77baa66470f9e1f051",
"assets/assets/image/icons/ponto_de_interrogacao.png": "32124a1291e5609d3c291d310249e8d0",
"assets/assets/image/icons/ponto_de_interrogacao_2.png": "0b1fde735ea88bb3b7e6c15514b50853",
"assets/assets/image/icons/ponto_de_interrogacao_3.png": "2724ee48ea56280003cf20eab0f973e8",
"assets/assets/image/icons/ponto_de_interrogacao_4.png": "b8c61498a7412b5be1dd25f5954adc2a",
"assets/assets/image/icons/reciclagem.png": "96fa8c76ef1482ebe48a9548f8fb6840",
"assets/assets/image/icons/relogio_1.png": "f2f552bc393fa0ec2fba28cb57cad1d8",
"assets/assets/image/icons/relogio_2.png": "d117e93ddb22aec11f3ea30b9c530837",
"assets/assets/image/icons/santuario.png": "fab8152901be08cefe3341bac643ef67",
"assets/assets/image/icons/semanarios.png": "94eb02faf18d7762f9d059264921f8f0",
"assets/assets/image/icons/sol.png": "560c2d608fd253d873d1bd4c25a72662",
"assets/assets/image/icons/terra.png": "4696810020f15576bfb9c41b0f1cc231",
"assets/assets/image/icons/versiculo.png": "0c8d62f527abb67a605a89429ef7e888",
"assets/assets/image/inicial1.jpg": "37f9c877a9fef7a4aee9a3297f3ea4c0",
"assets/assets/image/inicial2.jpg": "65ffa2018cafe07d6a4c4796feb070ed",
"assets/assets/image/inicial3.jpg": "d2fdc2fff0c9a42c36221fbc0135681a",
"assets/assets/image/nopicture.png": "3961eab7a198e63aebec44ef26bf195f",
"assets/assets/image/splash_img.png": "06e6080ac3b220320eef9e9056586495",
"assets/assets/image/welcome-bg.png": "c1571c3541bcdda120667d1ecfe096fc",
"assets/FontManifest.json": "b1bbd5279262c4b51a57e451172c1449",
"assets/fonts/MaterialIcons-Regular.otf": "2a2e71da0351001b8c5c5f1765d024c5",
"assets/NOTICES": "06039084dbf06f7036f984abeaacdf53",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/packages/fluttertoast/assets/toastify.css": "a85675050054f179444bc5ad70ffc635",
"assets/packages/fluttertoast/assets/toastify.js": "56e2c9cedd97f10e7e5f1cebd85d53e3",
"assets/packages/nb_utils/assets/icons/ic_beautify.png": "a680304f89d7cf2de6ebaabcb05e6947",
"assets/packages/nb_utils/fonts/LineAwesome.ttf": "4fe1928e582fd2e3316275954fc92e86",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "728b2d477d9b8c14593d4f9b82b484f3",
"canvaskit/canvaskit.js.symbols": "bdcd3835edf8586b6d6edfce8749fb77",
"canvaskit/canvaskit.wasm": "7a3f4ae7d65fc1de6a6e7ddd3224bc93",
"canvaskit/chromium/canvaskit.js": "8191e843020c832c9cf8852a4b909d4c",
"canvaskit/chromium/canvaskit.js.symbols": "b61b5f4673c9698029fa0a746a9ad581",
"canvaskit/chromium/canvaskit.wasm": "f504de372e31c8031018a9ec0a9ef5f0",
"canvaskit/skwasm.js": "ea559890a088fe28b4ddf70e17e60052",
"canvaskit/skwasm.js.symbols": "e72c79950c8a8483d826a7f0560573a1",
"canvaskit/skwasm.wasm": "39dd80367a4e71582d234948adc521c0",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"firebase-messaging-sw.js": "91f5cdaf7cc5b9fa1013e3a379a4633d",
"flutter.js": "83d881c1dbb6d6bcd6b42e274605b69c",
"flutter_bootstrap.js": "fca4c8979550b175ecc124072a3df0f3",
"icons/Icon-192.png": "18fbeae34c96a3528b677f4e9f66d73d",
"icons/Icon-512.png": "03a2f993bc1d661d6adb9eb3428aa899",
"icons/Icon-maskable-192.png": "18fbeae34c96a3528b677f4e9f66d73d",
"icons/Icon-maskable-512.png": "03a2f993bc1d661d6adb9eb3428aa899",
"index.html": "267be3129c381ff39136095fbc289d0b",
"/": "267be3129c381ff39136095fbc289d0b",
"main.dart.js": "7d6a5141c221a8f3d950b5db77cc7b3b",
"manifest.json": "340d9e9f1e0d53efc61bc435fb7e0c5b",
"push.js": "aa6840ca4151940e6304d5d8849bc7ad",
"version.json": "88ee3b69a488905081bf5fd956d7bc8b"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
