/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import java.io.Writer;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.internal.compiler.util.GenericXMLWriter;
import org.eclipse.jdt.internal.core.util.Util;

class XMLWriter
extends GenericXMLWriter {
    public XMLWriter(Writer writer, IJavaProject project, boolean printXmlVersion) {
        super(writer, Util.getLineSeparator(null, project), printXmlVersion);
    }
}

