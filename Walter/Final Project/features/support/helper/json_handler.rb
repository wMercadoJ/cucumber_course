module JSON_handler

	def JSON_handler.parse_project_response(project_json)
		project = Hash.new	
		project_temp = JSON.parse(project_json)
		project_temp.each do |key, value|
			if key == "Content" || key == "ItemsCount" || key == "Icon" \
				|| key == "ItemType" || key == "ParentId" || key == "Collapsed" then
				project.store(key, value)
			end
		end		
		return JSON_handler.sort_json(project)
	end

	def JSON_handler.parse_item_response(item_json)
		project = Hash.new	
		project_temp = JSON.parse(item_json)
		project_temp.each do |key, value|
			if key == "Content" || key == "ItemType" || key == "ProjectId" || key == "Checked" then
				project.store(key, value)
			end
		end		
		return JSON_handler.sort_json(project)
	end

	def JSON_handler.sort_json(json)
		return Hash[json.sort]
	end

	def JSON_handler.convert_to_array_json(array_json)
		array_json.gsub!(/(\\)/, '')
		array_json.gsub!(/(\,)(\S)/, "\\1 \\2")
		return YAML::load(array_json)
	end

	def JSON_handler.parse_projects_reponse(array_projects)
		parse_project = []
		array_projects.each do | project_item |
			if project_item["Content"] == "Home" || project_item["Content"] == "Personal" then 
				project = Hash.new
				project_item.each do |key, value|
					if key == "Content" || key == "Icon" || key == "Deleted" then
						project.store(key, value)
					end
				end
				parse_project.push(project)
			end
		end
		return parse_project
	end
end