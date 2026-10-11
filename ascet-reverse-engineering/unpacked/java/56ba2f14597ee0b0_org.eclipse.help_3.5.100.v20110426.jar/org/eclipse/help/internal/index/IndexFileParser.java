/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal.index;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import javax.xml.parsers.ParserConfigurationException;
import org.eclipse.help.internal.dynamic.DocumentReader;
import org.eclipse.help.internal.index.Index;
import org.eclipse.help.internal.index.IndexContribution;
import org.eclipse.help.internal.index.IndexDocumentReader;
import org.eclipse.help.internal.index.IndexFile;
import org.xml.sax.SAXException;

public class IndexFileParser {
    private DocumentReader reader;

    public IndexContribution parse(IndexFile indexFile) throws IOException, SAXException, ParserConfigurationException {
        InputStream in;
        if (this.reader == null) {
            this.reader = new IndexDocumentReader();
        }
        if ((in = indexFile.getInputStream()) != null) {
            try {
                Index index = (Index)this.reader.read(in);
                IndexContribution contrib = new IndexContribution();
                contrib.setId(String.valueOf('/') + indexFile.getPluginId() + '/' + indexFile.getFile());
                contrib.setIndex(index);
                contrib.setLocale(indexFile.getLocale());
                IndexContribution indexContribution = contrib;
                return indexContribution;
            }
            finally {
                in.close();
            }
        }
        throw new FileNotFoundException();
    }
}

