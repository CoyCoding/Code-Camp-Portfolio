<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddToArray.aspx.cs" Inherits="FreeCodeCampPlayGround.AddToArray" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-3.3.1.js"></script>
</head>
<body>
   <form id="form1" runat="server">
        <div>
            <h1>Orignal Array : </h1>
            <input id="dataToAdd" type="text" name="dataToAdd"/>
            <label for="Start">Add to Begining of Array</label>
        
            <button id="Start">Test</button>
            <label for="End">Add to End of Array</label>
            <button id="End">Test</button>
            <ul>
                <li>
                    
                </li>
            </ul>
        </div>
    </form>
</body>
    <script>
        $(document).ready(function () {
            displayArr = [];

            $('#Start').bind('click', e => {
                e.preventDefault();
                addToStart();
                refreshDisplay();
            });

            $('#End').bind('click', e => {
                e.preventDefault();
                addToEnd();
                refreshDisplay();
            });

            function addToStart() {
                var item = $('#dataToAdd').val();
                if (!startArr(item)) {
                    displayArr = [item].concat(displayArr);
                }
            }

            function addToEnd() {
                var item = $('#dataToAdd').val();
                if (!startArr(item)) {
                    displayArr.push(item);
                }
            }

            function startArr(item) {
                if (displayArr.length === 0) {                   
                    displayArr[0] = item;
                    return true;
                }
                return false;
            }

            function refreshDisplay() {
                $('h1').text('New Array: [' + displayArr +']');
            }
        });


    </script>
</html>
