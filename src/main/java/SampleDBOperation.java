 
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import com.sge.model.VendorModel;

public class SampleDBOperation extends JdbcDaoSupport {


	private static final DriverManagerDataSource dataSource = new DriverManagerDataSource();
	private static JdbcTemplate jdbcTemplate;

	public static void main(String[] args) {

		SampleDBOperation dbOperation = new SampleDBOperation();
		configureDataSource();
		jdbcTemplate = new JdbcTemplate(dataSource);
		dbOperation.executeDBOperation();
	}

	private static void configureDataSource() {
		try {
			System.out.println("Data source configuration started");
			dataSource.setDriverClassName("oracle.jdbc.driver.OracleDriver");
			dataSource.setUrl("jdbc:oracle:thin:@localhost:1521:xe");
			dataSource.setUsername("gpe");
			dataSource.setPassword("gpe123");
			System.out.println("Data source configuration completed");
		} catch (Exception e) {
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
	}

	private void executeDBOperation() {
		String sqlQuery = "select * from SG_VENDOR_MASTER where VENDOR_ID=1";
		VendorModel vendor = jdbcTemplate.queryForObject(sqlQuery, VendorModel.class);
		System.out.println(vendor.getVendorCompanyName());

	}

}
