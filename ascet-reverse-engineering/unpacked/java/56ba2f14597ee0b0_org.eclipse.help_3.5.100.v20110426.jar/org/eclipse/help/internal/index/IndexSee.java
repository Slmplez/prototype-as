/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.Collator
 */
package org.eclipse.help.internal.index;

import com.ibm.icu.text.Collator;
import org.eclipse.help.IIndexSee;
import org.eclipse.help.IIndexSubpath;
import org.eclipse.help.internal.UAElement;
import org.w3c.dom.Element;

public class IndexSee
extends UAElement
implements IIndexSee,
Comparable {
    public static final String NAME = "see";
    public static final String ATTRIBUTE_KEYWORD = "keyword";
    static /* synthetic */ Class class$0;

    public IndexSee(Element src) {
        super(src);
    }

    public IndexSee(IIndexSee src) {
        super(NAME, src);
        this.setKeyword(src.getKeyword());
        this.appendChildren(src.getChildren());
    }

    public String getKeyword() {
        return this.getAttribute(ATTRIBUTE_KEYWORD);
    }

    private String[] getPath() {
        IIndexSubpath[] subpaths = this.getSubpathElements();
        String[] result = new String[1 + subpaths.length];
        result[0] = this.getKeyword();
        int i = 0;
        while (i < subpaths.length) {
            result[i + 1] = subpaths[i].getKeyword();
            ++i;
        }
        return result;
    }

    public void setKeyword(String keyword) {
        this.setAttribute(ATTRIBUTE_KEYWORD, keyword);
    }

    private int getCategory(String keyword) {
        if (keyword != null && keyword.length() > 0) {
            char c = keyword.charAt(0);
            if (Character.isDigit(c)) {
                return 2;
            }
            if (Character.isLetter(c)) {
                return 3;
            }
            return 1;
        }
        return 4;
    }

    public int compareTo(Object arg0) {
        Collator collator = Collator.getInstance();
        if (arg0 instanceof IndexSee) {
            String[] path = this.getPath();
            String[] targetPath = ((IndexSee)arg0).getPath();
            int i = 0;
            while (i < path.length) {
                if (i >= targetPath.length) {
                    return 1;
                }
                if (this.getCategory(path[i]) != this.getCategory(targetPath[i])) {
                    return this.getCategory(path[i]) - this.getCategory(targetPath[i]);
                }
                int result = collator.compare(path[i], targetPath[i]);
                if (result != 0) {
                    return result;
                }
                ++i;
            }
            return path.length - targetPath.length;
        }
        return 0;
    }

    public boolean equals(Object obj) {
        return obj instanceof IndexSee && this.compareTo(obj) == 0;
    }

    public int hashCode() {
        int result = this.getKeyword().hashCode();
        IIndexSubpath[] subpaths = this.getSubpathElements();
        int i = 0;
        while (i < subpaths.length) {
            result += subpaths[i].getKeyword().hashCode();
            ++i;
        }
        return result;
    }

    public boolean isSeeAlso() {
        UAElement parentElement = this.getParentElement();
        return !(parentElement.getChildren()[0] instanceof IIndexSee);
    }

    public IIndexSubpath[] getSubpathElements() {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.help.IIndexSubpath");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        return (IIndexSubpath[])this.getChildren(clazz);
    }
}

