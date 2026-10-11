/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.FileLocator
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.osgi.framework.Bundle
 */
package org.eclipse.help.internal.extension;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import javax.xml.parsers.ParserConfigurationException;
import org.eclipse.core.runtime.FileLocator;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.help.IUAElement;
import org.eclipse.help.internal.UAElement;
import org.eclipse.help.internal.dynamic.DocumentProcessor;
import org.eclipse.help.internal.dynamic.DocumentReader;
import org.eclipse.help.internal.dynamic.ProcessorHandler;
import org.eclipse.help.internal.dynamic.ValidationHandler;
import org.eclipse.help.internal.extension.ContentExtension;
import org.osgi.framework.Bundle;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

public class ContentExtensionFileParser
extends DefaultHandler {
    private DocumentReader reader;
    private DocumentProcessor processor;
    private Map requiredAttributes;
    private Map deprecatedElements;

    public ContentExtension[] parse(Bundle bundle, String path) throws IOException, SAXException, ParserConfigurationException {
        URL url;
        if (this.reader == null) {
            this.reader = new DocumentReader();
        }
        if ((url = FileLocator.find((Bundle)bundle, (IPath)new Path(path), null)) != null) {
            InputStream in = url.openStream();
            UAElement extension = this.reader.read(in);
            if (this.processor == null) {
                this.processor = new DocumentProcessor(new ProcessorHandler[]{new ValidationHandler(this.getRequiredAttributes(), this.getDeprecatedElements())});
            }
            this.processor.process(extension, String.valueOf('/') + bundle.getSymbolicName() + '/' + path);
            IUAElement[] children = extension.getChildren();
            ContentExtension[] result = new ContentExtension[children.length];
            System.arraycopy(children, 0, result, 0, children.length);
            return result;
        }
        throw new FileNotFoundException();
    }

    private Map getRequiredAttributes() {
        if (this.requiredAttributes == null) {
            this.requiredAttributes = new HashMap();
            this.requiredAttributes.put("contribution", new String[]{"content", "path"});
            this.requiredAttributes.put("topicExtension", new String[]{"content", "path"});
            this.requiredAttributes.put("replacement", new String[]{"content", "path"});
            this.requiredAttributes.put("topicReplace", new String[]{"content", "path"});
        }
        return this.requiredAttributes;
    }

    private Map getDeprecatedElements() {
        if (this.deprecatedElements == null) {
            this.deprecatedElements = new HashMap();
            this.deprecatedElements.put("topicExtension", "contribution");
            this.deprecatedElements.put("topicReplace", "replacement");
        }
        return this.deprecatedElements;
    }
}

