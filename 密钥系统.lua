--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--

local v0 = string.char;
local v1 = string.byte;
local v2 = string.sub;
local v3 = bit32 or bit;
local v4 = v3.bxor;
local v5 = table.concat;
local v6 = table.insert;
local function v7(v24, v25)
	local v26 = {};
	for v41 = 1, #v24 do
		v6(v26, v0(v4(v1(v2(v24, v41, v41 + 1)), v1(v2(v25, 1 + (v41 % #v25), 1 + (v41 % #v25) + 1))) % 256));
	end
	return v5(v26);
end
local v8 = tonumber;
local v9 = string.byte;
local v10 = string.char;
local v11 = string.sub;
local v12 = string.gsub;
local v13 = string.rep;
local v14 = table.concat;
local v15 = table.insert;
local v16 = math.ldexp;
local v17 = getfenv or function()
	return _ENV;
end;
local v18 = setmetatable;
local v19 = pcall;
local v20 = select;
local v21 = unpack or table.unpack;
local v22 = tonumber;
local function v23(v27, v28, ...)
	local v29 = 2 - 1;
	local v30;
	v27 = v12(v11(v27, 5), v7("\139\83", "\55\165\125\65\213\42\76\177"), function(v42)
		if (v9(v42, 2) == 81) then
			v30 = v8(v11(v42, 1, 1));
			return "";
		else
			local v94 = 0;
			local v95;
			while true do
				if (v94 == 0) then
					v95 = v10(v8(v42, 16));
					if v30 then
						local v120 = 0;
						local v121;
						while true do
							if (v120 == 0) then
								v121 = v13(v95, v30);
								v30 = nil;
								v120 = 1;
							end
							if (v120 == 1) then
								return v121;
							end
						end
					else
						return v95;
					end
					break;
				end
			end
		end
	end);
	local function v31(v43, v44, v45)
		if v45 then
			local v96 = 0;
			local v97;
			while true do
				if (v96 == 0) then
					v97 = (v43 / (2 ^ (v44 - 1))) % (2 ^ (((v45 - 1) - (v44 - 1)) + 1));
					return v97 - (v97 % 1);
				end
			end
		else
			local v98 = 0;
			local v99;
			while true do
				if (v98 == 0) then
					v99 = 2 ^ (v44 - (2 - 1));
					return (((v43 % (v99 + v99)) >= v99) and 1) or 0;
				end
			end
		end
	end
	local function v32()
		local v46 = 0;
		local v47;
		while true do
			if (v46 == 1) then
				return v47;
			end
			if (v46 == 0) then
				v47 = v9(v27, v29, v29);
				v29 = v29 + 1;
				v46 = 1;
			end
		end
	end
	local function v33()
		local v48 = 0;
		local v49;
		local v50;
		while true do
			if (v48 == 0) then
				v49, v50 = v9(v27, v29, v29 + 2);
				v29 = v29 + 2;
				v48 = 1;
			end
			if (v48 == 1) then
				return (v50 * 256) + v49;
			end
		end
	end
	local function v34()
		local v51 = 0;
		local v52;
		local v53;
		local v54;
		local v55;
		while true do
			if (v51 == 1) then
				return (v55 * 16777216) + (v54 * 65536) + (v53 * 256) + v52;
			end
			if (v51 == 0) then
				v52, v53, v54, v55 = v9(v27, v29, v29 + 3);
				v29 = v29 + 4;
				v51 = 1;
			end
		end
	end
	local function v35()
		local v56 = v34();
		local v57 = v34();
		local v58 = 1;
		local v59 = (v31(v57, 1, 20) * (2 ^ (61 - 29))) + v56;
		local v60 = v31(v57, 21, 31);
		local v61 = ((v31(v57, 32) == 1) and -(2 - 1)) or 1;
		if (v60 == 0) then
			if (v59 == 0) then
				return v61 * (619 - (555 + 64));
			else
				local v104 = 0;
				while true do
					if (v104 == 0) then
						v60 = 1;
						v58 = 0;
						break;
					end
				end
			end
		elseif (v60 == 2047) then
			return ((v59 == 0) and (v61 * (1 / 0))) or (v61 * NaN);
		end
		return v16(v61, v60 - 1023) * (v58 + (v59 / (2 ^ 52)));
	end
	local function v36(v62)
		local v63;
		if not v62 then
			local v100 = 0;
			while true do
				if (0 == v100) then
					v62 = v34();
					if (v62 == 0) then
						return "";
					end
					break;
				end
			end
		end
		v63 = v11(v27, v29, (v29 + v62) - 1);
		v29 = v29 + v62;
		local v64 = {};
		for v78 = 1, #v63 do
			v64[v78] = v10(v9(v11(v63, v78, v78)));
		end
		return v14(v64);
	end
	local v37 = v34;
	local function v38(...)
		return {...}, v20("#", ...);
	end
	local function v39()
		local v65 = 0;
		local v66;
		local v67;
		local v68;
		local v69;
		local v70;
		local v71;
		while true do
			if (2 == v65) then
				for v105 = 1, v34() do
					local v106 = 0;
					local v107;
					while true do
						if (0 == v106) then
							v107 = v32();
							if (v31(v107, 569 - (367 + 201), 1) == 0) then
								local v123 = v31(v107, 929 - (214 + 713), 3);
								local v124 = v31(v107, 4, 2 + 4);
								local v125 = {v33(),v33(),nil,nil};
								if (v123 == 0) then
									local v127 = 0;
									while true do
										if (v127 == 0) then
											v125[3] = v33();
											v125[4] = v33();
											break;
										end
									end
								elseif (v123 == 1) then
									v125[3] = v34();
								elseif (v123 == 2) then
									v125[3] = v34() - (2 ^ 16);
								elseif (v123 == 3) then
									local v138 = 0;
									while true do
										if (v138 == 0) then
											v125[3] = v34() - (2 ^ 16);
											v125[1 + 3] = v33();
											break;
										end
									end
								end
								if (v31(v124, 1, 1) == 1) then
									v125[2] = v71[v125[2]];
								end
								if (v31(v124, 2, 2) == 1) then
									v125[3] = v71[v125[3]];
								end
								if (v31(v124, 3, 3) == 1) then
									v125[4] = v71[v125[4]];
								end
								v66[v105] = v125;
							end
							break;
						end
					end
				end
				for v108 = 1, v34() do
					v67[v108 - 1] = v39();
				end
				return v69;
			end
			if (v65 == 0) then
				v66 = {};
				v67 = {};
				v68 = {};
				v69 = {v66,v67,nil,v68};
				v65 = 1;
			end
			if (v65 == 1) then
				v70 = v34();
				v71 = {};
				for v110 = 1, v70 do
					local v111 = 0;
					local v112;
					local v113;
					while true do
						if (0 == v111) then
							v112 = v32();
							v113 = nil;
							v111 = 1;
						end
						if (v111 == 1) then
							if (v112 == 1) then
								v113 = v32() ~= 0;
							elseif (v112 == 2) then
								v113 = v35();
							elseif (v112 == 3) then
								v113 = v36();
							end
							v71[v110] = v113;
							break;
						end
					end
				end
				v69[3] = v32();
				v65 = 2;
			end
		end
	end
	local function v40(v72, v73, v74)
		local v75 = v72[1];
		local v76 = v72[2];
		local v77 = v72[3];
		return function(...)
			local v80 = v75;
			local v81 = v76;
			local v82 = v77;
			local v83 = v38;
			local v84 = 1;
			local v85 = -1;
			local v86 = {};
			local v87 = {...};
			local v88 = v20("#", ...) - 1;
			local v89 = {};
			local v90 = {};
			for v101 = 0, v88 do
				if (v101 >= v82) then
					v86[v101 - v82] = v87[v101 + 1];
				else
					v90[v101] = v87[v101 + 1];
				end
			end
			local v91 = (v88 - v82) + 1;
			local v92;
			local v93;
			while true do
				local v102 = 0;
				while true do
					if (v102 == 0) then
						v92 = v80[v84];
						v93 = v92[1];
						v102 = 1;
					end
					if (v102 == 1) then
						if (v93 <= 42) then
							if (v93 <= 20) then
								if (v93 <= 9) then
									if (v93 <= 4) then
										if (v93 <= 1) then
											if (v93 > 0) then
												v90[v92[2]] = v90[v92[3]] * v90[v92[4]];
											else
												v90[v92[879 - (282 + 595)]] = v90[v92[1640 - (1523 + 114)]] % v90[v92[4]];
												v84 = v84 + 1;
												v92 = v80[v84];
												v90[v92[2]] = v73[v92[3]];
												v84 = v84 + 1 + 0;
												v92 = v80[v84];
												v90[v92[2 - 0]] = v90[v92[3]] % v90[v92[4]];
												v84 = v84 + 1;
												v92 = v80[v84];
												v90[v92[2]] = v90[v92[3]];
												v84 = v84 + 1;
												v92 = v80[v84];
												v90[v92[2]] = v92[3];
												v84 = v84 + 1;
												v92 = v80[v84];
												v90[v92[2]] = v92[1068 - (68 + 997)];
												v84 = v84 + 1;
												v92 = v80[v84];
												v84 = v92[3];
											end
										elseif (v93 <= 2) then
											local v148 = 0;
											local v149;
											local v150;
											local v151;
											local v152;
											local v153;
											while true do
												if (v148 == 6) then
													v92 = v80[v84];
													v153 = v92[2];
													v151, v152 = v83(v90[v153](v21(v90, v153 + 1, v92[3])));
													v85 = (v152 + v153) - 1;
													v148 = 7;
												end
												if (v148 == 0) then
													v149 = nil;
													v150 = nil;
													v151, v152 = nil;
													v153 = nil;
													v148 = 1;
												end
												if (8 == v148) then
													v153 = v92[2];
													v149 = v90[v153];
													for v771 = v153 + 1, v85 do
														v15(v149, v90[v771]);
													end
													break;
												end
												if (v148 == 4) then
													v90[v92[2]] = v73[v92[3]];
													v84 = v84 + 1;
													v92 = v80[v84];
													v90[v92[2]] = v90[v92[120 - (32 + 85)]];
													v148 = 5;
												end
												if (v148 == 2) then
													v84 = v84 + 1;
													v92 = v80[v84];
													v90[v92[8 - 6]] = v73[v92[3]];
													v84 = v84 + 1;
													v148 = 3;
												end
												if (v148 == 1) then
													v90[v92[2]] = v73[v92[3]];
													v84 = v84 + 1;
													v92 = v80[v84];
													v90[v92[2]] = v73[v92[1273 - (226 + 1044)]];
													v148 = 2;
												end
												if (v148 == 5) then
													v84 = v84 + 1;
													v92 = v80[v84];
													for v772 = v92[2], v92[3] do
														v90[v772] = nil;
													end
													v84 = v84 + 1;
													v148 = 6;
												end
												if (v148 == 3) then
													v92 = v80[v84];
													v90[v92[2]] = {};
													v84 = v84 + 1;
													v92 = v80[v84];
													v148 = 4;
												end
												if (v148 == 7) then
													v150 = 0;
													for v774 = v153, v85 do
														v150 = v150 + 1;
														v90[v774] = v151[v150];
													end
													v84 = v84 + 1 + 0;
													v92 = v80[v84];
													v148 = 8;
												end
											end
										elseif (v93 > 3) then
											local v259 = v92[2];
											local v260 = v90[v259];
											local v261 = v90[v259 + 2];
											if (v261 > 0) then
												if (v260 > v90[v259 + 1]) then
													v84 = v92[3];
												else
													v90[v259 + 3] = v260;
												end
											elseif (v260 < v90[v259 + 1]) then
												v84 = v92[1 + 2];
											else
												v90[v259 + 3] = v260;
											end
										elseif (v92[959 - (892 + 65)] <= v90[v92[4]]) then
											v84 = v84 + 1;
										else
											v84 = v92[3];
										end
									elseif (v93 <= 6) then
										if (v93 > 5) then
											if (v90[v92[2]] == v92[4]) then
												v84 = v84 + 1;
											else
												v84 = v92[3];
											end
										else
											local v154;
											local v155;
											local v156;
											v90[v92[2]] = {};
											v84 = v84 + 1;
											v92 = v80[v84];
											v90[v92[2]] = v92[3];
											v84 = v84 + 1;
											v92 = v80[v84];
											v90[v92[2]] = #v90[v92[3]];
											v84 = v84 + 1;
											v92 = v80[v84];
											v90[v92[2]] = v92[3];
											v84 = v84 + 1;
											v92 = v80[v84];
											v156 = v92[2];
											v155 = v90[v156];
											v154 = v90[v156 + 2];
											if (v154 > 0) then
												if (v155 > v90[v156 + 1]) then
													v84 = v92[3];
												else
													v90[v156 + 3] = v155;
												end
											elseif (v155 < v90[v156 + 1]) then
												v84 = v92[3];
											else
												v90[v156 + 3] = v155;
											end
										end
									elseif (v93 <= 7) then
										local v163 = 0;
										local v164;
										while true do
											if (v163 == 0) then
												v164 = v92[2];
												v90[v164] = v90[v164](v90[v164 + 1]);
												break;
											end
										end
									elseif (v93 == (18 - 10)) then
										local v263 = v92[2];
										v90[v263] = v90[v263]();
									else
										local v265 = 0;
										local v266;
										while true do
											if (v265 == 0) then
												v266 = v92[2];
												v90[v266](v21(v90, v266 + 1, v92[3]));
												break;
											end
										end
									end
								elseif (v93 <= 14) then
									if (v93 <= 11) then
										if (v93 == (18 - 8)) then
											local v165 = 0;
											local v166;
											while true do
												if (v165 == 0) then
													v166 = v92[2];
													v90[v166](v90[v166 + 1]);
													break;
												end
											end
										else
											local v167 = 0;
											while true do
												if (v167 == 1) then
													v90[v92[2]] = v90[v92[3]] * v90[v92[354 - (87 + 263)]];
													v84 = v84 + 1;
													v92 = v80[v84];
													v167 = 2;
												end
												if (v167 == 4) then
													do
														return v90[v92[2]];
													end
													v84 = v84 + 1;
													v92 = v80[v84];
													v167 = 5;
												end
												if (v167 == 0) then
													v90[v92[2]] = v92[4 - 1] ^ v90[v92[4]];
													v84 = v84 + 1;
													v92 = v80[v84];
													v167 = 1;
												end
												if (v167 == 3) then
													v90[v92[2]] = v90[v92[3]] % v90[v92[4]];
													v84 = v84 + 1;
													v92 = v80[v84];
													v167 = 4;
												end
												if (v167 == 2) then
													v90[v92[2]] = v73[v92[3]];
													v84 = v84 + 1;
													v92 = v80[v84];
													v167 = 3;
												end
												if (5 == v167) then
													v84 = v92[3];
													break;
												end
											end
										end
									elseif (v93 <= 12) then
										local v168;
										v90[v92[2]] = v90[v92[3]][v92[4]];
										v84 = v84 + 1;
										v92 = v80[v84];
										v90[v92[2]] = v92[3] ^ v90[v92[4]];
										v84 = v84 + 1;
										v92 = v80[v84];
										v90[v92[2]] = v90[v92[3]] * v90[v92[4]];
										v84 = v84 + 1;
										v92 = v80[v84];
										v168 = v92[182 - (67 + 113)];
										do
											return v90[v168](v21(v90, v168 + 1, v92[3]));
										end
										v84 = v84 + 1;
										v92 = v80[v84];
										v168 = v92[2 + 0];
										do
											return v21(v90, v168, v85);
										end
										v84 = v84 + 1;
										v92 = v80[v84];
										v84 = v92[3];
									elseif (v93 > 13) then
										v90[v92[2]] = v74[v92[3]];
									else
										local v269 = v92[2];
										do
											return v90[v269](v21(v90, v269 + 1, v92[3]));
										end
									end
								elseif (v93 <= 17) then
									if (v93 <= 15) then
										do
											return v90[v92[2]];
										end
									elseif (v93 > 16) then
										v90[v92[2]] = v73[v92[3]];
									else
										v90[v92[2]] = v92[3];
									end
								elseif (v93 <= (44 - 26)) then
									v90[v92[2]] = v92[3] ^ v90[v92[4]];
								elseif (v93 > 19) then
									local v274 = 0;
									local v275;
									local v276;
									local v277;
									while true do
										if (v274 == 0) then
											v275 = v81[v92[3]];
											v276 = nil;
											v274 = 1;
										end
										if (v274 == 2) then
											for v1087 = 1, v92[4] do
												v84 = v84 + (953 - (802 + 150));
												local v1088 = v80[v84];
												if (v1088[1] == 50) then
													v277[v1087 - 1] = {v90,v1088[3]};
												else
													v277[v1087 - 1] = {v73,v1088[3]};
												end
												v89[#v89 + 1] = v277;
											end
											v90[v92[999 - (915 + 82)]] = v40(v275, v276, v74);
											break;
										end
										if (v274 == 1) then
											v277 = {};
											v276 = v18({}, {[v7("\205\254\228\30\114\160\2", "\122\146\161\141\112\22\197")]=function(v1090, v1091)
												local v1092 = v277[v1091];
												return v1092[1][v1092[2]];
											end,[v7("\241\70\161\131\58\61\171\1\203\97", "\101\174\25\207\230\77\84\197")]=function(v1093, v1094, v1095)
												local v1096 = 0;
												local v1097;
												while true do
													if (v1096 == 0) then
														v1097 = v277[v1094];
														v1097[1 + 0][v1097[7 - 5]] = v1095;
														break;
													end
												end
											end});
											v274 = 2;
										end
									end
								else
									local v278 = 0;
									local v279;
									while true do
										if (v278 == 0) then
											v279 = v92[2];
											v90[v279] = v90[v279](v21(v90, v279 + 1, v92[3]));
											break;
										end
									end
								end
							elseif (v93 <= 31) then
								if (v93 <= (70 - 45)) then
									if (v93 <= 22) then
										if (v93 == 21) then
											local v176 = 0;
											local v177;
											while true do
												if (v176 == 0) then
													v177 = v92[2];
													v90[v177] = v90[v177](v21(v90, v177 + 1 + 0, v85));
													break;
												end
											end
										elseif (v92[2] < v90[v92[4]]) then
											v84 = v84 + (1 - 0);
										else
											v84 = v92[3];
										end
									elseif (v93 <= 23) then
										local v178 = 0;
										local v179;
										local v180;
										local v181;
										while true do
											if (1 == v178) then
												v181 = v90[v179] + v180;
												v90[v179] = v181;
												v178 = 2;
											end
											if (v178 == 2) then
												if (v180 > 0) then
													if (v181 <= v90[v179 + 1]) then
														v84 = v92[3];
														v90[v179 + 3] = v181;
													end
												elseif (v181 >= v90[v179 + 1]) then
													v84 = v92[3];
													v90[v179 + (1190 - (1069 + 118))] = v181;
												end
												break;
											end
											if (0 == v178) then
												v179 = v92[2];
												v180 = v90[v179 + 2];
												v178 = 1;
											end
										end
									elseif (v93 > 24) then
										v90[v92[2]] = v92[3] * v90[v92[4]];
									else
										v90[v92[2]] = #v90[v92[3]];
									end
								elseif (v93 <= 28) then
									if (v93 <= 26) then
										local v182 = v92[2];
										do
											return v21(v90, v182, v182 + v92[3]);
										end
									elseif (v93 > 27) then
										v74[v92[3]] = v90[v92[2]];
									else
										local v285 = 0;
										local v286;
										while true do
											if (v285 == 7) then
												v84 = v92[3];
												break;
											end
											if (v285 == 2) then
												v92 = v80[v84];
												v90[v92[2]] = v92[3] ^ v90[v92[1 + 3]];
												v84 = v84 + 1;
												v285 = 3;
											end
											if (v285 == 6) then
												do
													return v21(v90, v286, v85);
												end
												v84 = v84 + (1 - 0);
												v92 = v80[v84];
												v285 = 7;
											end
											if (v285 == 5) then
												v84 = v84 + 1;
												v92 = v80[v84];
												v286 = v92[2];
												v285 = 6;
											end
											if (v285 == 0) then
												v286 = nil;
												v90[v92[2]] = v90[v92[3]][v92[4]];
												v84 = v84 + (2 - 1);
												v285 = 1;
											end
											if (3 == v285) then
												v92 = v80[v84];
												v90[v92[2]] = v90[v92[3]] * v90[v92[4]];
												v84 = v84 + 1;
												v285 = 4;
											end
											if (v285 == 4) then
												v92 = v80[v84];
												v286 = v92[2];
												do
													return v90[v286](v21(v90, v286 + 1, v92[3]));
												end
												v285 = 5;
											end
											if (1 == v285) then
												v92 = v80[v84];
												v90[v92[2]] = -v90[v92[3]];
												v84 = v84 + (1 - 0);
												v285 = 2;
											end
										end
									end
								elseif (v93 <= 29) then
									v90[v92[2]] = v90[v92[3]][v92[4 + 0]];
								elseif (v93 > 30) then
									v90[v92[793 - (368 + 423)]] = v90[v92[3]] + v90[v92[4]];
								else
									local v288 = 0;
									local v289;
									local v290;
									local v291;
									local v292;
									while true do
										if (v288 == 2) then
											for v1098 = v289, v85 do
												v292 = v292 + 1;
												v90[v1098] = v290[v292];
											end
											break;
										end
										if (v288 == 0) then
											v289 = v92[2];
											v290, v291 = v83(v90[v289](v21(v90, v289 + 1, v92[3])));
											v288 = 1;
										end
										if (v288 == 1) then
											v85 = (v291 + v289) - 1;
											v292 = 0 - 0;
											v288 = 2;
										end
									end
								end
							elseif (v93 <= 36) then
								if (v93 <= 33) then
									if (v93 > 32) then
										local v185;
										local v186;
										v90[v92[2]] = v73[v92[3]];
										v84 = v84 + (19 - (10 + 8));
										v92 = v80[v84];
										v90[v92[2]] = v92[3];
										v84 = v84 + 1;
										v92 = v80[v84];
										v90[v92[2]] = v92[3];
										v84 = v84 + 1;
										v92 = v80[v84];
										v186 = v92[2];
										v90[v186] = v90[v186](v21(v90, v186 + (3 - 2), v92[3]));
										v84 = v84 + 1;
										v92 = v80[v84];
										v90[v92[444 - (416 + 26)]] = v90[v92[3]][v90[v92[4]]];
										v84 = v84 + 1;
										v92 = v80[v84];
										v186 = v92[2];
										v185 = v90[v92[3]];
										v90[v186 + 1] = v185;
										v90[v186] = v185[v92[4]];
										v84 = v84 + 1;
										v92 = v80[v84];
										v186 = v92[2];
										v90[v186](v90[v186 + 1]);
										v84 = v84 + 1;
										v92 = v80[v84];
										v84 = v92[9 - 6];
									else
										local v199 = 0;
										local v200;
										while true do
											if (v199 == 0) then
												v200 = v92[2];
												v90[v200](v21(v90, v200 + 1, v85));
												break;
											end
										end
									end
								elseif (v93 <= 34) then
									if (v90[v92[2]] <= v90[v92[4]]) then
										v84 = v84 + 1;
									else
										v84 = v92[3];
									end
								elseif (v93 == 35) then
									if v90[v92[2]] then
										v84 = v84 + 1;
									else
										v84 = v92[3];
									end
								else
									local v294 = 0;
									while true do
										if (v294 == 0) then
											v90[v92[2]] = v90[v92[3]] % v90[v92[4]];
											v84 = v84 + 1;
											v92 = v80[v84];
											v294 = 1;
										end
										if (v294 == 1) then
											v90[v92[1 + 1]] = v73[v92[3]];
											v84 = v84 + 1;
											v92 = v80[v84];
											v294 = 2;
										end
										if (v294 == 2) then
											v90[v92[2]] = v90[v92[3]] % v90[v92[4]];
											v84 = v84 + 1;
											v92 = v80[v84];
											v294 = 3;
										end
										if (v294 == 3) then
											v90[v92[2]] = v90[v92[3]];
											v84 = v84 + 1;
											v92 = v80[v84];
											v294 = 4;
										end
										if (v294 == 4) then
											v90[v92[3 - 1]] = v92[3];
											break;
										end
									end
								end
							elseif (v93 <= 39) then
								if (v93 <= 37) then
									local v201 = 0;
									local v202;
									local v203;
									local v204;
									local v205;
									local v206;
									while true do
										if (v201 == 13) then
											v205 = v90[v92[3]];
											v90[v206 + 1] = v205;
											v90[v206] = v205[v92[4]];
											v84 = v84 + 1;
											v92 = v80[v84];
											v90[v92[2]] = v73[v92[3]];
											v84 = v84 + 1;
											v92 = v80[v84];
											v90[v92[2]] = v92[3];
											v201 = 14;
										end
										if (v201 == 16) then
											v92 = v80[v84];
											v206 = v92[2];
											v90[v206] = v90[v206](v21(v90, v206 + 1 + 0, v85));
											v84 = v84 + 1;
											v92 = v80[v84];
											v90[v92[2]]();
											v84 = v84 + 1;
											v92 = v80[v84];
											v90[v92[2]] = v92[2 + 1];
											v201 = 17;
										end
										if (v201 == 3) then
											v84 = v84 + 1;
											v92 = v80[v84];
											v90[v92[2]] = v73[v92[3]];
											v84 = v84 + 1;
											v92 = v80[v84];
											v90[v92[432 - (44 + 386)]] = v92[3];
											v84 = v84 + (1487 - (998 + 488));
											v92 = v80[v84];
											v90[v92[2]] = v92[3];
											v201 = 4;
										end
										if (v201 == 2) then
											v84 = v84 + 1;
											v92 = v80[v84];
											v206 = v92[2];
											v205 = v90[v92[3]];
											v90[v206 + 1] = v205;
											v90[v206] = v205[v92[4]];
											v84 = v84 + 1;
											v92 = v80[v84];
											v90[v92[2]] = {};
											v201 = 3;
										end
										if (v201 == 14) then
											v84 = v84 + 1;
											v92 = v80[v84];
											v90[v92[2]] = v92[3];
											v84 = v84 + (3 - 2);
											v92 = v80[v84];
											v206 = v92[2];
											v203, v204 = v83(v90[v206](v21(v90, v206 + 1, v92[3])));
											v85 = (v204 + v206) - 1;
											v202 = 0;
											v201 = 15;
										end
										if (v201 == 0) then
											v202 = nil;
											v203, v204 = nil;
											v205 = nil;
											v206 = nil;
											v90[v92[2]] = v73[v92[3]];
											v84 = v84 + 1;
											v92 = v80[v84];
											v90[v92[2]] = v92[3];
											v84 = v84 + 1;
											v201 = 1;
										end
										if (v201 == 6) then
											v206 = v92[2];
											v90[v206] = v90[v206](v21(v90, v206 + 1, v92[3]));
											v84 = v84 + 1;
											v92 = v80[v84];
											v90[v92[2]][v90[v92[3]]] = v92[4 + 0];
											v84 = v84 + 1;
											v92 = v80[v84];
											v90[v92[2]] = v73[v92[3]];
											v84 = v84 + 1;
											v201 = 7;
										end
										if (v201 == 5) then
											v90[v92[2]] = v73[v92[3]];
											v84 = v84 + 1;
											v92 = v80[v84];
											v90[v92[2]] = v92[3];
											v84 = v84 + 1;
											v92 = v80[v84];
											v90[v92[2]] = v92[3];
											v84 = v84 + 1;
											v92 = v80[v84];
											v201 = 6;
										end
										if (v201 == 8) then
											v84 = v84 + 1;
											v92 = v80[v84];
											v90[v92[2]] = v73[v92[3]];
											v84 = v84 + 1;
											v92 = v80[v84];
											v90[v92[2]] = v92[3];
											v84 = v84 + 1;
											v92 = v80[v84];
											v90[v92[2]] = v92[3];
											v201 = 9;
										end
										if (4 == v201) then
											v84 = v84 + 1;
											v92 = v80[v84];
											v206 = v92[2];
											v90[v206] = v90[v206](v21(v90, v206 + 1 + 0, v92[3]));
											v84 = v84 + 1;
											v92 = v80[v84];
											v90[v92[2]][v90[v92[3]]] = v92[4];
											v84 = v84 + 1;
											v92 = v80[v84];
											v201 = 5;
										end
										if (v201 == 12) then
											v84 = v84 + 1;
											v92 = v80[v84];
											v90[v92[2]] = v74[v92[3]];
											v84 = v84 + 1;
											v92 = v80[v84];
											v90[v92[2]] = v74[v92[3]];
											v84 = v84 + 1;
											v92 = v80[v84];
											v206 = v92[2];
											v201 = 13;
										end
										if (v201 == 7) then
											v92 = v80[v84];
											v90[v92[2]] = v92[3];
											v84 = v84 + 1;
											v92 = v80[v84];
											v90[v92[2]] = v92[3];
											v84 = v84 + 1;
											v92 = v80[v84];
											v206 = v92[774 - (201 + 571)];
											v90[v206] = v90[v206](v21(v90, v206 + 1, v92[3]));
											v201 = 8;
										end
										if (v201 == 17) then
											v84 = v84 + 1;
											v92 = v80[v84];
											v84 = v92[888 - (261 + 624)];
											break;
										end
										if (9 == v201) then
											v84 = v84 + 1;
											v92 = v80[v84];
											v206 = v92[2];
											v90[v206] = v90[v206](v21(v90, v206 + (1139 - (116 + 1022)), v92[3]));
											v84 = v84 + 1;
											v92 = v80[v84];
											v90[v92[2]][v90[v92[3]]] = v90[v92[4]];
											v84 = v84 + 1;
											v92 = v80[v84];
											v201 = 10;
										end
										if (v201 == 15) then
											for v783 = v206, v85 do
												v202 = v202 + 1;
												v90[v783] = v203[v202];
											end
											v84 = v84 + 1;
											v92 = v80[v84];
											v206 = v92[2];
											v203, v204 = v83(v90[v206](v21(v90, v206 + (860 - (814 + 45)), v85)));
											v85 = (v204 + v206) - (2 - 1);
											v202 = 0;
											for v786 = v206, v85 do
												local v787 = 0;
												while true do
													if (v787 == 0) then
														v202 = v202 + 1;
														v90[v786] = v203[v202];
														break;
													end
												end
											end
											v84 = v84 + 1;
											v201 = 16;
										end
										if (v201 == 1) then
											v92 = v80[v84];
											v90[v92[2]] = v92[3];
											v84 = v84 + 1;
											v92 = v80[v84];
											v206 = v92[2];
											v90[v206] = v90[v206](v21(v90, v206 + 1, v92[3]));
											v84 = v84 + (439 - (145 + 293));
											v92 = v80[v84];
											v90[v92[2]] = v90[v92[3]][v90[v92[4]]];
											v201 = 2;
										end
										if (v201 == 11) then
											v206 = v92[2];
											v90[v206] = v90[v206](v21(v90, v206 + 1, v92[2 + 1]));
											v84 = v84 + 1;
											v92 = v80[v84];
											v90[v92[7 - 5]][v90[v92[3]]] = v92[4];
											v84 = v84 + 1;
											v92 = v80[v84];
											v206 = v92[2];
											v90[v206](v21(v90, v206 + 1, v92[3]));
											v201 = 12;
										end
										if (v201 == 10) then
											v90[v92[2]] = v73[v92[3]];
											v84 = v84 + 1;
											v92 = v80[v84];
											v90[v92[2]] = v92[12 - 9];
											v84 = v84 + 1;
											v92 = v80[v84];
											v90[v92[2]] = v92[3];
											v84 = v84 + 1;
											v92 = v80[v84];
											v201 = 11;
										end
									end
								elseif (v93 == 38) then
									v90[v92[3 - 1]] = v90[v9
