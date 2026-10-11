/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExecutableExtension
 *  org.eclipse.core.runtime.content.IContentDescription
 *  org.eclipse.core.runtime.content.XMLContentDescriber
 */
package org.eclipse.ant.internal.core.contentDescriber;

import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import javax.xml.parsers.ParserConfigurationException;
import org.eclipse.ant.internal.core.contentDescriber.AntHandler;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExecutableExtension;
import org.eclipse.core.runtime.content.IContentDescription;
import org.eclipse.core.runtime.content.XMLContentDescriber;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

public final class AntBuildfileContentDescriber
extends XMLContentDescriber
implements IExecutableExtension {
    private int checkCriteria(InputSource contents) throws IOException {
        AntHandler antHandler = new AntHandler();
        try {
            if (!antHandler.parseContents(contents)) {
                return 1;
            }
        }
        catch (SAXException sAXException) {
            return 1;
        }
        catch (ParserConfigurationException parserConfigurationException) {
            String message = "Internal Error: XML parser configuration error during content description for Ant buildfiles";
            throw new RuntimeException(message);
        }
        if (antHandler.hasRootProjectElement()) {
            if (antHandler.hasProjectDefaultAttribute() || antHandler.hasTargetElement() || antHandler.hasAntElement()) {
                return 2;
            }
            return 1;
        }
        return 1;
    }

    public int describe(InputStream contents, IContentDescription description) throws IOException {
        if (super.describe(contents, description) == 0) {
            return 0;
        }
        contents.reset();
        return this.checkCriteria(new InputSource(contents));
    }

    public int describe(Reader contents, IContentDescription description) throws IOException {
        if (super.describe(contents, description) == 0) {
            return 0;
        }
        contents.reset();
        return this.checkCriteria(new InputSource(contents));
    }

    public void setInitializationData(IConfigurationElement config, String propertyName, Object data) throws CoreException {
    }
}

