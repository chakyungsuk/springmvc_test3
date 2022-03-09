package com.junefw.infra.modules.test;

public class Test {

	// name.java  ----view
	private String name;
	private Integer name2;
	
	// nameVo.java  ----selelctOne
	private String name3;
	
	// nameMpp.xml
	<mapper namespace="com.junefw.infra.modules.test.TestMpp">
	
	<reslutMap id="resultMapObj" type="com.junefw.infra.modules.test.Test">
	
	<selelct id="selelctList" resultMap="resultMapObj"></selelct>
	<insert id="insert"></insert>
	<selelct id="selelctOne" resultMap="resultmapObj">
	<update id="update"></selelct>

	

	
	
	
	
}

