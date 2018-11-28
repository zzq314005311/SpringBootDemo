package cn.service;

import java.rmi.activation.Activator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import cn.pojo.User;

//自定义的Realm
@Component("manyRealm")
public class CustomRealm extends AuthorizingRealm {

	// 注入service
	@Autowired
	private UserService sysService;

	// 设置realm的名称
	@Override
	public void setName(String name) {
		super.setName("customRealm");
	}

	// 认证的方法
	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		// token是用户输入的用户名和密码
		// 第一步从token中取出用户名
		String userCode = (String) token.getPrincipal();

		// 第二步：根据用户输入的userCode从数据库查询用户信息
		User sysUser = null;
		try {
			sysUser = sysService.logoin(sysUser);
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		// 如果查询不到返回null
		if (sysUser == null) {
			return null;
		}

		// 从数据库查询到密码
		String password = sysUser.getPwd();
		// 盐
		// String salt = sysUser.getSalt();

		// 如果查询到,返回认证信息AuthenticationInfo
		// activeUser就是用户身份信息
		/*
		 * Activator activeUser = new ActiveUser();
		 * activeUser.setUserid(sysUser.getId());
		 * activeUser.setUsercode(sysUser.getUsercode()); ((Object)
		 * activeUser).setUsername(sysUser.getName()); //..
		 * 
		 * //根据用户id取出菜单 List<User> menus = null; try { //通过service取出菜单 menus =
		 * sysService.findMenuListByUserId(sysUser.getId()); } catch (Exception
		 * e) { e.printStackTrace(); } //将用户菜单,设置到activeUser
		 * activeUser.setMenus(menus);
		 * 
		 * //将activeUser设置simpleAuthenticationInfo simpleAuthenticationInfo
		 * simpleAuthenticationInfo = new SimpleAuthenticationInfo( activeUser,
		 * password,ByteSource.Util.bytes(salt), this.getName()); return
		 * simpleAuthenticationInfo;
		 */
		return null;
	}

	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
		// 1.从PrincipalCollection中来获取用户信息
		Object principal = principalCollection.getPrimaryPrincipal();
		User user = new User();
		// List<User> list=(List<User>) sysService.logoin(user);
		user = sysService.logoin(user);
		if (user.getRold() == 1) {
			// 普通用户
		}
		if (user.getRold() == 2) {
			// 律师
		}
		/*
		 * 2.利用登录的用户信息来获取用户权限和角色(可能需要查询数据库) /*User user=new User(); List<User>
		 * user_roles = (List<User>) sysService.logoin(user); Set<String> roles
		 * = new HashSet<String>(); for (int i = 0; i < user_roles.size(); i++)
		 * { roles.add(user_roles.get(i).getAdmin_authority()); }
		 * //3.创建SimpleAuthorizationInfo,并设置reles属性
		 */
		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
		return info;
	}

}
