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
		},
		['Script Logic'] = {
			['FFA Mode'] = true, --[[ Keep on for hood games ]]
			['Global Wall Check'] = true --[[ Checks if a player is behind a wall before locking on ]]
		}
	},
	['Binds'] = {
		['LockOn'] = 'T',
		['Unlock'] = 'Z', --[[ Only works with double bind ]]
		['AimAssist Toggle'] = 'B',
		['Silent Toggle'] = 'P',
		['Triggerbot'] = 'Q',
		['AntiLock'] = 'Y',
		['Specific ESP'] = 'T',
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
		['Prediction'] = 0.129,
		['Draw Hit'] = true, 
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
		['Mode'] = 'Target', --[[ Target / Regular ]]--
		['Double Bind'] = false,
		['Radius'] = 100,
		['Stutter'] = 1,
		['Stickiness'] = 1,
		['Prediction'] = 0.135,
		['Readjustment'] = false,
		['Legacy Smoothing'] = true, --[[ Whole number smoothing (30, 50 etc), Disable to use decimals ]]--
		['Hit Location'] = {
			['Hit Target'] = 'R15', --[[ Nearest Point / Center Point /, Nearest Part, R15 ]]--
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
			['Smoothing'] = 350,
			['Easing'] = {
				['Style'] = 'Linear',
				['Formula'] = function(d, s)
					return(d / s^s) - tick()
				end,
			},
		},
		['Randomization'] = {
			['X'] = 0,
			['Y'] = 0,
			['Z'] = 0,
		},
		['Unlock Conditions'] = {
			['Shift Lock'] = false,
			['Third Person'] = false,
			['Chat Focused'] = false,
			['Tool Equipped'] = false,
			['Wall Check'] = false,
			['FOV Check'] = false,
			['Visible'] = false,
		},
	},
	['Triggerbot'] = {
		['Enabled'] = false,
		['Interval'] = 1,
		['Tolerance'] = 0.5,
		['Cooldown 1'] = 0.1275,
		['Cooldown 2'] = 0.12,
		['Prediction'] = 0.06,
		['FOVType'] = 'CircleFOV',
		['Activation'] = {
			['Mode'] = 'Keybind', --[[ Mouse / Keybind ]]--
			['Type'] = 'Toggle', --[[ Toggle / Hold ]]--
		},
		['Silent Link'] = false, --[[ Adjusts the triggerbot depending on Silent Aim ]]--
	},
	['Helpers'] = {
		['DisableYAxis'] = false,
		['Bullet Curvation'] = {	
			['Enabled'] = true,
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
			['Visible'] = true,
			['Thickness'] = 1,
			['Color'] = Color3.fromRGB(199, 166, 163),
			['Unsafe Color'] = Color3.fromRGB(255, 0, 0),
			['Transparency'] = 1,
			['Center'] = false,
			['Position'] = {
				['X'] = workspace.CurrentCamera.ViewportSize.X / 2 - 5,
				['Y'] = workspace.CurrentCamera.ViewportSize.Y / 2 - 300
			},
			['Min Scan'] = 3,
			['Max Scan Radius'] = 150
		}
	},
	['Visuals'] = {
		['Load Check'] = false, --[[ Hide visuals on start ]]--
		['Global ESP'] = {
			['Enabled'] = true,
			['Team Check'] = true,
			['Max Draw Distance'] = math.huge,
			['Text Size'] = 10,
			['Fade Effect'] = {
				['On Distance'] = true,
			},
			['Drawing'] = {
				['Names'] = {
					['Enabled'] = true,
					['Color'] = Color3.fromRGB(180, 207, 227),
				},
				['Distance'] = {
					['Enabled'] = true, 
					['Docked'] = false,
					['Color'] = Color3.fromRGB(180, 207, 227),
				},
				['Health'] = {
					['Enabled'] = true,  
					['Text'] = true, 
					['Health Based'] = true, 
					['Text Color'] = Color3.fromRGB(239, 193, 193), 
					['Width'] = 2.5,
					['Gradient'] = true, 
					['Alpha Color'] = Color3.fromRGB(239, 193, 193), 
					['Depth Color'] = Color3.fromRGB(239, 193, 193), 
					['Color Keypoint'] = Color3.fromRGB(202, 219, 247), 
				},
				['Boxes'] = {
					['Enabled'] = false,
					['Box Type'] = 'Bounding Box', -- Corner, Bounding Box
					['Bounding Box'] = {
						['Animate'] = true,
						['Animate Speed'] = 50,
						['Gradient'] = true, 
						['Alpha Color'] = Color3.fromRGB(239, 193, 193), 
						['Depth Color'] = Color3.fromRGB(239, 193, 193), 
						['Filled Color Scheme'] = true, 
						['Fill Color'] = Color3.fromRGB(202, 219, 247), 
						['Fill Glow'] = Color3.fromRGB(239, 193, 193),
						['Filled'] = {
							['Enabled'] = true,
							['Transparency'] = 0.50,
							['Color'] = Color3.fromRGB(239, 193, 193), 
						},
					},
					['Corner'] = {
						['Color'] = Color3.fromRGB(226, 181, 181),
					},
				},
			},
		},
		['Specific ESP'] = {
			['Visible'] = false,
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
		['Crosshair'] = {
			['Visible'] = false,
			['Stutter'] = 0,
			['Docked'] = false,
			['Width'] = 1.5,
			['Length'] = 15,
			['Radius'] = 5,
			['Color'] = Color3.fromRGB(180, 207, 227),
			['Rotate'] = true, 
			['Rotate Speed'] = 150,
			['Max Angle'] = 360,
			['Lerp Style'] = Enum.EasingStyle.Linear,
			['Fluctuate'] = false,
			['Fluctuate Speed'] = 150,
			['Fluctuate Min'] = 5,
			['Fluctuate Max'] = 22,
			['Labels'] = {
				['Name'] = {
					['Visible'] = true, 
					['Text'] = 'nemesis',
					['Color'] =  Color3.fromRGB(180, 207, 227)
				},
				['Extension'] = { 
					['Visible'] = true,
					['Text'] = '.space',
					['Color'] = Color3.fromRGB(180, 207, 227)
				},
				['Current Target'] = {
					['Visible'] = false,
					['Color'] = Color3.fromRGB(255, 255, 255),
				},
				['Current Target Health'] = {
					['Visible'] = false,
					['Color'] = Color3.fromRGB(165, 255, 191),
				}
			}
		},
		['Visualization'] = {
			['Assist'] = {
				['Visible'] = false,
				['Filled'] = true,
				['Transparency'] = 0.4,
				['Color'] = Color3.fromRGB(221, 130, 240),
			},
			['Silent'] = {
				['BoxFOV'] = {
					['Visible'] = false,
					['Thickness'] = 1,
					['TargetColor'] = Color3.fromRGB(255, 0, 0),
					['Color'] = Color3.fromRGB(180, 207, 227),
					['Transparency'] = 1,
				},
				['CircleFOV'] = {
					['Visible'] = false,
					['Filled'] = false,
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
			['Enabled'] = false,
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
				['Width'] = 1.2,
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
