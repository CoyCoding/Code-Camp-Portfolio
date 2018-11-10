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
            <input id="permutations" type="text" name="permutations" />
            <button id="24"class="24">TEST</button>
        </div>
        <ul>

        </ul>
    </form>
</body>
    <script>

        $('#24').bind('click', e => {
            e.preventDefault();
            var numStr = $("#permutations").val();
            removeChildren();
            displayPermutations(getPermutations(numStr)); 
        });

        function removeChildren() {
            $("ul").has("li").empty();
        }

        function displayPermutations(permArr) {
            for (index in permArr) {
                $("ul").append('<li>' + permArr[index]  + '</li>');
            }
        }

        function getPermutations(numStr) {

            const digitsArr = numStr.split('');

            //const answers = [];

            const digitPermutations = [];
            //const operatorPermutations = [];


            generateDigitPermutations(digitsArr);
            //generateOperatorPermutations();

            // interleave();

            return digitPermutations;

            function generateDigitPermutations(digits, permutations = []) {
                if (!digits.length) {
                    digitPermutations.push(permutations);
                }
                else {
                    for (let i = 0; i < digits.length; i++) {
                        const currPerm = digits.slice();
                        const nextChar = currPerm.splice(i, 1);
                        
                        generateDigitPermutations(currPerm.slice(), permutations.concat(nextChar));
                    }
                }
            }
        }

   
    </script>
</html>
