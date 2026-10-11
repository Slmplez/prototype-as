/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.util;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import javax.xml.parsers.FactoryConfigurationError;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import org.eclipse.pde.internal.core.util.PDEXMLHelper;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class SAXParserWrapper {
    protected SAXParser fParser = PDEXMLHelper.Instance().getDefaultSAXParser();
    protected boolean isdisposed = false;

    public void dispose() {
        if (!this.isdisposed) {
            PDEXMLHelper.Instance().recycleSAXParser(this.fParser);
            this.isdisposed = true;
        }
    }

    public void parse(File f, DefaultHandler dh) throws SAXException, IOException {
        this.fParser.parse(f, dh);
    }

    public void parse(InputStream is, DefaultHandler dh) throws SAXException, IOException {
        this.fParser.parse(is, dh);
    }

    public void parse(InputSource is, DefaultHandler dh) throws SAXException, IOException {
        this.fParser.parse(is, dh);
    }

    protected void finalize() throws Throwable {
        super.finalize();
        this.dispose();
    }
}

