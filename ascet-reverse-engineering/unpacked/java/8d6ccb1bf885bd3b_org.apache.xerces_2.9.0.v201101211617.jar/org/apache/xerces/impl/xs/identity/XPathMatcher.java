/*
 * Decompiled with CFR 0.152.
 */
package org.apache.xerces.impl.xs.identity;

import org.apache.xerces.impl.xpath.XPath;
import org.apache.xerces.util.IntStack;
import org.apache.xerces.xni.QName;
import org.apache.xerces.xni.XMLAttributes;
import org.apache.xerces.xs.AttributePSVI;
import org.apache.xerces.xs.ShortList;
import org.apache.xerces.xs.XSTypeDefinition;

public class XPathMatcher {
    protected static final boolean DEBUG_ALL = false;
    protected static final boolean DEBUG_METHODS = false;
    protected static final boolean DEBUG_METHODS2 = false;
    protected static final boolean DEBUG_METHODS3 = false;
    protected static final boolean DEBUG_MATCH = false;
    protected static final boolean DEBUG_STACK = false;
    protected static final boolean DEBUG_ANY = false;
    protected static final int MATCHED = 1;
    protected static final int MATCHED_ATTRIBUTE = 3;
    protected static final int MATCHED_DESCENDANT = 5;
    protected static final int MATCHED_DESCENDANT_PREVIOUS = 13;
    private final XPath.LocationPath[] fLocationPaths;
    private final int[] fMatched;
    protected Object fMatchedString;
    private final IntStack[] fStepIndexes;
    private final int[] fCurrentStep;
    private final int[] fNoMatchDepth;
    final QName fQName = new QName();

    public XPathMatcher(XPath xPath) {
        this.fLocationPaths = xPath.getLocationPaths();
        this.fStepIndexes = new IntStack[this.fLocationPaths.length];
        int n = 0;
        while (n < this.fStepIndexes.length) {
            this.fStepIndexes[n] = new IntStack();
            ++n;
        }
        this.fCurrentStep = new int[this.fLocationPaths.length];
        this.fNoMatchDepth = new int[this.fLocationPaths.length];
        this.fMatched = new int[this.fLocationPaths.length];
    }

    public boolean isMatched() {
        int n = 0;
        while (n < this.fLocationPaths.length) {
            if ((this.fMatched[n] & 1) == 1 && (this.fMatched[n] & 0xD) != 13 && (this.fNoMatchDepth[n] == 0 || (this.fMatched[n] & 5) == 5)) {
                return true;
            }
            ++n;
        }
        return false;
    }

    protected void handleContent(XSTypeDefinition xSTypeDefinition, boolean bl, Object object, short s, ShortList shortList) {
    }

    protected void matched(Object object, short s, ShortList shortList, boolean bl) {
    }

    public void startDocumentFragment() {
        this.fMatchedString = null;
        int n = 0;
        while (n < this.fLocationPaths.length) {
            this.fStepIndexes[n].clear();
            this.fCurrentStep[n] = 0;
            this.fNoMatchDepth[n] = 0;
            this.fMatched[n] = 0;
            ++n;
        }
    }

