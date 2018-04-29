require "stringer/version"
module Stringer
    def self.spacify *strings
    	str = strings.join(' ')
        # string = ""
        # strings.each do |s|
        #     string += " " + s
        # end
        # string
    end

    def self.minify string,a
    	if a > string.length
    		return string
    	end
    	"#{string[0..a]}..."
    end

    def self.replacify master, replace, newstring
    	result = master.gsub(replace,newstring)
    end

    def self.tokenize string
    	result = string.split(" ")
    end

    def self.removify string, movestr
    	result=string.gsub(" "+movestr,"")
    end
end
