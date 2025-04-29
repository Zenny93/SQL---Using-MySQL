/** 3.	Recipes database: “Show me the ingredient name and ingredient class description of all ingredients in the Ingredients database.” **/
SELECT I.IngredientID, I.IngredientName, IC.IngredientClassDescription
FROM Recipes.Ingredients I
INNER JOIN Recipes.Ingredient_Classes IC
ON IC.IngredientClassID=I.IngredientClassID;