// Write your JavaScript code.
$(".editor").trumbowyg({
    lang: 'ko',
    btnsDef: {
        myImage: {
            dropdown: ['insertImage', 'upload'],
            ico: 'insertImage' //이미지 그림
        }
    },
    btns: [
        ['viewHTML'],
        ['formatting'],
        ['strong', 'em', 'del'],
        ['superscript', 'subscript'],
        ['link'],
        //['insertImage'],
        'myImage',
        ['justifyLeft', 'justifyCenter', 'justifyRight', 'justifyFull'],
        ['unorderedList', 'orderedList'],
        ['horizontalRule'],
        ['removeformat'],
        ['fullscreen']
    ]
});
