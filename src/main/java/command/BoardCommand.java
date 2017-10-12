package command;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class BoardCommand {
	private String conent;
	private MultipartFile file;
	private List<MultipartFile> files;
	private String upDir;
	private Long hostid, writerid;
	
	
	public String getConent() {
		return conent;
	}

	public void setConent(String conent) {
		this.conent = conent;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public List<MultipartFile> getFiles() {
		return files;
	}

	public void setFiles(List<MultipartFile> files) {
		this.files = files;
	}

	public String getUpDir() {
		return upDir;
	}

	public void setUpDir(String upDir) {
		this.upDir = upDir;
	}

	public Long getHostid() {
		return hostid;
	}

	public void setHostid(Long hostid) {
		this.hostid = hostid;
	}

	public Long getWriterid() {
		return writerid;
	}

	public void setWriterid(Long writerid) {
		this.writerid = writerid;
	}
}