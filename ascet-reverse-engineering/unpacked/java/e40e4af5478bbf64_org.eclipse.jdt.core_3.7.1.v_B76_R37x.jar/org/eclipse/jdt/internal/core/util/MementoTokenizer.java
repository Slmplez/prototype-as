/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core.util;

public class MementoTokenizer {
    public static final String COUNT = Character.toString('!');
    public static final String JAVAPROJECT = Character.toString('=');
    public static final String PACKAGEFRAGMENTROOT = Character.toString('/');
    public static final String PACKAGEFRAGMENT = Character.toString('<');
    public static final String FIELD = Character.toString('^');
    public static final String METHOD = Character.toString('~');
    public static final String INITIALIZER = Character.toString('|');
    public static final String COMPILATIONUNIT = Character.toString('{');
    public static final String CLASSFILE = Character.toString('(');
    public static final String TYPE = Character.toString('[');
    public static final String PACKAGEDECLARATION = Character.toString('%');
    public static final String IMPORTDECLARATION = Character.toString('#');
    public static final String LOCALVARIABLE = Character.toString('@');
    public static final String TYPE_PARAMETER = Character.toString(']');
    public static final String ANNOTATION = Character.toString('}');
    private final char[] memento;
    private final int length;
    private int index = 0;

    public MementoTokenizer(String memento) {
        this.memento = memento.toCharArray();
        this.length = this.memento.length;
    }

    public boolean hasMoreTokens() {
        return this.index < this.length;
    }

    /*
     * Enabled aggressive block sorting
     */
    public String nextToken() {
        int start = this.index;
        StringBuffer buffer = null;
        switch (this.memento[this.index++]) {
            case '\\': {
                buffer = new StringBuffer();
                buffer.append(this.memento[this.index]);
                start = ++this.index;
                break;
            }
            case '!': {
                return COUNT;
            }
            case '=': {
                return JAVAPROJECT;
            }
            case '/': {
                return PACKAGEFRAGMENTROOT;
            }
            case '<': {
                return PACKAGEFRAGMENT;
            }
            case '^': {
                return FIELD;
            }
            case '~': {
                return METHOD;
            }
            case '|': {
                return INITIALIZER;
            }
            case '{': {
                return COMPILATIONUNIT;
            }
            case '(': {
                return CLASSFILE;
            }
            case '[': {
                return TYPE;
            }
            case '%': {
                return PACKAGEDECLARATION;
            }
            case '#': {
                return IMPORTDECLARATION;
            }
            case '@': {
                return LOCALVARIABLE;
            }
            case ']': {
                return TYPE_PARAMETER;
            }
            case '}': {
                return ANNOTATION;
            }
        }
        block22: while (this.index < this.length) {
            switch (this.memento[this.index]) {
                case '\\': {
                    if (buffer == null) {
                        buffer = new StringBuffer();
                    }
                    buffer.append(this.memento, start, this.index - start);
                    start = ++this.index;
                    break;
                }
                case '!': 
                case '#': 
                case '%': 
                case '(': 
                case '/': 
                case '<': 
                case '=': 
                case '@': 
                case '[': 
                case ']': 
                case '^': 
                case '{': 
                case '|': 
                case '}': 
                case '~': {
                    break block22;
                }
            }
            ++this.index;
        }
        if (buffer != null) {
            buffer.append(this.memento, start, this.index - start);
            return buffer.toString();
        }
        return new String(this.memento, start, this.index - start);
    }
}