    /*
     * Unable to fully structure code
     */
    public void startElement(QName var1_1, XMLAttributes var2_2) {
        var3_3 = 0;
        while (var3_3 < this.fLocationPaths.length) {
            block21: {
                block23: {
                    block22: {
                        block20: {
                            var4_4 = this.fCurrentStep[var3_3];
                            this.fStepIndexes[var3_3].push(var4_4);
                            if ((this.fMatched[var3_3] & 5) != 1 && this.fNoMatchDepth[var3_3] <= 0) break block20;
                            v0 = var3_3;
                            this.fNoMatchDepth[v0] = this.fNoMatchDepth[v0] + 1;
                            break block21;
                        }
                        if ((this.fMatched[var3_3] & 5) == 5) {
                            this.fMatched[var3_3] = 13;
                        }
                        var5_5 = this.fLocationPaths[var3_3].steps;
                        while (this.fCurrentStep[var3_3] < var5_5.length && var5_5[this.fCurrentStep[var3_3]].axis.type == 3) {
                            v1 = var3_3;
                            this.fCurrentStep[v1] = this.fCurrentStep[v1] + 1;
                        }
                        if (this.fCurrentStep[var3_3] != var5_5.length) break block22;
                        this.fMatched[var3_3] = 1;
                        break block21;
                    }
                    var6_6 = this.fCurrentStep[var3_3];
                    while (this.fCurrentStep[var3_3] < var5_5.length && var5_5[this.fCurrentStep[var3_3]].axis.type == 4) {
                        v2 = var3_3;
                        this.fCurrentStep[v2] = this.fCurrentStep[v2] + 1;
                    }
                    v3 = var7_7 = this.fCurrentStep[var3_3] > var6_6;
                    if (this.fCurrentStep[var3_3] != var5_5.length) break block23;
                    v4 = var3_3;
                    this.fNoMatchDepth[v4] = this.fNoMatchDepth[v4] + 1;
                    break block21;
                }
                if (this.fCurrentStep[var3_3] != var4_4 && this.fCurrentStep[var3_3] <= var6_6 || var5_5[this.fCurrentStep[var3_3]].axis.type != 1) ** GOTO lbl44
                var8_8 = var5_5[this.fCurrentStep[var3_3]];
                var9_10 = var8_8.nodeTest;
                if (!XPathMatcher.matches(var9_10, var1_1)) {
                    if (this.fCurrentStep[var3_3] > var6_6) {
                        this.fCurrentStep[var3_3] = var6_6;
                    } else {
                        v5 = var3_3;
                        this.fNoMatchDepth[v5] = this.fNoMatchDepth[v5] + 1;
                    }
                } else {
                    v6 = var3_3;
                    this.fCurrentStep[v6] = this.fCurrentStep[v6] + 1;
lbl44:
                    // 2 sources

                    if (this.fCurrentStep[var3_3] == var5_5.length) {
                        if (var7_7) {
                            this.fCurrentStep[var3_3] = var6_6;
                            this.fMatched[var3_3] = 5;
                        } else {
                            this.fMatched[var3_3] = 1;
                        }
                    } else if (this.fCurrentStep[var3_3] < var5_5.length && var5_5[this.fCurrentStep[var3_3]].axis.type == 2) {
                        var8_9 = var2_2.getLength();
                        if (var8_9 > 0) {
                            var9_10 = var5_5[this.fCurrentStep[var3_3]].nodeTest;
                            var10_11 = 0;
                            while (var10_11 < var8_9) {
                                var2_2.getName(var10_11, this.fQName);
                                if (XPathMatcher.matches(var9_10, this.fQName)) {
                                    v7 = var3_3;
                                    this.fCurrentStep[v7] = this.fCurrentStep[v7] + 1;
                                    if (this.fCurrentStep[var3_3] != var5_5.length) break;
                                    this.fMatched[var3_3] = 3;
                                    var11_12 = 0;
                                    while (var11_12 < var3_3 && (this.fMatched[var11_12] & 1) != 1) {
                                        ++var11_12;
                                    }
                                    if (var11_12 != var3_3) break;
                                    var12_13 = (AttributePSVI)var2_2.getAugmentations(var10_11).getItem("ATTRIBUTE_PSVI");
                                    this.fMatchedString = var12_13.getActualNormalizedValue();
                                    this.matched(this.fMatchedString, var12_13.getActualNormalizedValueType(), var12_13.getItemValueTypes(), false);
                                    break;
                                }
                                ++var10_11;
                            }
                        }
                        if ((this.fMatched[var3_3] & 1) != 1) {
                            if (this.fCurrentStep[var3_3] > var6_6) {
                                this.fCurrentStep[var3_3] = var6_6;
                            } else {
                                v8 = var3_3;
                                this.fNoMatchDepth[v8] = this.fNoMatchDepth[v8] + 1;
                            }
                        }
                    }
                }
            }
            ++var3_3;
        }
    }

    public void endElement(QName qName, XSTypeDefinition xSTypeDefinition, boolean bl, Object object, short s, ShortList shortList) {
        int n = 0;
        while (n < this.fLocationPaths.length) {
            this.fCurrentStep[n] = this.fStepIndexes[n].pop();
            if (this.fNoMatchDepth[n] > 0) {
                int n2 = n;
                this.fNoMatchDepth[n2] = this.fNoMatchDepth[n2] - 1;
            } else {
                int n3 = 0;
                while (n3 < n && (this.fMatched[n3] & 1) != 1) {
                    ++n3;
                }
                if (n3 >= n && this.fMatched[n3] != 0) {
                    if ((this.fMatched[n3] & 3) == 3) {
                        this.fMatched[n] = 0;
                    } else {
                        this.handleContent(xSTypeDefinition, bl, object, s, shortList);
                        this.fMatched[n] = 0;
                    }
                }
            }
            ++n;
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String string = super.toString();
        int n = string.lastIndexOf(46);
        if (n != -1) {
            string = string.substring(n + 1);
        }
        stringBuffer.append(string);
        int n2 = 0;
        while (n2 < this.fLocationPaths.length) {
            stringBuffer.append('[');
            XPath.Step[] stepArray = this.fLocationPaths[n2].steps;
            int n3 = 0;
            while (n3 < stepArray.length) {
                if (n3 == this.fCurrentStep[n2]) {
                    stringBuffer.append('^');
                }
                stringBuffer.append(stepArray[n3].toString());
                if (n3 < stepArray.length - 1) {
                    stringBuffer.append('/');
                }
                ++n3;
            }
            if (this.fCurrentStep[n2] == stepArray.length) {
                stringBuffer.append('^');
            }
            stringBuffer.append(']');
            stringBuffer.append(',');
            ++n2;
        }
        return stringBuffer.toString();
    }

    private String normalize(String string) {
        StringBuffer stringBuffer = new StringBuffer();
        int n = string.length();
        int n2 = 0;
        while (n2 < n) {
            char c = string.charAt(n2);
            switch (c) {
                case '\n': {
                    stringBuffer.append("\\n");
                    break;
                }
                default: {
                    stringBuffer.append(c);
                }
            }
            ++n2;
        }
        return stringBuffer.toString();
    }

    private static boolean matches(XPath.NodeTest nodeTest, QName qName) {
        if (nodeTest.type == 1) {
            return nodeTest.name.equals(qName);
        }
        if (nodeTest.type == 4) {
            return nodeTest.name.uri == qName.uri;
        }
        return true;
    }
}

