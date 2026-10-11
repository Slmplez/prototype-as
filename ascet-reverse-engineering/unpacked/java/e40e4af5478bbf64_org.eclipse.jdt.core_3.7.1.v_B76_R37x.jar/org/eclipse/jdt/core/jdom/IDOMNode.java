/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.core.jdom;

import java.util.Enumeration;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.jdom.DOMException;

public interface IDOMNode
extends Cloneable {
    public static final int COMPILATION_UNIT = 1;
    public static final int PACKAGE = 2;
    public static final int IMPORT = 3;
    public static final int TYPE = 4;
    public static final int FIELD = 5;
    public static final int METHOD = 6;
    public static final int INITIALIZER = 7;

    public void addChild(IDOMNode var1) throws DOMException, IllegalArgumentException;

    public boolean canHaveChildren();

    public Object clone();

    public char[] getCharacters();

    public IDOMNode getChild(String var1);

    public Enumeration getChildren();

    public String getContents();

    public IDOMNode getFirstChild();

    public IJavaElement getJavaElement(IJavaElement var1) throws IllegalArgumentException;

    public String getName();

    public IDOMNode getNextNode();

    public int getNodeType();

    public IDOMNode getParent();

    public IDOMNode getPreviousNode();

    public void insertSibling(IDOMNode var1) throws DOMException, IllegalArgumentException;

    public boolean isAllowableChild(IDOMNode var1);

    public boolean isSignatureEqual(IDOMNode var1);

    public void remove();

    public void setName(String var1);
}

