/*
 * Decompiled with CFR 0.152.
 */
package com.ibm.icu.text;

import com.ibm.icu.text.NFRuleSet;
import com.ibm.icu.text.RBNFPostProcessor;
import com.ibm.icu.text.RuleBasedNumberFormat;

final class RBNFChinesePostProcessor
implements RBNFPostProcessor {
    private boolean longForm;
    private int format;
    private static final String[] rulesetNames = new String[]{"%traditional", "%simplified", "%accounting", "%time"};

    RBNFChinesePostProcessor() {
    }

    public void init(RuleBasedNumberFormat formatter, String rules) {
    }

    public void process(StringBuffer buf, NFRuleSet ruleSet) {
        int n;
        String name = ruleSet.getName();
        int i = 0;
        while (i < rulesetNames.length) {
            if (rulesetNames[i].equals(name)) {
                this.format = i;
                this.longForm = i == 1 || i == 3;
                break;
            }
            ++i;
        }
        if (this.longForm) {
            i = buf.indexOf("*");
            while (i != -1) {
                buf.delete(i, i + 1);
                i = buf.indexOf("*", i);
            }
            return;
        }
        String[][] markers = new String[][]{{"\u842c", "\u5104", "\u5146", "\u3007"}, {"\u4e07", "\u4ebf", "\u5146", "\u3007"}, {"\u842c", "\u5104", "\u5146", "\u96f6"}};
        String[] m = markers[this.format];
        int i2 = 0;
        while (i2 < m.length - 1) {
            n = buf.indexOf(m[i2]);
            if (n != -1) {
                buf.insert(n + m[i2].length(), '|');
            }
            ++i2;
        }
        int x = buf.indexOf("\u9ede");
        if (x == -1) {
            x = buf.length();
        }
        int s = 0;
        n = -1;
        String ling = markers[this.format][3];
        while (x >= 0) {
            int m2 = buf.lastIndexOf("|", x);
            int nn = buf.lastIndexOf(ling, x);
            int ns = 0;
            if (nn > m2) {
                ns = nn > 0 && buf.charAt(nn - 1) != '*' ? 2 : 1;
            }
            x = m2 - 1;
            switch (s * 3 + ns) {
                case 0: {
                    s = ns;
                    n = -1;
                    break;
                }
                case 1: {
                    s = ns;
                    n = nn;
                    break;
                }
                case 2: {
                    s = ns;
                    n = -1;
                    break;
                }
                case 3: {
                    s = ns;
                    n = -1;
                    break;
                }
                case 4: {
                    buf.delete(nn - 1, nn + ling.length());
                    s = 0;
                    n = -1;
                    break;
                }
                case 5: {
                    buf.delete(n - 1, n + ling.length());
                    s = ns;
                    n = -1;
                    break;
                }
                case 6: {
                    s = ns;
                    n = -1;
                    break;
                }
                case 7: {
                    buf.delete(nn - 1, nn + ling.length());
                    s = 0;
                    n = -1;
                    break;
                }
                case 8: {
                    s = ns;
                    n = -1;
                    break;
                }
                default: {
                    throw new IllegalStateException();
                }
            }
        }
        int i3 = buf.length();
        while (--i3 >= 0) {
            char c = buf.charAt(i3);
            if (c != '*' && c != '|') continue;
            buf.delete(i3, i3 + 1);
        }
    }
}

