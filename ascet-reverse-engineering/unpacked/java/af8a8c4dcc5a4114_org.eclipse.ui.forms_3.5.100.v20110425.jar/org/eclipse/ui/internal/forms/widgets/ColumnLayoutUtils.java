/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Point
 */
package org.eclipse.ui.internal.forms.widgets;

import org.eclipse.swt.graphics.Point;

public class ColumnLayoutUtils {
    public static int computeColumnHeight(int ncolumns, Point[] sizes, int totalHeight, int verticalMargin) {
        int averageHeight = (totalHeight + sizes.length * verticalMargin) / ncolumns;
        int requiredHeight = ColumnLayoutUtils.computeActualHeight(ncolumns, sizes, averageHeight, verticalMargin);
        if (averageHeight == requiredHeight) {
            return requiredHeight;
        }
        int i = 0;
        while (i < 10) {
            int candidateHeight = ColumnLayoutUtils.computeActualHeight(ncolumns, sizes, requiredHeight - 1, verticalMargin);
            if (candidateHeight >= requiredHeight) {
                return requiredHeight;
            }
            requiredHeight = candidateHeight;
            ++i;
        }
        return requiredHeight;
    }

    private static int computeActualHeight(int ncolumns, Point[] sizes, int candidateHeight, int verticalMargin) {
        int colHeight = 0;
        int maxHeight = 0;
        int column = 1;
        int i = 0;
        while (i < sizes.length) {
            int childHeight = sizes[i].y;
            if (i > 0 && column < ncolumns && colHeight + childHeight + verticalMargin > candidateHeight) {
                maxHeight = Math.max(colHeight, maxHeight);
                ++column;
                colHeight = 0;
            }
            if (colHeight > 0) {
                colHeight += verticalMargin;
            }
            colHeight += childHeight;
            ++i;
        }
        maxHeight = Math.max(colHeight, maxHeight);
        return maxHeight;
    }
}

