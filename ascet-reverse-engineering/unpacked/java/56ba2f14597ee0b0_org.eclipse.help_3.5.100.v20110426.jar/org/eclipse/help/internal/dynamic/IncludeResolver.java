/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal.dynamic;

import java.io.IOException;
import java.io.InputStream;
import javax.xml.parsers.ParserConfigurationException;
import org.eclipse.help.HelpSystem;
import org.eclipse.help.IUAElement;
import org.eclipse.help.internal.UAElement;
import org.eclipse.help.internal.dynamic.DocumentProcessor;
import org.eclipse.help.internal.dynamic.DocumentReader;
import org.xml.sax.SAXException;

public class IncludeResolver {
    private static final String ATTRIBUTE_ID = "id";
    private DocumentProcessor processor;
    private DocumentReader reader;
    private String locale;

    public IncludeResolver(DocumentProcessor processor, DocumentReader reader, String locale) {
        this.processor = processor;
        this.reader = reader;
        this.locale = locale;
    }

    public UAElement resolve(String bundleId, String relativePath, String elementId) throws IOException, SAXException, ParserConfigurationException {
        UAElement uAElement;
        String href = String.valueOf('/') + bundleId + '/' + relativePath;
        InputStream in = HelpSystem.getHelpContent(href, this.locale);
        try {
            UAElement element = this.findElement(in, elementId);
            this.processor.process(element, href);
            uAElement = element;
        }
        catch (Throwable throwable) {
            try {
                in.close();
            }
            catch (IOException iOException) {}
            throw throwable;
        }
        try {
            in.close();
        }
        catch (IOException iOException) {}
        return uAElement;
    }

    private UAElement findElement(InputStream in, String elementId) throws IOException, SAXException, ParserConfigurationException {
        UAElement element = this.reader.read(in);
        return this.findElement(element, elementId);
    }

    private UAElement findElement(UAElement element, String elementId) {
        String id = element.getAttribute(ATTRIBUTE_ID);
        if (id != null && id.equals(elementId)) {
            return element;
        }
        IUAElement[] children = element.getChildren();
        int i = 0;
        while (i < children.length) {
            UAElement result = this.findElement((UAElement)children[i], elementId);
            if (result != null) {
                return result;
            }
            ++i;
        }
        return null;
    }
}

