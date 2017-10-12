package dao;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class WriterRequest {
	private MultipartFile file;
	private List<MultipartFile> files;
	private String content, upDir;
	private long host_id, writer_id;

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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public long getHost_id() {
		return host_id;
	}

	public void setHost_id(long host_id) {
		this.host_id = host_id;
	}

	public long getWriter_id() {
		return writer_id;
	}

	public void setWriter_id(long writer_id) {
		this.writer_id = writer_id;
	}

}
