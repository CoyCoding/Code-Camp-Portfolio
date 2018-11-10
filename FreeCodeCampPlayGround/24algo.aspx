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

        $(document).ready(function () {
            $('#24').bind('click', e => {
                e.preventDefault();
                var numStr = $("#permutations").val();
                removeChildren();
                if (numStr.trim()) {
                    var perms = getPermutations(numStr);
                    console.log(perms[0].length);
                    displayPermutations(getPermutations(numStr));
                }
            });

            function removeChildren() {
                $("ul").has("li").empty();
            }

            function displayPermutations(permArr) {
                for (index in permArr[0]) {
                    $("ul").append('<li>' + permArr + '</li>');
                }
            }


           //This was for a code challange that takes in 4 numbers and shows if they add up to 24 and how.


            const operators = ['+', '-', '*', '/'];

            function getPermutations(numStr) {

                const digitsArr = numStr.split('');

                const answers = [];

                const digitPermutations = [];
                const operatorPermutations = [];


                generateDigitPermutations(digitsArr);
                generateOperatorPermutations();

                calculate();

                return answers[0];

                function generateDigitPermutations(digits, permutations = []) {
                    if (!digits.length) {
                        digitPermutations.push(permutations);
                    }
                    else {
                        for (let i = 0; i < digits.length; i++) {
                            const currPerm = digits.slice();
                            const nextChar = currPerm.splice(i, 1);
                            generateDigitPermutations(currPerm, permutations.concat(nextChar));
                        }
                    }
                }
                
                function generateOperatorPermutations(permutations = []) {
                    
                    if (permutations.length === 3) {
                        operatorPermutations.push(permutations);
                    }
                    else {
                        for (let i = 0; i < operators.length; i++) {
                            const curr = permutations.slice();
                            curr.push(operators[i]);
                            generateOperatorPermutations(curr);
                        }
                    }
                }
                function calculate() {
                    for (let i = 0; i < digitPermutations.length; i++) {
                        for (let j = 0; j < operatorPermutations.length; j++) {
                            const d = digitPermutations[i];
                            const o = operatorPermutations[j];
                            const perm = [
                                `${d[0]}${o[0]}${d[1]}${o[1]}${d[2]}${o[2]}${d[3]}`,
                                `(${d[0]}${o[0]}${d[1]})${o[1]}${d[2]}${o[2]}${d[3]}`,
                                `${d[0]}${o[0]}(${d[1]}${o[1]}${d[2]})${o[2]}${d[3]}`,
                                `${d[0]}${o[0]}${d[1]}${o[1]}(${d[2]}${o[2]}${d[3]})`,
                                `${d[0]}${o[0]}(${d[1]}${o[1]}${d[2]}${o[2]}${d[3]})`,
                                `(${d[0]}${o[0]}${d[1]}${o[1]}${d[2]})${o[2]}${d[3]}`,
                                `(${d[0]}${o[0]}${d[1]})${o[1]}(${d[2]}${o[2]}${d[3]})`
                            ];

                            perm.forEach(combination => {
                                const res = eval(combination);

                                if (res === 24) {
                                    return answers.push(combination);
                                }
                            });
                        }
                    }
                }
            }



        });
   
    </script>
</html>
