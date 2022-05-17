package com.junefw.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/rest/member")
public class MemberRestController {

	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	//getMapping("")
	public List<Member> selectRestList(MemberVo vo) throws Exception {
		List<Member> list = service.selectRestList(vo);
		return list;
	}
	
	@RequestMapping(value = "/{seq}", method = RequestMethod.GET)
	//getMapping("/{seq}")
	public Member selectone(@PathVariable String seq, MemberVo vo) throws Exception {
		vo.setIfmmSeq(seq);
		Member item = service.selectOne(vo);
		return item;
	}
	
	@RequestMapping(value = "", method = RequestMethod.POST)
	//getMapping("")
	public String insertPost(@RequestBody Member dto) throws Exception {
		service.insertPost(dto); 
		return dto.getIfmmSeq();
	}
	
	@RequestMapping(value = "/{seq}", method = RequestMethod.PATCH)
	//getMapping("/{seq}")
	public void update(@PathVariable String seq, @RequestBody Member dto) throws Exception {
		dto.setIfmmSeq(seq);
		service.update(dto);
	}

	@RequestMapping(value = "", method = RequestMethod.DELETE)
	//getMapping("/{seq}")
	public void updateDelete(@RequestBody MemberVo vo) throws Exception {
		service.updateDelete(vo);
	}
}
