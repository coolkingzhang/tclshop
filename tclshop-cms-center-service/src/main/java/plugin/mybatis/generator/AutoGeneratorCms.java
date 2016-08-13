package plugin.mybatis.generator;

import com.baomidou.mybatisplus.annotations.IdType;
import com.baomidou.mybatisplus.generator.AutoGenerator;
import com.baomidou.mybatisplus.generator.ConfigGenerator;

/**
 * <p>
 * 自动生成映射工具类测试
 * </p>
 * 
 * @author hubin
 * @Date 2016-04-25
 */
public class AutoGeneratorCms extends ConfigGeneratorConfig {

	/**
	 * 测试 run 执行
	 * <p>
	 * 配置方法查看 {@link ConfigGenerator}
	 * </p>
	 */
	public static void main(String[] args) {
		ConfigGenerator cg = getConfigGenerator();

		/* mysql 数据库相关配置 */
		cg.setDbDriverName("com.mysql.jdbc.Driver");
		cg.setDbUser("tclcms_test");
		cg.setDbPassword("tclnews2016");
		cg.setDbUrl("jdbc:mysql://10.68.24.31:3306/tclcms_test?useUnicode=true&characterEncoding=utf-8");

		/*
		 * 表主键 ID 生成类型, 自增该设置无效。 <p> IdType.AUTO 数据库ID自增 IdType.INPUT 用户输入ID
		 * IdType.ID_WORKER 全局唯一ID，内容为空自动填充（默认配置） IdType.UUID 全局唯一ID，内容为空自动填充
		 * </p>
		 */
		cg.setIdType(IdType.AUTO);

		/*
		 * 指定生成表名（默认，所有表）
		 */
		// cg.setTableNames(new String[]{"user"});

		AutoGenerator.run(cg);
	}
}