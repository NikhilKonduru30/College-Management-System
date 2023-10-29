package Controller;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class StudentDao {
	private Connection conn;

	public StudentDao(Connection conn) {
		super();
		this.conn = conn;
	}
	public List<Student> getAllStudent() {
		List<Student> list = new ArrayList<Student>();
		Student d= null;
		try {

			String sql = "select * from student";
			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				d = new Student();
				d.setName(rs.getString(1));
				d.setEmail(rs.getString(2));
				d.setPassword(rs.getString(3));
				d.setDate(rs.getString(4));
				d.setGender(rs.getString(5));
				d.setCourse(rs.getString(6));
				d.setAddress(rs.getString(7));
				list.add(d);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public Student getStudentById(String id) {

		Student d = null;
		try {

			String sql = "select * from student where email=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, id);
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				d=new Student();
				d.setName(rs.getString(1));
				d.setEmail(rs.getString(2));
				d.setPassword(rs.getString(3));
				d.setDate(rs.getString(4));
				d.setGender(rs.getString(5));
				d.setCourse(rs.getString(6));
				d.setAddress(rs.getString(7));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return d;
	}
	public boolean deleteStudent(String email) {
		boolean f = false;
		try {
			String sql = "delete from student where email=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, email);

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}
}
