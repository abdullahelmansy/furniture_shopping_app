class ProductModel {
  final String image;
  final String title;
  final int price;

  ProductModel({required this.image, required this.title, required this.price});
}

List<ProductModel> productList = [
  ProductModel(
    image:
        'https://s3-alpha-sig.figma.com/img/2443/fe11/03a0919f36f923a162b57615bd507c3e?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=JNrDEZDP3YySuz9VTaoJkKeGeFupHSWNN~AFibHThCYMnP9SiK2DpXN1AMMlIGFnX3qEh7OhhKZWWVql~BXJiffYzsL1ZQvTYOqBnKj4AVncFn~Errlm4Lida8Kkfi0YS1qMppmDkEAEEl38oAnEnDW092a2StLdQdvqhh~xX8wG9A5vNp0YwE-ZD3XNnD-KEgezvO1BaiHuFf4VkBmx84ywGOyX-yuSy1dZzl82cj72QbeCUyB3rFByCqnZlsvpbrPou44Ga4oiXhgroS5lRzSF10F01tvX5AJGyaVSFxjHeDljjSrLtDKjwvswbuXWplLh8fglmDWIgBFrTFF8Jg__',
    title: 'Black Simple Lamp',
    price: 12,
  ),
  ProductModel(
    image:
        'https://s3-alpha-sig.figma.com/img/01b3/a6d6/88ed658a2d0159fe18074af4a860b24f?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=majramXpW0q4edCgr8nJwX6SvIjq8rsHX6LpSwBVzs9AIIT1THk9pu4jnWvRnADRMd2iDY3e9vUELekCaULVb7dIlbA9ASFinW2kQnk2FvoDDzyAF6LZvHWTmuNDtZOPfInFQM7MoUgQIBJ1CvNOKIgzJ54funaEbShrViZPcAFITiWsVTLwBP6wN1GA4E7~qXBmPQq20S0F6cLkw3Svm23cfPEShW3mlboJjU-ZwlJUCOxPzTef~xhwduzgHusfgMd29800qGXe7WTZYX8e4F6N-nq4FtY7Q9T0hwf3d72uHXAfE8K5~66Mp6TPcu2yDLXm9pGHVy-CE3wRXgVodw__',
    title: 'Minimal Stand',
    price: 25,
  ),
  ProductModel(
    image:
        'https://s3-alpha-sig.figma.com/img/d2cc/b173/ffcf81766d608d6e6d7a70ae8ebfe5bb?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=efONiZgaJfb2E9J1NPIxgtvQQCCZY67QaAvB2jNv79v5E1AhXniCP5ZLqlrzUGESxLTPwDCgGKo2iQ7-QFgocBtysdN1t8gY4abZLYni9zgsr8yf2PmyrTHcUE1fIC~F4EaYwxptErdKTUdEa-mQcswv3NF~85ZDaP5q79u1JIyNON6IvZVIrjyDkhjAVLsu4aCaXYHVrA42a47ybm6UEi7kXK~pIJPiADY7xeDdMOcl~YQq0zFOBHPg-gEtZ-Mz0aP8YE27sMSDnbnZiKVWED5a~~JRJXHhoWi6HMxtL6jKC~cE-3MaXm-b187oCsX7EosS~p2LqR6EDcB0Pnc8rg__',
    title: 'Coffee Chair',
    price: 20,
  ),
  ProductModel(
    image:
    
        'https://s3-alpha-sig.figma.com/img/d628/863f/83328d299b2df6ee0daa119655bdd3f5?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=V8zAQKujUEc0NXVRmQWjxJ9mqdZS7bK0flIFuPV~gQO-xYpUdMkO4vY3sRSNyt6bXQr4iKpql-aCSJdwv0cRJTMygzjq9Vl9jSafG~BJLkdX7nUdgYeckn9BIKW1MlyF8lNgFJT5x62GCVGEzJe2J7KKQy5bhSr1om2y-PRE7lymeDIYuN3NDgLQsJGy6-6H0jAPHihkojm7HwotzRJQFQ~LzXsHACxC1V93FfnXN4qxPlyxKzpmrNh8NTDHxtflGsWw3sUFHyvyOk2cSkdqdoyXWdHnevMD0AFqHTBk1JNmcUmKErJYygK7cUardEAo6WhkbmnlnoPy3cLluQOtjg__',
    title: 'Simple Desk',
    price: 50,
  ),
  ProductModel(
    image:
        'https://s3-alpha-sig.figma.com/img/2443/fe11/03a0919f36f923a162b57615bd507c3e?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=JNrDEZDP3YySuz9VTaoJkKeGeFupHSWNN~AFibHThCYMnP9SiK2DpXN1AMMlIGFnX3qEh7OhhKZWWVql~BXJiffYzsL1ZQvTYOqBnKj4AVncFn~Errlm4Lida8Kkfi0YS1qMppmDkEAEEl38oAnEnDW092a2StLdQdvqhh~xX8wG9A5vNp0YwE-ZD3XNnD-KEgezvO1BaiHuFf4VkBmx84ywGOyX-yuSy1dZzl82cj72QbeCUyB3rFByCqnZlsvpbrPou44Ga4oiXhgroS5lRzSF10F01tvX5AJGyaVSFxjHeDljjSrLtDKjwvswbuXWplLh8fglmDWIgBFrTFF8Jg__',
    title: 'Black Simple Lamp',
    price: 12,
  ),
  ProductModel(
    image:
        'https://s3-alpha-sig.figma.com/img/2443/fe11/03a0919f36f923a162b57615bd507c3e?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=JNrDEZDP3YySuz9VTaoJkKeGeFupHSWNN~AFibHThCYMnP9SiK2DpXN1AMMlIGFnX3qEh7OhhKZWWVql~BXJiffYzsL1ZQvTYOqBnKj4AVncFn~Errlm4Lida8Kkfi0YS1qMppmDkEAEEl38oAnEnDW092a2StLdQdvqhh~xX8wG9A5vNp0YwE-ZD3XNnD-KEgezvO1BaiHuFf4VkBmx84ywGOyX-yuSy1dZzl82cj72QbeCUyB3rFByCqnZlsvpbrPou44Ga4oiXhgroS5lRzSF10F01tvX5AJGyaVSFxjHeDljjSrLtDKjwvswbuXWplLh8fglmDWIgBFrTFF8Jg__',
    title: 'Black Simple Lamp',
    price: 12,
  ),
  ProductModel(
    image:
        'https://s3-alpha-sig.figma.com/img/2443/fe11/03a0919f36f923a162b57615bd507c3e?Expires=1724630400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=JNrDEZDP3YySuz9VTaoJkKeGeFupHSWNN~AFibHThCYMnP9SiK2DpXN1AMMlIGFnX3qEh7OhhKZWWVql~BXJiffYzsL1ZQvTYOqBnKj4AVncFn~Errlm4Lida8Kkfi0YS1qMppmDkEAEEl38oAnEnDW092a2StLdQdvqhh~xX8wG9A5vNp0YwE-ZD3XNnD-KEgezvO1BaiHuFf4VkBmx84ywGOyX-yuSy1dZzl82cj72QbeCUyB3rFByCqnZlsvpbrPou44Ga4oiXhgroS5lRzSF10F01tvX5AJGyaVSFxjHeDljjSrLtDKjwvswbuXWplLh8fglmDWIgBFrTFF8Jg__',
    title: 'Black Simple Lamp',
    price: 12,
  ),
];
