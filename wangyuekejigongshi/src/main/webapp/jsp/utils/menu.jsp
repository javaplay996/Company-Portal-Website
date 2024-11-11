<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

var menus = [

	{
        "backMenu":[
            {
                "child":[
                    {
                        "buttons":[
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"管理员管理",
                        "menuJump":"列表",
                        "tableName":"users"
                    }
                ],
                "menu":"管理员信息"
            }
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"用户管理",
			            "menuJump":"列表",
			            "tableName":"yonghu"
			        }
			    ],
			    "menu":"用户管理"
			}
            
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"产品管理",
                        "menuJump":"列表",
                        "tableName":"chanpin"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "修改",
                            "删除"
                        ],
                        "menu":"产品留言管理",
                        "menuJump":"列表",
                        "tableName":"chanpinLiuyan"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"产品收藏管理",
                        "menuJump":"列表",
                        "tableName":"chanpinCollection"
                    }
                ],
                "menu":"产品管理"
            }
            ,{
                "child":[
                    {
                        "buttons":[
                            "查看",
                            "新增",
                            "修改",
                            "删除"
                        ],
                        "menu":"团队管理",
                        "menuJump":"列表",
                        "tableName":"tuandui"
                    }
                    ,
                    {
                        "buttons":[
                            "查看",
                            "修改",
                            "删除"
                        ],
                        "menu":"团队留言管理",
                        "menuJump":"列表",
                        "tableName":"tuanduiLiuyan"
                    }
                ],
                "menu":"团队管理"
            }
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"产品类型管理",
			            "menuJump":"列表",
			            "tableName":"dictionaryChanpin"
			        }
			        ,
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"新闻类型管理",
			            "menuJump":"列表",
			            "tableName":"dictionaryNews"
			        }
			
			    ],
			    "menu":"基础数据管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"轮播图管理",
			            "menuJump":"列表",
			            "tableName":"config"
			        }
			    ],
			    "menu":"轮播图管理"
			}
,{
"child":[
{
"buttons":[
"查看",
"新增",
"修改",
"删除"
],
"menu":"单页数据管理",
"menuJump":"列表",
"tableName":"singleSeach"
}
],
"menu":"单页数据管理"
}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看",
			                "新增",
			                "修改",
			                "删除"
			            ],
			            "menu":"新闻管理",
			            "menuJump":"列表",
			            "tableName":"news"
			        }
			    ],
			    "menu":"新闻管理"
			}
        ],
        "frontMenu":[

        ],
        "roleName":"管理员",
        "tableName":"users"
    },
	{
	    "backMenu":[
	        {
	            "child":[
	                {
	                    "buttons":[
	                        "查看"
	                    ],
	                    "menu":"产品管理",
	                    "menuJump":"列表",
	                    "tableName":"chanpin"
	                }
	                ,
	                {
	                    "buttons":[
	                        "查看",
	                        "删除"
	                    ],
	                    "menu":"产品留言管理",
	                    "menuJump":"列表",
	                    "tableName":"chanpinLiuyan"
	                }
	                ,
	                {
	                    "buttons":[
	                        "查看",
	                        "删除"
	                    ],
	                    "menu":"产品收藏管理",
	                    "menuJump":"列表",
	                    "tableName":"chanpinCollection"
	                }
	            ],
	            "menu":"产品管理"
	        }
	        ,{
	            "child":[
	                {
	                    "buttons":[
	                        "查看"
	                    ],
	                    "menu":"团队管理",
	                    "menuJump":"列表",
	                    "tableName":"tuandui"
	                }
	                ,
	                {
	                    "buttons":[
	                        "查看",
	                        "删除"
	                    ],
	                    "menu":"团队留言管理",
	                    "menuJump":"列表",
	                    "tableName":"tuanduiLiuyan"
	                }
	            ],
	            "menu":"团队管理"
	        }
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看"
			            ],
			            "menu":"联系我们管理",
			            "menuJump":"列表",
			            "tableName":"singleSeach"
			        }
			    ],
			    "menu":"联系我们管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看"
			            ],
			            "menu":"公司简介管理",
			            "menuJump":"列表",
			            "tableName":"gongshijianjieSeach"
			        }
			    ],
			    "menu":"公司简介管理"
			}
			,{
			    "child":[
			        {
			            "buttons":[
			                "查看"
			            ],
			            "menu":"新闻管理",
			            "menuJump":"列表",
			            "tableName":"news"
			        }
			    ],
			    "menu":"新闻管理"
			}
	    ],
	    "frontMenu":[
	
	    ],
	    "roleName":"用户",
	    "tableName":"yonghu"
	}
];

var hasMessage = '';
