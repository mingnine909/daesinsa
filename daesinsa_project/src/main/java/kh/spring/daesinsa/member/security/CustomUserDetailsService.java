package kh.spring.daesinsa.member.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import kh.spring.daesinsa.member.model.dao.MemberDao;

public class CustomUserDetailsService implements UserDetailsService {
	
	@Autowired
	private MemberDao memberDao;
	

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		CustomUserDetails users = memberDao.getUserById(username);
		if(users == null) {
			 throw new UsernameNotFoundException("username " + username + " not found");
		}
		System.out.println("=========Found user=========");
		System.out.println("id : " + users.getUsername());
		return users;
	}
	

}
