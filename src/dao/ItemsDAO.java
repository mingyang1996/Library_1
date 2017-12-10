package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import entity.Items;
import entity.Reader;
import entity.Borrow;
import util.DBhelper;

//商品的业务逻辑类
public class ItemsDAO {

	// 根据书名查询
	public ArrayList<Items> getItemsById(String name) {
		Connection conn = null;
		PreparedStatement stmt = null;// 处理命令
		ResultSet rs = null;// 数据集
		 String sql="";
		ArrayList<Items> list = new ArrayList<Items>();// 商品集合 ArrayList类型
		try {
			conn = DBhelper.getConnection();// 获得连接对象
			sql = "select * from tb_bookinfo where book_name like '%" + name + "%' ; ";
			System.out.println(sql);
			stmt = conn.prepareStatement(sql);// 创建一个连接对象
			rs = stmt.executeQuery();// 执行SQL，获得数据集
			while (rs.next())// 下条记录
			{
				Items item = new Items();// 商品信息
				// 用set来封装属性
				item.setBook_id(rs.getInt("book_id"));
				item.setBook_name(rs.getString("book_name"));
				item.setBook_author(rs.getString("author"));
				item.setISBN(rs.getString("ISBN"));
				item.setPrice(rs.getFloat("price"));
				item.setBook_case(rs.getString("book_case"));
				item.setBook_intime(rs.getString("book_intime"));
				item.setPress(rs.getString("press"));
				item.setNumber(rs.getInt("Number"));
				item.setCategory(rs.getString("Category"));
				list.add(item);// 把一个商品信息加入集合
			}
		} catch (Exception ex) {
			ex.printStackTrace();// 返回异常堆栈
			return null;
		} finally// 释放资源，从小到大释放
		{
			// 释放数据集对象
			if (rs != null) {
				try {
					rs.close();
					rs = null;
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			}
			// 释放语句对象
			if (stmt != null) {
				try {
					stmt.close();
					stmt = null;
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			}
		}
		return list;
	}

	// 根据作者查询
		public ArrayList<Items> getItemsByauthor(String name) {
			Connection conn = null;
			PreparedStatement stmt = null;// 处理命令
			ResultSet rs = null;// 数据集
			 String sql="";
			ArrayList<Items> list = new ArrayList<Items>();// 商品集合 ArrayList类型
			try {
				conn = DBhelper.getConnection();// 获得连接对象
				sql = "select * from tb_bookinfo where author like '%" + name + "%' ; ";
				System.out.println(sql);
				stmt = conn.prepareStatement(sql);// 创建一个连接对象
				rs = stmt.executeQuery();// 执行SQL，获得数据集
				while (rs.next())// 下条记录
				{
					Items item = new Items();// 商品信息
					// 用set来封装属性
					item.setBook_id(rs.getInt("book_id"));
					item.setBook_name(rs.getString("book_name"));
					item.setBook_author(rs.getString("author"));
					item.setISBN(rs.getString("ISBN"));
					item.setPrice(rs.getFloat("price"));
					item.setBook_case(rs.getString("book_case"));
					item.setBook_intime(rs.getString("book_intime"));
					item.setPress(rs.getString("press"));
					item.setNumber(rs.getInt("Number"));
					list.add(item);// 把一个商品信息加入集合
				}
			} catch (Exception ex) {
				ex.printStackTrace();// 返回异常堆栈
				return null;
			} finally// 释放资源，从小到大释放
			{
				// 释放数据集对象
				if (rs != null) {
					try {
						rs.close();
						rs = null;
					} catch (Exception ex) {
						ex.printStackTrace();
					}
				}
				// 释放语句对象
				if (stmt != null) {
					try {
						stmt.close();
						stmt = null;
					} catch (Exception ex) {
						ex.printStackTrace();
					}
				}
			}
			return list;
		}

		// 根据类别查询
				public ArrayList<Items> getItemsBycategory(String name) {
					Connection conn = null;
					PreparedStatement stmt = null;// 处理命令
					ResultSet rs = null;// 数据集
					 String sql="";
					ArrayList<Items> list = new ArrayList<Items>();// 商品集合 ArrayList类型
					try {
						conn = DBhelper.getConnection();// 获得连接对象
						sql = "select * from tb_bookinfo where Category like '%" + name + "%' ; ";
						System.out.println(sql);
						stmt = conn.prepareStatement(sql);// 创建一个连接对象
						rs = stmt.executeQuery();// 执行SQL，获得数据集
						while (rs.next())// 下条记录
						{
							Items item = new Items();// 商品信息
							// 用set来封装属性
							item.setBook_id(rs.getInt("book_id"));
							item.setBook_name(rs.getString("book_name"));
							item.setBook_author(rs.getString("author"));
							item.setISBN(rs.getString("ISBN"));
							item.setPrice(rs.getFloat("price"));
							item.setBook_case(rs.getString("book_case"));
							item.setBook_intime(rs.getString("book_intime"));
							item.setPress(rs.getString("press"));
							item.setNumber(rs.getInt("Number"));
							list.add(item);// 把一个商品信息加入集合
						}
					} catch (Exception ex) {
						ex.printStackTrace();// 返回异常堆栈
						return null;
					} finally// 释放资源，从小到大释放
					{
						// 释放数据集对象
						if (rs != null) {
							try {
								rs.close();
								rs = null;
							} catch (Exception ex) {
								ex.printStackTrace();
							}
						}
						// 释放语句对象
						if (stmt != null) {
							try {
								stmt.close();
								stmt = null;
							} catch (Exception ex) {
								ex.printStackTrace();
							}
						}
					}
					return list;
				}

		
		
	
	// 入库
	public void getBookIn(float price, String name, String author, String ISBN, String bookcase, String press,
			String intime,String category,int number) {
		Connection conn = null;
		PreparedStatement stmt = null;// 处理命令
		ResultSet rs = null;// 数据集
		try {
			conn = DBhelper.getConnection();// 获得连接对象
			String sql = "INSERT tb_bookinfo (book_name,author,ISBN,price,book_case,book_intime,press,Category,Number) VALUES('" + name
					+ "','" + author + "','" + ISBN + "'," + price + ",'" + bookcase + "','" + intime + "','" + press
					+ "','"+category+"',number);";

			stmt = conn.prepareStatement(sql);// 创建一个连接对象
			stmt.execute();
			// stmt.setFloat(5, price);
			// stmt.setString(2, name);
			// stmt.setString(3, author);
			// stmt.setString(4, ISBN);
			// stmt.setString(6, bookcase);
			// stmt.setString(7, intime);
			// stmt.setString(8, press);
			// rs = stmt.executeQuery();// 执行SQL，获得数据集
			/*
			 * while (rs.next())// 下条记录 { Items item = new Items();// 商品信息 //
			 * 用set来封装属性 item.setBook_id(rs.getInt("book_id"));
			 * item.setBook_name(rs.getString("book_name"));
			 * item.setBook_author(rs.getString("author"));
			 * item.setISBN(rs.getString("ISBN"));
			 * item.setPrice(rs.getFloat("price"));
			 * item.setBook_case(rs.getString("book_case"));
			 * item.setBook_intime(rs.getString("book_intime"));
			 * item.setPress(rs.getString("press")); list.add(item);//
			 * 把一个商品信息加入集合 }
			 */
		} catch (Exception ex) {
			ex.printStackTrace();// 返回异常堆栈
		} finally// 释放资源，从小到大释放
		{
			// 释放数据集对象
			if (rs != null) {
				try {
					rs.close();
					rs = null;
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			}
			// 释放语句对象
			if (stmt != null) {
				try {
					stmt.close();
					stmt = null;
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			}
		}
	}

	// 遍历图书
	public ArrayList<Items> getAllBooks() {
		Connection conn = null;
		PreparedStatement stmt = null;// 处理命令
		ResultSet rs = null;// 数据集
		ArrayList<Items> list = new ArrayList<Items>();// 商品集合 ArrayList类型
		try {
			conn = DBhelper.getConnection();// 获得连接对象
			String sql = "select * from tb_bookinfo;";// SQL语句
			stmt = conn.prepareStatement(sql);// 创建一个连接对象
			rs = stmt.executeQuery();// 执行SQL，获得数据集
			while (rs.next())// 下条记录
			{
				Items item = new Items();// 商品信息
				// 用set来封装属性
				item.setBook_id(rs.getInt("book_id"));
				item.setBook_name(rs.getString("book_name"));
				item.setNumber(rs.getInt("Number"));
				item.setBook_case(rs.getString("book_case"));
				list.add(item);// 把一个商品信息加入集合
			}
			return list;// 返回集合
		} catch (Exception ex) {
			ex.printStackTrace();// 返回异常堆栈
			return null;
		} finally// 释放资源，从小到大释放
		{
			// 释放数据集对象
			if (rs != null) {
				try {
					rs.close();
					rs = null;
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			}
			// 释放语句对象
			if (stmt != null) {
				try {
					stmt.close();
					stmt = null;
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			}
		}
	}

	// 出库
	public void DeleteBooks(int id) {
		Connection conn = null;
		PreparedStatement stmt = null;// 处理命令
		ResultSet rs = null;// 数据集
		try {
			conn = DBhelper.getConnection();// 获得连接对象
			String sql = "DELETE FROM tb_bookinfo WHERE book_id=?;";// SQL语句
			stmt = conn.prepareStatement(sql);// 创建一个连接对象
			stmt.setInt(1, id);// 接收一个参数，编号从1开始
			stmt.execute();// 执行SQL，获得数据集
		} catch (Exception ex) {
			ex.printStackTrace();// 返回异常堆栈
		} finally// 释放资源，从小到大释放
		{
			// 释放数据集对象
			if (rs != null) {
				try {
					rs.close();
					rs = null;
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			}
			// 释放语句对象
			if (stmt != null) {
				try {
					stmt.close();
					stmt = null;
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			}
		}
	}
	
	//判断剩余书籍数量是否为0
	public int getremain(int id) {
		Connection conn = null;
		PreparedStatement stmt = null;// 处理命令
		ResultSet rs = null;// 数据集
		int number = 0;
		//ArrayList<Reader> list = new ArrayList<Reader>();
		try {
			conn = DBhelper.getConnection();// 获得连接对象
			String sql = "Select Number From tb_bookinfo   WHERE book_id="+id+";";// SQL语句
			stmt = conn.prepareStatement(sql);// 创建一个连接对象
			//stmt.setString(1, name);// 接收一个参数，编号从1开始
			rs=stmt.executeQuery();// 执行SQL，获得数据集
			//psd=String.valueOf(rs.getString("password"));
			System.out.println("number");
			if(rs.next()){//没next，指针根本没指向对应记录
				number = rs.getInt("Number");
			}
			//Reader Readers = new Reader();// 商品信息
			//Readers.setPassword(rs.getString("password"));
			//list.add(Readers);
			
		} catch (Exception ex) {
			ex.printStackTrace();// 返回异常堆栈
		} finally// 释放资源，从小到大释放
		{
			// 释放数据集对象
			if (rs != null) {
				try {
					rs.close();
					rs = null;
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			}
			// 释放语句对象
			if (stmt != null) {
				try {
					stmt.close();
					stmt = null;
				} catch (Exception ex) {
					ex.printStackTrace();
				}
			}
		}
		return number;
	}
	
	
	
	
	
	// 借阅（更新数据库）
		public void BorrowBooks(int id) {
			Connection conn = null;
			PreparedStatement stmt = null;// 处理命令
			ResultSet rs = null;// 数据集
			try {
				conn = DBhelper.getConnection();// 获得连接对象
				String sql = "UPDATE tb_bookinfo set Number=Number-1 WHERE book_id=?;";// SQL语句
				stmt = conn.prepareStatement(sql);// 创建一个连接对象
				stmt.setInt(1, id);// 接收一个参数，编号从1开始
				stmt.execute();// 执行SQL，获得数据集
			} catch (Exception ex) {
				ex.printStackTrace();// 返回异常堆栈
			} finally// 释放资源，从小到大释放
			{
				// 释放数据集对象
				if (rs != null) {
					try {
						rs.close();
						rs = null;
					} catch (Exception ex) {
						ex.printStackTrace();
					}
				}
				// 释放语句对象
				if (stmt != null) {
					try {
						stmt.close();
						stmt = null;
					} catch (Exception ex) {
						ex.printStackTrace();
					}
				}
			}
		}
		
		//借书记录
		public void InsertBorrow(int book_id, String toUser, String borrow_time, String return_time) {
			Connection conn = null;
			PreparedStatement stmt = null;// 处理命令
			ResultSet rs = null;// 数据集
			try {
				conn = DBhelper.getConnection();// 获得连接对象
				String sql = "INSERT tb_borrowinfo (reader_ID,book_ID,borrowTime,backTime) VALUES('" + toUser
						+ "',(SELECT book_name FROM tb_bookinfo WHERE book_id=?),'" + borrow_time + "','" + return_time + "');";

				stmt = conn.prepareStatement(sql);// 创建一个连接对象
				stmt.setInt(1, book_id);
				stmt.execute();
			} catch (Exception ex) {
				ex.printStackTrace();// 返回异常堆栈
			} finally// 释放资源，从小到大释放
			{
				// 释放数据集对象
				if (rs != null) {
					try {
						rs.close();
						rs = null;
					} catch (Exception ex) {
						ex.printStackTrace();
					}
				}
				// 释放语句对象
				if (stmt != null) {
					try {
						stmt.close();
						stmt = null;
					} catch (Exception ex) {
						ex.printStackTrace();
					}
				}
			}
		}
		
		//遍历借书记录
		public ArrayList<Borrow> BorrowAllBooks(String toUser) {
			Connection conn = null;
			PreparedStatement stmt = null;// 处理命令
			ResultSet rs = null;// 数据集,此处rs是ResultSet类的实例化对象，用于存储结果集。
			ArrayList<Borrow> list = new ArrayList<Borrow>();// 书 ArrayList类型
			try {
				conn = DBhelper.getConnection();// 获得连接对象
				String sql = "select * from tb_borrowinfo where reader_ID='"+toUser+"';";// SQL语句
				stmt = conn.prepareStatement(sql);// 创建一个连接对象
				//stmt.setString(1,toUser);
				rs = stmt.executeQuery();// 执行SQL，获得数据集
				while (rs.next())// 下条记录
				{
					Borrow borrowing = new Borrow();// 商品信息
					// 用set来封装属性
					borrowing.setID(rs.getInt("ID"));
					borrowing.setBook_ID(rs.getString("book_ID"));
					borrowing.setBorrowTime(rs.getString("borrowTime"));
					borrowing.setBackTime(rs.getString("backTime"));
					list.add(borrowing);// 把一个商品信息加入集合
				}
				return list;// 返回集合
			} catch (Exception ex) {
				ex.printStackTrace();// 返回异常堆栈
				return null;
			} finally// 释放资源，从小到大释放
			{
				// 释放数据集对象
				if (rs != null) {
					try {
						rs.close();
						rs = null;
					} catch (Exception ex) {
						ex.printStackTrace();
					}
				}
				// 释放语句对象
				if (stmt != null) {
					try {
						stmt.close();
						stmt = null;
					} catch (Exception ex) {
						ex.printStackTrace();
					}
				}
			}
		}
		
		//续借
		public void UpdateBorrow(int id,String time1, String time2) {
			Connection conn = null;
			PreparedStatement stmt = null;// 处理命令
			ResultSet rs = null;// 数据集
			try {
				conn = DBhelper.getConnection();// 获得连接对象
				String sql = "UPDATE tb_borrowinfo SET borrowTime='"+time1+"',backTime='"+time2+"' WHERE ID=?;";// SQL语句
				stmt = conn.prepareStatement(sql);// 创建一个连接对象
				stmt.setInt(1, id);// 接收一个参数，编号从1开始
				stmt.execute();// 执行SQL，获得数据集
			} catch (Exception ex) {
				ex.printStackTrace();// 返回异常堆栈
			} finally// 释放资源，从小到大释放
			{
				// 释放数据集对象
				if (rs != null) {
					try {
						rs.close();
						rs = null;
					} catch (Exception ex) {
						ex.printStackTrace();
					}
				}
				// 释放语句对象
				if (stmt != null) {
					try {
						stmt.close();
						stmt = null;
					} catch (Exception ex) {
						ex.printStackTrace();
					}
				}
			}
		}
		

		//归还
		public void DeleteBorrow(int id) {
			Connection conn = null;
			PreparedStatement stmt = null;// 处理命令
			ResultSet rs = null;// 数据集
			try {
				conn = DBhelper.getConnection();// 获得连接对象
				String sql = "DELETE FROM tb_borrowinfo WHERE ID=?;";
				stmt = conn.prepareStatement(sql);// 创建一个连接对象
				stmt.setInt(1, id);// 接收一个参数，编号从1开始
				stmt.execute();// 执行SQL，获得数据集
			} catch (Exception ex) {
				ex.printStackTrace();// 返回异常堆栈
			} finally// 释放资源，从小到大释放
			{
				// 释放数据集对象
				if (rs != null) {
					try {
						rs.close();
						rs = null;
					} catch (Exception ex) {
						ex.printStackTrace();
					}
				}
				// 释放语句对象
				if (stmt != null) {
					try {
						stmt.close();
						stmt = null;
					} catch (Exception ex) {
						ex.printStackTrace();
					}
				}
			}
		}
		
		//归还时更新bookinfo
		public void DeleteUpdateBorrow(String num) {
			Connection conn = null;
			PreparedStatement stmt = null;// 处理命令
			ResultSet rs = null;// 数据集
			try {
				conn = DBhelper.getConnection();// 获得连接对象
				//String sql = "UPDATE tb_bookinfo SET if_borrow = 0 WHERE book_name=(SELECT book_ID FROM tb_borrowinfo WHERE ID=?);";
				//System.out.println(num);
				String sql = "UPDATE tb_bookinfo SET Number = Number+1 WHERE book_name='"+num+"';";
				//String sql = "UPDATE tb_bookinfo SET if_borrow = 0 WHERE book_id=1;";
				System.out.println(sql);
				stmt = conn.prepareStatement(sql);// 创建一个连接对象
				stmt.execute();// 执行SQL，获得数据集
			} catch (Exception ex) {
				ex.printStackTrace();// 返回异常堆栈
			} finally// 释放资源，从小到大释放
			{
				// 释放数据集对象
				if (rs != null) {
					try {
						rs.close();
						rs = null;
					} catch (Exception ex) {
						ex.printStackTrace();
					}
				}
				// 释放语句对象
				if (stmt != null) {
					try {
						stmt.close();
						stmt = null;
					} catch (Exception ex) {
						ex.printStackTrace();
					}
				}
			}
		}
		
		//添加读者信息
		public void management_reader(String name,int password, String type,int IDnumber,String phone,int allow) {
			Connection conn = null;
			PreparedStatement stmt = null;// 处理命令
			ResultSet rs = null;// 数据集
			try {
				conn = DBhelper.getConnection();// 获得连接对象
				String sql = "Insert tb_readerManage SET readerID='"+name+"',password='"+password+"',readerType='"+type+"',idNumber='"+IDnumber+"',readerPhone='"+phone+"',allowBookNum='"+allow+"';";// SQL语句
				stmt = conn.prepareStatement(sql);// 创建一个连接对象
				stmt.execute();// 执行SQL，获得数据集
			} catch (Exception ex) {
				ex.printStackTrace();// 返回异常堆栈
			} finally// 释放资源，从小到大释放
			{
				// 释放数据集对象
				if (rs != null) {
					try {
						rs.close();
						rs = null;
					} catch (Exception ex) {
						ex.printStackTrace();
					}
				}
				// 释放语句对象
				if (stmt != null) {
					try {
						stmt.close();
						stmt = null;
					} catch (Exception ex) {
						ex.printStackTrace();
					}
				}
			}
		}
		
		//遍历读者信息
		public ArrayList<Reader> getreaderinfo() {
			Connection conn = null;
			PreparedStatement stmt = null;// 处理命令
			ResultSet rs = null;// 数据集
			ArrayList<Reader> list = new ArrayList<Reader>();// 商品集合 ArrayList类型
			try {
				conn = DBhelper.getConnection();// 获得连接对象
				String sql = "select * from tb_readerManage ;";// SQL语句
				stmt = conn.prepareStatement(sql);// 创建一个连接对象
				//stmt.setString(1,toUser);
				rs = stmt.executeQuery();// 执行SQL，获得数据集
				while (rs.next())// 下条记录
				{
					Reader Readers = new Reader();// 商品信息
					// 用set来封装属性
					Readers.setPassword(rs.getString("password"));
					Readers.setReaderPhone(rs.getInt("readerPhone"));
					Readers.setIdNumber(rs.getInt("idNumber"));
					Readers.setAllowBookNum(rs.getInt("allowBookNum"));
					Readers.setReaderID(rs.getString("readerID"));
					Readers.setReaderType(rs.getString("readerType"));
					list.add(Readers);// 把一个商品信息加入集合
				}
				return list;// 返回集合
			} catch (Exception ex) {
				ex.printStackTrace();// 返回异常堆栈
				return null;
			} finally// 释放资源，从小到大释放
			{
				// 释放数据集对象
				if (rs != null) {
					try {
						rs.close();
						rs = null;
					} catch (Exception ex) {
						ex.printStackTrace();
					}
				}
				// 释放语句对象
				if (stmt != null) {
					try {
						stmt.close();
						stmt = null;
					} catch (Exception ex) {
						ex.printStackTrace();
					}
				}
			}
		}
		//获取密码
		public String getpassword(String name) {
			Connection conn = null;
			PreparedStatement stmt = null;// 处理命令
			ResultSet rs = null;// 数据集
			String psd="";
			//ArrayList<Reader> list = new ArrayList<Reader>();
			try {
				conn = DBhelper.getConnection();// 获得连接对象
				String sql = "Select password From tb_readermanage   WHERE readerID='"+name+"';";// SQL语句
				stmt = conn.prepareStatement(sql);// 创建一个连接对象
				//stmt.setString(1, name);// 接收一个参数，编号从1开始
				rs=stmt.executeQuery();// 执行SQL，获得数据集
				//psd=String.valueOf(rs.getString("password"));
				System.out.println("psd");
				if(rs.next()){//没next，指针根本没指向对应记录
					   psd = rs.getString("password");
				}
				//Reader Readers = new Reader();// 商品信息
				//Readers.setPassword(rs.getString("password"));
				//list.add(Readers);
				
			} catch (Exception ex) {
				ex.printStackTrace();// 返回异常堆栈
			} finally// 释放资源，从小到大释放
			{
				// 释放数据集对象
				if (rs != null) {
					try {
						rs.close();
						rs = null;
					} catch (Exception ex) {
						ex.printStackTrace();
					}
				}
				// 释放语句对象
				if (stmt != null) {
					try {
						stmt.close();
						stmt = null;
					} catch (Exception ex) {
						ex.printStackTrace();
					}
				}
			}
			return psd;
		}
		
		//读者注册
				public void register(String name,int password, String type,int IDnumber,String phone) {
					Connection conn = null;
					PreparedStatement stmt = null;// 处理命令
					ResultSet rs = null;// 数据集
					try {
						conn = DBhelper.getConnection();// 获得连接对象
						String sql = "Insert tb_readerManage SET readerID='"+name+"',password='"+password+"',readerType='"+type+"',idNumber='"+IDnumber+"',readerPhone='"+phone+"';";// SQL语句
						stmt = conn.prepareStatement(sql);// 创建一个连接对象
						stmt.execute();// 执行SQL，获得数据集
					} catch (Exception ex) {
						ex.printStackTrace();// 返回异常堆栈
					} finally// 释放资源，从小到大释放
					{
						// 释放数据集对象
						if (rs != null) {
							try {
								rs.close();
								rs = null;
							} catch (Exception ex) {
								ex.printStackTrace();
							}
						}
						// 释放语句对象
						if (stmt != null) {
							try {
								stmt.close();
								stmt = null;
							} catch (Exception ex) {
								ex.printStackTrace();
							}
						}
					}
				}
				
				//获取当前借书数目
				public int getcurrentnumber(String name) {
					Connection conn = null;
					PreparedStatement stmt = null;// 处理命令
					ResultSet rs = null;// 数据集
					int number = 0;
					//ArrayList<Reader> list = new ArrayList<Reader>();
					try {
						conn = DBhelper.getConnection();// 获得连接对象
						String sql = "Select currentnumber From tb_readermanage   WHERE readerID='"+name+"';";// SQL语句
						stmt = conn.prepareStatement(sql);// 创建一个连接对象
						//stmt.setString(1, name);// 接收一个参数，编号从1开始
						rs=stmt.executeQuery();// 执行SQL，获得数据集
						//psd=String.valueOf(rs.getString("password"));
						System.out.println("psd");
						if(rs.next()){//没next，指针根本没指向对应记录
							number = rs.getInt("currentnumber");
						}
						//Reader Readers = new Reader();// 商品信息
						//Readers.setPassword(rs.getString("password"));
						//list.add(Readers);
						
					} catch (Exception ex) {
						ex.printStackTrace();// 返回异常堆栈
					} finally// 释放资源，从小到大释放
					{
						// 释放数据集对象
						if (rs != null) {
							try {
								rs.close();
								rs = null;
							} catch (Exception ex) {
								ex.printStackTrace();
							}
						}
						// 释放语句对象
						if (stmt != null) {
							try {
								stmt.close();
								stmt = null;
							} catch (Exception ex) {
								ex.printStackTrace();
							}
						}
					}
					return number;
				}
				
				//更新当前借书数目
				public void updateCurrentumber(String name,int code) {
					Connection conn = null;
					PreparedStatement stmt = null;// 处理命令
					ResultSet rs = null;// 数据集
					String sql="";
					//ArrayList<Reader> list = new ArrayList<Reader>();
					try {
						conn = DBhelper.getConnection();// 获得连接对象
						if(code==1) {
						 sql = "update tb_readermanage SET currentnumber=currentnumber+1 WHERE readerID='"+name+"';";// SQL语句
						}
						else if(code==0)
						{
						 sql = "update tb_readermanage SET currentnumber=currentnumber-1 WHERE readerID='"+name+"';";// SQL语句
						}
						stmt = conn.prepareStatement(sql);// 创建一个连接对象
						stmt.execute();// 执行SQL，获得数据集
					} catch (Exception ex) {
						ex.printStackTrace();// 返回异常堆栈
					} finally// 释放资源，从小到大释放
					{
						// 释放数据集对象
						if (rs != null) {
							try {
								rs.close();
								rs = null;
							} catch (Exception ex) {
								ex.printStackTrace();
							}
						}
						// 释放语句对象
						if (stmt != null) {
							try {
								stmt.close();
								stmt = null;
							} catch (Exception ex) {
								ex.printStackTrace();
							}
						}
					}
				}
		
				//获取的读者信息
				public Reader getreaderinfoByid(int id) {
					Connection conn = null;
					PreparedStatement stmt = null;// 处理命令
					ResultSet rs = null;// 数据集
					Reader list = new Reader();// 商品集合 ArrayList类型
					try {
						conn = DBhelper.getConnection();// 获得连接对象
						String sql = "select * from tb_readerManage WHERE IdNumber= "+id+";";// SQL语句
						stmt = conn.prepareStatement(sql);// 创建一个连接对象
						//stmt.setString(1,toUser);
						rs = stmt.executeQuery();// 执行SQL，获得数据集
						while (rs.next())// 下条记录
						{
							Reader Readers = new Reader();// 商品信息
							// 用set来封装属性
							Readers.setPassword(rs.getString("password"));
							Readers.setReaderPhone(rs.getInt("readerPhone"));
							Readers.setIdNumber(rs.getInt("idNumber"));
							Readers.setAllowBookNum(rs.getInt("allowBookNum"));
							Readers.setReaderID(rs.getString("readerID"));
							Readers.setReaderType(rs.getString("readerType"));
							Readers.setCurrentnumber(rs.getInt("currentnumber"));
							//list.add(Readers);// 把一个商品信息加入集合
						
						return Readers;// 返回集合
						}
					} catch (Exception ex) {
						ex.printStackTrace();// 返回异常堆栈
						return null;
					} finally// 释放资源，从小到大释放
					{
						// 释放数据集对象
						if (rs != null) {
							try {
								rs.close();
								rs = null;
							} catch (Exception ex) {
								ex.printStackTrace();
							}
						}
						// 释放语句对象
						if (stmt != null) {
							try {
								stmt.close();
								stmt = null;
							} catch (Exception ex) {
								ex.printStackTrace();
							}
						}
					}
					return list;
					
				}
				
				
				//获取的读者信息
				public Reader getreaderinfoByname(String name) {
					Connection conn = null;
					PreparedStatement stmt = null;// 处理命令
					ResultSet rs = null;// 数据集
					Reader list = new Reader();// 商品集合 ArrayList类型
					try {
						conn = DBhelper.getConnection();// 获得连接对象
						String sql = "select * from tb_readerManage WHERE readerID= '"+name+"';";// SQL语句
						stmt = conn.prepareStatement(sql);// 创建一个连接对象
						//stmt.setString(1,toUser);
						rs = stmt.executeQuery();// 执行SQL，获得数据集
						while (rs.next())// 下条记录
						{
							Reader Readers = new Reader();// 商品信息
							// 用set来封装属性
							//Readers.setPassword(rs.getString("password"));
							Readers.setReaderPhone(rs.getInt("readerPhone"));
							Readers.setIdNumber(rs.getInt("idNumber"));
							Readers.setAllowBookNum(rs.getInt("allowBookNum"));
							Readers.setReaderID(rs.getString("readerID"));
							Readers.setReaderType(rs.getString("readerType"));
							Readers.setCurrentnumber(rs.getInt("currentnumber"));
							//list.add(Readers);// 把一个商品信息加入集合
						
						return Readers;// 返回集合
						}
					} catch (Exception ex) {
						ex.printStackTrace();// 返回异常堆栈
						return null;
					} finally// 释放资源，从小到大释放
					{
						// 释放数据集对象
						if (rs != null) {
							try {
								rs.close();
								rs = null;
							} catch (Exception ex) {
								ex.printStackTrace();
							}
						}
						// 释放语句对象
						if (stmt != null) {
							try {
								stmt.close();
								stmt = null;
							} catch (Exception ex) {
								ex.printStackTrace();
							}
						}
					}
					return list;
					
				}
				
		
}
