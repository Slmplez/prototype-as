/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.xs.identity;

import org.apache.xerces.impl.xpath.XPath;
import org.apache.xerces.impl.xpath.XPathException;
import org.apache.xerces.impl.xs.identity.IdentityConstraint;
import org.apache.xerces.impl.xs.identity.ValueStore;
import org.apache.xerces.impl.xs.identity.XPathMatcher;
import org.apache.xerces.impl.xs.util.ShortListImpl;
import org.apache.xerces.util.SymbolTable;
import org.apache.xerces.util.XMLChar;
import org.apache.xerces.xni.NamespaceContext;
import org.apache.xerces.xs.ShortList;
import org.apache.xerces.xs.XSComplexTypeDefinition;
import org.apache.xerces.xs.XSTypeDefinition;

public class Field {
    protected final XPath fXPath;
    protected final IdentityConstraint fIdentityConstraint;

    public Field(XPath xPath, IdentityConstraint identityConstraint) {
        this.fXPath = xPath;
        this.fIdentityConstraint = identityConstraint;
    }

    public org.apache.xerces.impl.xpath.XPath getXPath() {
        return this.fXPath;
    }

    public IdentityConstraint getIdentityConstraint() {
        return this.fIdentityConstraint;
    }

    public XPathMatcher createMatcher(ValueStore valueStore) {
        return new Matcher(this.fXPath, valueStore);
    }

    public String toString() {
        return this.fXPath.toString();
    }

    protected class Matcher
    extends XPathMatcher {
        protected final ValueStore fStore;
        protected boolean fMayMatch = true;

        public Matcher(XPath xPath, ValueStore valueStore) {
            super(xPath);
            this.fStore = valueStore;
        }

        protected void matched(Object object, short s, ShortList shortList, boolean bl) {
            super.matched(object, s, shortList, bl);
            if (bl && Field.this.fIdentityConstraint.getCategory() == 1) {
                String string = "KeyMatchesNillable";
                this.fStore.reportError(string, new Object[]{Field.this.fIdentityConstraint.getElementName(), Field.this.fIdentityConstraint.getIdentityConstraintName()});
            }
            this.fStore.addValue(Field.this, this.fMayMatch, object, this.convertToPrimitiveKind(s), this.convertToPrimitiveKind(shortList));
            this.fMayMatch = false;
        }

        private short convertToPrimitiveKind(short s) {
            if (s <= 20) {
                return s;
            }
            if (s <= 29) {
                return 2;
            }
            if (s <= 42) {
                return 4;
            }
            return s;
        }

        private ShortList convertToPrimitiveKind(ShortList shortList) {
            if (shortList != null) {
                int n = shortList.getLength();
                int n2 = 0;
                while (n2 < n) {
                    short s = shortList.item(n2);
                    if (s != this.convertToPrimitiveKind(s)) break;
                    ++n2;
                }
                if (n2 != n) {
                    short[] sArray = new short[n];
                    int n3 = 0;
                    while (n3 < n2) {
                        sArray[n3] = shortList.item(n3);
                        ++n3;
                    }
                    while (n2 < n) {
                        sArray[n2] = this.convertToPrimitiveKind(shortList.item(n2));
                        ++n2;
                    }
                    return new ShortListImpl(sArray, sArray.length);
                }
            }
            return shortList;
        }

        protected void handleContent(XSTypeDefinition xSTypeDefinition, boolean bl, Object object, short s, ShortList shortList) {
            if (xSTypeDefinition == null || xSTypeDefinition.getTypeCategory() == 15 && ((XSComplexTypeDefinition)xSTypeDefinition).getContentType() != 1) {
                this.fStore.reportError("cvc-id.3", new Object[]{Field.this.fIdentityConstraint.getName(), Field.this.fIdentityConstraint.getElementName()});
            }
            this.fMatchedString = object;
            this.matched(this.fMatchedString, s, shortList, bl);
        }
    }

    public static class XPath
    extends org.apache.xerces.impl.xpath.XPath {
        public XPath(String string, SymbolTable symbolTable, NamespaceContext namespaceContext) throws XPathException {
            super(XPath.fixupXPath(string), symbolTable, namespaceContext);
            int n = 0;
            while (n < this.fLocationPaths.length) {
                int n2 = 0;
                while (n2 < this.fLocationPaths[n].steps.length) {
                    XPath.Axis axis = this.fLocationPaths[n].steps[n2].axis;
                    if (axis.type == 2 && n2 < this.fLocationPaths[n].steps.length - 1) {
                        throw new XPathException("c-fields-xpaths");
                    }
                    ++n2;
                }
                ++n;
            }
        }

        private static String fixupXPath(String string) {
            int n = string.length();
            int n2 = 0;
            boolean bl = true;
            while (n2 < n) {
                char c = string.charAt(n2);
                if (bl) {
                    if (!XMLChar.isSpace(c)) {
                        if (c == '.' || c == '/') {
                            bl = false;
                        } else if (c != '|') {
                            return XPath.fixupXPath2(string, n2, n);
                        }
                    }
                } else if (c == '|') {
                    bl = true;
                }
                ++n2;
            }
            return string;
        }

        private static String fixupXPath2(String string, int n, int n2) {
            StringBuffer stringBuffer = new StringBuffer(n2 + 2);
            int n3 = 0;
            while (n3 < n) {
                stringBuffer.append(string.charAt(n3));
                ++n3;
            }
            stringBuffer.append("./");
            boolean bl = false;
            while (n < n2) {
                char c = string.charAt(n);
                if (bl) {
                    if (!XMLChar.isSpace(c)) {
                        if (c == '.' || c == '/') {
                            bl = false;
                        } else if (c != '|') {
                            stringBuffer.append("./");
                            bl = false;
                        }
                    }
                } else if (c == '|') {
                    bl = true;
                }
                stringBuffer.append(c);
                ++n;
            }
            return stringBuffer.toString();
        }
    }
}

