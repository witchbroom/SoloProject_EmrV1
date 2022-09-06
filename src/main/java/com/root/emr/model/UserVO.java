package com.root.emr.model;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class UserVO {
	
	private static final long serialVersionUID = 1L;

	private String username;
	private String password;
	private boolean enabled;
	private boolean accountNonExpired;
	private boolean accountNonLocked;
	private boolean credentialsNonExpired;
	private Collection<? extends GrantedAuthority> authorities; // getAuthorities

	private String email;
	private String phone;
	private String address;
	
	private String realname;
	private String nickname;

}
