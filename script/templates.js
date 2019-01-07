/* ++++++++++++++++++++ Generell funktionen ++++++++++++++++++++ */


/* Diese funktion gibt einen schatten am Knopf */
function shadowButton(knopf) {
	knopf.style.boxShadow = "0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)";
}


/* Diese funktion löst den schatten am Knopf ab*/
function normalButton(knopf) {
	knopf.style.boxShadow = "none";
}


