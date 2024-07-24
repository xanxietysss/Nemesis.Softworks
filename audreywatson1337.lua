getgenv().Script = {
	['Core'] = {
		['Key'] = '',
		['Intro'] = false, --[[ Buggy (Wave) ]]--
		['OverrideYAxis'] = 'None', --[[ Full / Partial / None ]]--
		['Script Safety'] = {
			['Unload'] = {
				['Enabled'] = false,
			},
			['Soft Panic'] = {
				['Enabled'] = false,
				['Disables'] = {'Visuals'}
			},
		}
	},
	['Binds'] = {
		['LockOn'] = 'C',
		['Unlock'] = 'Z',
		['AimAssist Toggle'] = 'B',
		['Silent Toggle'] = 'P',
		['Triggerbot'] = 'MouseButton2',
		['AntiLock'] = 'Y',
		['SpecificESP'] = 'T',
		['Macro'] = 'X',
		['NoClip'] = '-',
		['InventorySorter'] = 'H',
		['Soft Panic'] = 'L',
		['Unload Cheat'] = 'R'
	},
	['Ping Table'] = {
		['30-40'] = 0.11,
		['40-50'] = 0.115,
		['50-60'] = 0.120,
		['60-70'] = 0.123,
		['70-80'] = 0.129,
		['80-90'] = 0.130,
		['90-100'] = 0.134,
		['100-110'] = 0.139,
		['110-120'] = 0.144,
		['120-130'] = 0.149,
		['130-140'] = 0.1274,
		['140-150'] = 0.1575,
	},
	['Silent'] = {
		['Enabled'] = true,
		['Mode'] = 'Regular', --[[ Target / Regular ]]--
		['HitScan'] = 'Automatic', --[[ On Shot / Automatic ]]--
		['FOVType'] = 'CircleFOV', --[[ BoxFOV / CircleFOV ]]--
		['HitChance'] = {
			['HitChance'] = 100,
			['Miss Chance'] = 0, -- 10%
		},
		['Prediction'] = 0.145,
		['Draw Hit'] = false, 
		['Auto Prediction'] = false,
		['Prediction Adjustment'] = 1,
		['Hit Location'] = {
			['Hit Target'] = 'Nearest Point', --[[ Nearest Point / Center Point /, Nearest Part, R15 ]]--
			['R15'] = {'Head'}
		},
		['Prediction Points'] = { --[[ Will set your prediction depending on the part your aiming nearest to ]]--
			['Enabled'] = false,
			['Hit Points'] = {
				['Head'] = 0.011,
				['UpperTorso'] = 0.135,
				['LowerTorso'] = 0.127,
				['HumanoidRootPart'] = 0.127,
				['LeftUpperArm'] = 0.127,
				['LeftLowerArm'] = 0.127,
				['LeftHand'] = 0.127,
				['RightUpperArm'] = 0.127,
				['RightLowerArm'] = 0.127,
				['RightHand'] = 0.127,
				['LeftUpperLeg'] = 0.127,
				['LeftLowerLeg'] = 0.127,
				['LeftFoot'] = 0.127,
				['RightUpperLeg'] = 0.127,
				['RightLowerLeg'] = 0.127,
				['RightFoot'] = 0.127,
			}			
		},
	},
	['Aiming'] = {
		['Enabled'] = true,
		['Radius'] = 100,
		['Stutter'] = 5,
		['Stickiness'] = 1,
		['Prediction'] = 0.135,
		['Readjustment'] = false,
		['Legacy Smoothing'] = true, --[[ Whole number smoothing (30, 50 etc), Disable to use decimals ]]--
		['Hit Location'] = {
			['Hit Target'] = 'Center Point', --[[ Nearest Point / Center Point /, Nearest Part, R15 ]]--
			['R15'] = {'Head'}
		},
		['HitChance'] = {
			['HitChance'] = 100,
			['Miss Chance'] = 0,
		},
		['Prediction Points'] = { --[[ Will set your prediction depending on the part your aiming nearest to ]]--
			['Enabled'] = false,
			['Hit Points'] = {
				['Head'] = 0.127,
				['UpperTorso'] = 0.06,
				['LowerTorso'] = 0.06,
				['HumanoidRootPart'] = 0.127,
				['LeftUpperArm'] = 0.06,
				['LeftLowerArm'] = 0.06,
				['LeftHand'] = 0.06,
				['RightUpperArm'] = 0.06,
				['RightLowerArm'] = 0.06,
				['RightHand'] = 0.06,
				['LeftUpperLeg'] = 0.06,
				['LeftLowerLeg'] = 0.06,
				['LeftFoot'] = 0.06,
				['RightUpperLeg'] = 0.06,
				['RightLowerLeg'] = 0.06,
				['RightFoot'] = 0.06,
			}			
		},
		['Smoothing'] = {
			['Smoothing'] = 1000,
			['Easing'] = {
				['Style'] = 'Custom',
				['Formula'] = function(d, s)
					return(d / s^s) - tick()
				end,
			},
		},
		['Randomization'] = {
			['X'] = 0.7,
			['Y'] = 0.7,
			['Z'] = 0.7,
		},
		['Unlock Conditions'] = {
			['Shift Lock'] = false,
			['Third Person'] = false,
			['Chat Focused'] = false,
			['Tool Equipped'] = false,
			['Behind Wall'] = true,
			['Visible'] = true,
		},
	},
	['Triggerbot'] = {
		['Enabled'] = true,
		['Interval'] = 1,
		['Cooldown 1'] = 0.1275,
		['Cooldown 2'] = 0.12,
		['Prediction'] = 0.06,
		['FOVType'] = 'CircleFOV',
		['Activation'] = {
			['Mode'] = 'Mouse', --[[ Mouse / Keybind ]]--
			['Type'] = 'Hold', --[[ Toggle / Hold ]]--
		},
		['Silent Link'] = false, --[[ Adjusts the triggerbot depending on Silent Aim ]]--
	},
	['Helpers'] = {
		['DisableYAxis'] = false,
		['Bullet Curvation'] = {	
			['Enabled'] = false,
			['Formula'] = '3D', --[[ 3D, 2D ]]--
			['2D'] = {
				['X'] = 300,
				['Y'] = 360,
			},
			['3D'] = {
				['Angle'] = 4.6,
			},
			['Logger'] = true --[[ Print information ]]--
		},
		['Location Assist'] = {
			['Visible'] = false,
			['Thickness'] = 1,
			['Color'] = Color3.fromRGB(199, 166, 163),
			['Unsafe Color'] = Color3.fromRGB(255, 0, 0),
			['Transparency'] = 1,
			['Center'] = false,
			['Position'] = {
				['X'] = workspace.CurrentCamera.ViewportSize.X / 2 - 5,
				['Y'] = workspace.CurrentCamera.ViewportSize.Y / 2 - 300
			},
			['Min Scan'] = 5,
			['Max Scan Radius'] = 50
		}
	},
	['Visuals'] = {
		['Load Check'] = false, --[[ Hide visuals on start ]]--
		['SpecificESP'] = {
			['Visible'] = true,
			['EnemyColor'] = Color3.fromRGB(202, 219, 247),
			['AllyColor'] = Color3.fromRGB(32, 209, 29),
			['Thickness'] = 1,
			['Transparency'] = 0.7,
			['Modules'] = {
				['Name'] = {
					['Visible'] = true,
					['Size'] = 9,
					['Outline'] = true,
					['OutlineColor'] = Color3.fromRGB(0, 0, 0),
					['Transparency'] = 1,
				},
				['Distance'] = {
					['Visible'] = true,
					['Size'] = 9,
					['Outline'] = true,
					['OutlineColor'] = Color3.fromRGB(0, 0, 0),
					['Transparency'] = 1,
				},
			},
		},
		['Panel'] = {
			['Visible'] = false, --[[ Information helper / panel ]]--
			['Thickness'] = 1,
			['Color'] = Color3.fromRGB(255, 255, 255),
			['Transparency'] = 0.7,
			['Center'] = false,
			['Position'] = {
				['X'] = workspace.CurrentCamera.ViewportSize.X / 2 - 700,
				['Y'] = workspace.CurrentCamera.ViewportSize.Y / 2 - 30
			}
		},
		['Tracer'] = {
			['Visible'] = false,
			['Thickness'] = 1,
			['Color'] = Color3.fromRGB(255, 255, 255),
			['Transparency'] = 0.7,
		},
		['Visualization'] = {
			['Silent'] = {
				['BoxFOV'] = {
					['Visible'] = false,
					['Thickness'] = 1,
					['TargetColor'] = Color3.fromRGB(255, 0, 0),
					['Transparency'] = 1,
				},
				['CircleFOV'] = {
					['Visible'] = true,
					['Filled'] = true,
					['Transparency'] = 0.4,
					['Color'] = Color3.fromRGB(221, 130, 240),
				},
			},
			['Triggerbot'] = {
				['BoxFOV'] = {
					['Visible'] = false,
					['Thickness'] = 3,
					['TargetColor'] = Color3.fromRGB(231, 126, 222),
					['Transparency'] = 1,
				},
				['CircleFOV'] = {
					['Visible'] = false,
					['Filled'] = true,
					['Transparency'] = 0.3,
					['Color'] = Color3.fromRGB(67, 39, 68),
				},
			},
		},
	},
	['Misc'] = {
		['RemoveSeats'] = true,
		['AntiFling'] = false,
		['AntiLock'] = {
			['Enabled'] = false,
			['Type'] = 'Prediction Disabler', --[[ Sides, Prediction Disabler ]]--
		},	
		['Macro'] = {
			['Enabled'] = false,
			['Gun Macro'] = {
				['Mode'] = 'Hold',
				['Type'] = 'ThirdPerson', --[[ ThirdPerson, FirstPerson ]]--
				['MacroAbuseBypass'] = true,
			},
			['NoClip Macro'] = {
				['Enabled'] = false,
				['Delay'] = 0.03
			}
		},
		['InventorySorter'] = {
			['Enabled'] = true,
			['Priorities'] = { -- [[ Case Sensitive ]]--
				'[Double-Barrel SG]', 
                '[Revolver]', 
                '[TacticalShotgun]',
                '[Knife]'
			},
		},
	},
	['Range Index'] = { --[[ Distances ]]--
		['Short'] = 15,
		['Medium'] = 30,
		['Long'] = math.huge,
	},
	['FOVs'] = {
		['Silent'] = {
			['BoxFOV'] = {
				['Bind To Silent'] = false, --[[ Make your box move with your silent ]]--
				['Height'] = 2,
				['Width'] = 1,
			},
			['CircleFOV'] = { --[[ Short, Medium, Long ]]--
				['Revolver'] = { 32, 32, 32 },
				['DoubleBarrel'] = { 75, 75, 75 },
				['Shotgun'] = { 75, 75, 75 },
				['TacticalShotgun'] = { 75, 75, 75 },
				['SMG'] = { 75, 75, 75 },
				['Silencer'] = { 75, 75, 75 },
				['AssaultRifle'] = { 75, 75, 75 },
				['Others'] = { 75, 75, 75 },
			},
		},
		['Triggerbot'] = {
			['BoxFOV'] = {
				['Height'] = 1.3,
				['Width'] = 1.3,
			},
			['CircleFOV'] = { --[[ Short, Medium, Long ]]--
				['Revolver'] = { 75, 50, 25 },
				['DoubleBarrel'] = { 75, 50, 25 },
				['Shotgun'] = { 75, 50, 25 },
				['TacticalShotgun'] = { 75, 50, 25 },
				['SMG'] = { 75, 50, 25 },
				['Silencer'] = { 75, 50, 25 },
				['AssaultRifle'] = { 75, 50, 25 },
				['Others'] = { 75, 50, 25 },
			},
		},
	},
}
--
loadstring(game:HttpGet('https://raw.githubusercontent.com/hookmeta/audrey-watson-hack/main/Obfuscated'))()
