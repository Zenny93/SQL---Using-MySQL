SELECT DISTINCT R.RecipeTitle 
FROM Recipes.Recipes R 
INNER JOIN Recipes.Recipe_Ingredients RI 
ON R.RecipeID=RI.RecipeID 
WHERE RI.IngredientID IN (1, 9) 
     /**5.	Show me all the recipe titles of recipes that contain either beef or garlic (note beef = 1 and garlic =9) **/
     