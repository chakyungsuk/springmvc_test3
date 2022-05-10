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
	MemberServiceImpl sercive;
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	//getMapping("")
	public List<Member> selectList(MemberVo vo) throws Exception {
		List<Member> list = sercive.selectList(vo);
		return list;
	}
	
	@RequestMapping(value = "/{seq}", method = RequestMethod.GET)
	//getMapping("/{seq}")
	public Member selectone(@PathVariable String seq, MemberVo vo) throws Exception {
		vo.setIfmmSeq(seq);
		Member item = sercive.selectOne(vo);
		return item;
	}
	
	@RequestMapping(value = "", method = RequestMethod.POST)
	//getMapping("")
	public String insert(@RequestBody Member dto) throws Exception {
		sercive.insert(dto); 
		return dto.getIfmmSeq();
	}
	
	@RequestMapping(value = "/{seq}", method = RequestMethod.PATCH)
	//getMapping("/{seq}")
	public void update(@PathVariable String seq, @RequestBody Member dto) throws Exception {
		dto.setIfmmSeq(seq);
		sercive.update(dto);
	}
}
