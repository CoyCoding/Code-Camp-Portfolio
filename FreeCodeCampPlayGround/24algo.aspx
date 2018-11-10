<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="24algo.aspx.cs" Inherits="FreeCodeCampPlayGround._24algo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script src="Scripts/jquery-3.3.1.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <button id="24"class="24">TEST</button>
        </div>
        <ul>

        </ul>
    </form>
</body>
    <script>

        $('#24').bind('click', e => {
            e.preventDefault();
            var numStr = "1234"
            removeChildren();

            setTimeout(function () {
                solve24(numStr);
            }, 3000);
            
        });

        function removeChildren(DOMelement) {
            $("ul").has("li").empty();
            alert("empty")
        }


        function solve24(numStr) {

            const digitsArr = numStr.split('');

            const answers = [];

            const digitPermutations = [];
            const operatorPermutations = [];


            generateDigitPermutations(digitsArr);
            //generateOperatorPermutations();
            for (index in digitPermutations) {
                $("ul").append('<li>' + digitPermutations[index]  + '</li>');
            }
            // interleave();
            return true;

            function generateDigitPermutations(digits, permutations = []) {
                if (digits.length === 0) {

                    digitPermutations.push(permutations);

                }
                else {
                    for (let i = 0; i < digits.length; i++) {
                        const curr = digits.slice();
                        const next = curr.splice(i, 1);
                        
                        generateDigitPermutations(curr.slice(), permutations.concat(next));
                    }
                }
            }
        }

   
    </script>
</html>
