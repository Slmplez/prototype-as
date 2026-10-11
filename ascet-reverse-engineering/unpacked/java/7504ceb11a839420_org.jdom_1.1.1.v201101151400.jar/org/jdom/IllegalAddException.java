/*
 * Decompiled with CFR 0.152.
 */
package org.jdom;

import org.jdom.Attribute;
import org.jdom.CDATA;
import org.jdom.Comment;
import org.jdom.DocType;
import org.jdom.Element;
import org.jdom.EntityRef;
import org.jdom.Namespace;
import org.jdom.ProcessingInstruction;
import org.jdom.Text;

public class IllegalAddException
extends IllegalArgumentException {
    private static final String CVS_ID = "@(#) $RCSfile: IllegalAddException.java,v $ $Revision: 1.26 $ $Date: 2007/11/10 05:28:59 $ $Name: jdom_1_1_1 $";

    IllegalAddException(Element base, Attribute added, String reason) {
        super("The attribute \"" + added.getQualifiedName() + "\" could not be added to the element \"" + base.getQualifiedName() + "\": " + reason);
    }

    IllegalAddException(Element base, Element added, String reason) {
        super("The element \"" + added.getQualifiedName() + "\" could not be added as a child of \"" + base.getQualifiedName() + "\": " + reason);
    }

    IllegalAddException(Element added, String reason) {
        super("The element \"" + added.getQualifiedName() + "\" could not be added as the root of the document: " + reason);
    }

    IllegalAddException(Element base, ProcessingInstruction added, String reason) {
        super("The PI \"" + added.getTarget() + "\" could not be added as content to \"" + base.getQualifiedName() + "\": " + reason);
    }

    IllegalAddException(ProcessingInstruction added, String reason) {
        super("The PI \"" + added.getTarget() + "\" could not be added to the top level of the document: " + reason);
    }

    IllegalAddException(Element base, Comment added, String reason) {
        super("The comment \"" + added.getText() + "\" could not be added as content to \"" + base.getQualifiedName() + "\": " + reason);
    }

    IllegalAddException(Element base, CDATA added, String reason) {
        super("The CDATA \"" + added.getText() + "\" could not be added as content to \"" + base.getQualifiedName() + "\": " + reason);
    }

    IllegalAddException(Element base, Text added, String reason) {
        super("The Text \"" + added.getText() + "\" could not be added as content to \"" + base.getQualifiedName() + "\": " + reason);
    }

    IllegalAddException(Comment added, String reason) {
        super("The comment \"" + added.getText() + "\" could not be added to the top level of the document: " + reason);
    }

    IllegalAddException(Element base, EntityRef added, String reason) {
        super("The entity reference\"" + added.getName() + "\" could not be added as content to \"" + base.getQualifiedName() + "\": " + reason);
    }

    IllegalAddException(Element base, Namespace added, String reason) {
        super("The namespace xmlns" + (added.getPrefix() == null || added.getPrefix().equals("") ? "=" : ":" + added.getPrefix() + "=") + "\"" + added.getURI() + "\" could not be added as a namespace to \"" + base.getQualifiedName() + "\": " + reason);
    }

    IllegalAddException(DocType added, String reason) {
        super("The DOCTYPE " + added.toString() + " could not be added to the document: " + reason);
    }

    public IllegalAddException(String reason) {
        super(reason);
    }
}

