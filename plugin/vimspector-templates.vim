vim9script

def LangList(ArgLead: string, CmdLine: string, CursorPos: number): list<string>

	var lang_list = [ 
			\ "Bash", 
			\ "C/C++", 
			\ "C/C++ remote", 
			\ "C#", 
			\ "Docker",
			\ "Go", 
			\ "Jai", 
			\ "Javascript/Typescript", 
			\ "Java", 
			\ "Lua", 
			\ "PHP", 
			\ "Python", 
			\ "Python remote", 
			\ "Rust" 
			\ ]

	return lang_list
enddef

def CreateConfig(lang: string)

	const template_path: string = expand('<script>>:p:h')[ : -32] .. "templates/"

	if lang == "Bash"
		vert new
		setfiletype jsonc
		put =readfile(template_path .. "bash.template")

	elseif lang == "C/C++"
		vert new
		setfiletype jsonc
		put =readfile(template_path .. "c.template")

	elseif lang == "C/C++ remote"
		vert new
		setfiletype jsonc
		put =readfile(template_path .. "c-remote.template")

	elseif lang == "C#"
		vert new
		setfiletype jsonc
		put =readfile(template_path .. "csharp.template")

	elseif lang == "Docker"
		vert new
		setfiletype jsonc
		put =readfile(template_path .. "docker.template")

	elseif lang == "Go"
		vert new
		setfiletype jsonc
		put =readfile(template_path .. "go.template")

	elseif lang == "Jai"
		vert new
		setfiletype jsonc
		put =readfile(template_path .. "jai.template")

	elseif lang == "Javascript/Typescript"
		vert new
		setfiletype jsonc
		put =readfile(template_path .. "javascript.template")

	elseif lang == "Java"
		vert new
		setfiletype jsonc
		put =readfile(template_path .. "java.template")

	elseif lang == "Lua"
		vert new
		setfiletype jsonc
		put =readfile(template_path .. "lua.template")

	elseif lang == "PHP"
		vert new
		setfiletype jsonc
		put =readfile(template_path .. "php.template")

	elseif lang == "Python"
		vert new
		setfiletype jsonc
		put =readfile(template_path .. "python.template")

	elseif lang == "Python remote"
		vert new
		setfiletype jsonc
		put =readfile(template_path .. "python-remote.template")

	elseif lang == "Rust"
		vert new
		setfiletype jsonc
		put =readfile(template_path .. "rust.template")
	endif
enddef

command -nargs=1 -complete=customlist,LangList VimspectorCreateConfig CreateConfig(<q-args>)

