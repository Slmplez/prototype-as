/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal.dynamic;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import org.eclipse.help.internal.UAElement;
import org.eclipse.help.internal.dynamic.DocumentProcessor;
import org.eclipse.help.internal.dynamic.DocumentReader;
import org.eclipse.help.internal.dynamic.DocumentWriter;
import org.eclipse.help.internal.dynamic.ProcessorHandler;
import org.xml.sax.SAXException;

public class XMLProcessor {
    private DocumentProcessor processor;
    private DocumentReader reader;
    private DocumentWriter writer;

    public XMLProcessor(ProcessorHandler[] handlers) {
        this.processor = new DocumentProcessor(handlers);
    }

    public InputStream process(InputStream in, String id, String charset) throws IOException, SAXException, ParserConfigurationException, TransformerException, TransformerConfigurationException {
        if (this.reader == null) {
            this.reader = new DocumentReader();
        }
        UAElement element = this.reader.read(in, charset);
        this.processor.process(element, id);
        if (this.writer == null) {
            this.writer = new DocumentWriter();
        }
        return new ByteArrayInputStream(this.writer.writeBytes(element, true));
    }
}

