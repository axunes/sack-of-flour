; ca65 align sucks so I use padding instead
.macro PaddedString text, length
	.if (length - .strlen(text)) < 0
		.error .sprintf("String is too long, max %d, actual %d", length, .strlen(text))
	.endif
	.byte text
	.res length - .strlen(text)
.endmacro
