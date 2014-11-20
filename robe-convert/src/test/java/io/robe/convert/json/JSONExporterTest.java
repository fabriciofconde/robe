package io.robe.convert.json;

import io.robe.convert.SamplePojo;
import io.robe.convert.TestData;
import org.junit.Test;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;

public class JSONExporterTest {

    private String SAMPLE = JSONExporterTest.class.getClassLoader().getResource("sample.json").getFile();


    @Test
    public void testExportStream() throws Exception {
        JSONExporter<SamplePojo> exporter = new JSONExporter(SamplePojo.class);

        OutputStream outputStream = new FileOutputStream(new File(SAMPLE));

        exporter.exportStream(outputStream, TestData.getData().iterator());

        outputStream.flush();
    }
}
