$(document).ready(function() {
	// Masquage des réponses
	$(".QR-bloc .reponse").hide();
	// CSS : curseur pointeur
	$(".QR-bloc h2").css("cursor", "pointer");
	// Clic sur la question
	$(".QR-bloc h2").click(function() {
		$(".QR-bloc h2").removeClass("selected");
		// Actions uniquement si la réponse n'est pas déjà visible
		if($(this).next().is(":visible") == false) {
			// Masquage des réponses
			$(".QR-bloc .reponse").slideUp();
			// Affichage de la réponse placée juste après dans le code HTML
			$(this).next().slideDown();
			$(this).addClass("selected");

		}
		else { 
			$(this).next().slideUp();
			$(this).removeClass("selected");
		};
	});
});


