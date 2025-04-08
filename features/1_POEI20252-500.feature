Feature: Test Connexion réussie avec des identifiants valides avec ParaBank

	@POEI20252-500 @POEI20252-522 @WilliamLAY
	Scenario: Test Connexion réussie avec des identifiants valides avec ParaBank
		Given L'utilisateur lance la page parabank.parasoft.com
		  When L'utilisateur rentre son login
		  And L'utilisateur rentre son mot de passe
		  And L'utilisateur clique sur le bouton login
		  Then L'utilisateur est connecté à l'application SauceDemo et est redirigé sur la page d'accueil de l'application
		
