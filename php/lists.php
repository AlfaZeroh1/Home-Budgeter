<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Toggle Table Rows with JavaScript</title>
    <style>
        .toggleable {
            display: none;
        }

        .trigger {
            cursor: pointer;
        }

        .trigger:hover {
            background-color: #f0f0f0;
        }
    </style>
</head>
<body>
    <table>
        <tr class="trigger">
            <td>Row 1 Content</td>
        </tr>
        <tr class="toggleable">
            <td>Row 2 Content</td>
        </tr>
        <tr class="trigger">
            <td>Row 3 Content</td>
        </tr>
        <tr class="toggleable">
            <td>Row 4 Content</td>
        </tr>
    </table>

    <script>
        const triggers = document.querySelectorAll('.trigger');

        triggers.forEach(trigger => {
            trigger.addEventListener('click', () => {
                const nextRow = trigger.nextElementSibling;

                if (nextRow && nextRow.classList.contains('toggleable')) {
                    nextRow.style.display = (nextRow.style.display === 'none') ? 'table-row' : 'none';
                }
            });
        });
    </script>
</body>
</html>
