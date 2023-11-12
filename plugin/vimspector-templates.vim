vim9script

def LangList(ArgLead: string, CmdLine: string, CursorPos: number): list<string>

	var lang_list = [ 
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

	if lang == "C/C++"
		vert new
		setfiletype jsonc
		put =readfile(template_path .. "c.template")
	endif

	if lang == "C/C++ remote"
		vert new
		setfiletype jsonc
		put =readfile(template_path .. "c-remote.template")
	endif

	if lang == "C#"
		vert new
		setfiletype jsonc
		put =readfile(template_path .. "csharp.template")
	endif

	if lang == "Docker"
		vert new
		setfiletype jsonc
		put =readfile(template_path .. "docker.template")
	endif

	if lang == "Go"
		vert new
		setfiletype jsonc
		put =readfile(template_path .. "go.template")
	endif

	if lang == "Jai"
		vert new
		setfiletype jsonc
		put =readfile(template_path .. "jai.template")
	endif

	if lang == "Javascript/Typescript"
		vert new
		setfiletype jsonc
		put =readfile(template_path .. "javascript.template")
	endif

	if lang == "Java"
		vert new
		setfiletype jsonc
		put =readfile(template_path .. "java.template")
	endif

	if lang == "Lua"
		vert new
		setfiletype jsonc
		put =readfile(template_path .. "lua.template")
	endif

	if lang == "PHP"
		vert new
		setfiletype jsonc
		put =readfile(template_path .. "php.template")
	endif

	if lang == "Python"
		vert new
		setfiletype jsonc
		put =readfile(template_path .. "python.template")
	endif

	if lang == "Python remote"
		vert new
		setfiletype jsonc
		put =readfile(template_path .. "python-remote.template")
	endif

	if lang == "Rust"
		vert new
		setfiletype jsonc
		put =readfile(template_path .. "rust.template")
	endif
enddef

command -nargs=1 -complete=customlist,LangList VimspectorCreateConfig CreateConfig(<q-args>)

