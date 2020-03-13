// Function to limit input only to numeric value
$(document).on("input", ".numeric", function() {
	this.value = this.value.replace(/\D/g,'');
});