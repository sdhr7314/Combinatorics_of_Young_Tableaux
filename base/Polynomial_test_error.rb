require_relative "../utility/test"
require_relative "Polynomial"


check_with_error_expected(false){
	[[1,2]].to_polynomial.to_string(["x","y","z"])
}
check_with_error_expected(false){
	[nil,[1]].to_polynomial
}
check_with_error_expected(false){
	[[1],nil].to_polynomial
}


check_with_error_expected(true){
	[[]].to_polynomial+[].to_polynomial
}
check_with_error_expected(true){
	[[]].to_polynomial*[].to_polynomial
}
check_with_error_expected(true){
	[1,[]].to_polynomial
}
check_with_error_expected(true){
	[[],1].to_polynomial
}
check_with_error_expected(true){
	[[1,2]].to_polynomial.to_string(["x"])
}
