Feature:
Scenario:
Given a board like this:
|   | 1 | 2 | 3 |
| 1 |   |   |   |
| 2 |   |   |   |
| 3 |   |   |   |
When player x plays in row 2, column 1
 And player y plays in row 3, column 2
Then the board should look like this:
|   | 1 | 2 | 3 |
| 1 |   |   |   |
| 2 | x |   |   |
| 3 |   | y |   |