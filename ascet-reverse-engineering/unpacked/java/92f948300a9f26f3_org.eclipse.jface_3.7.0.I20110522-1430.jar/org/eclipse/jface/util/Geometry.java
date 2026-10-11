/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Control
 */
package org.eclipse.jface.util;

import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;

public class Geometry {
    private Geometry() {
    }

    public static int distanceSquared(Point p1, Point p2) {
        int term1 = p1.x - p2.x;
        int term2 = p1.y - p2.y;
        return term1 * term1 + term2 * term2;
    }

    public static double magnitude(Point p) {
        return Math.sqrt(Geometry.magnitudeSquared(p));
    }

    public static int magnitudeSquared(Point p) {
        return p.x * p.x + p.y * p.y;
    }

    public static int dotProduct(Point p1, Point p2) {
        return p1.x * p2.x + p1.y * p2.y;
    }

    public static Point min(Point p1, Point p2) {
        return new Point(Math.min(p1.x, p2.x), Math.min(p1.y, p2.y));
    }

    public static Point max(Point p1, Point p2) {
        return new Point(Math.max(p1.x, p2.x), Math.max(p1.y, p2.y));
    }

    public static Point getDirectionVector(int distance, int direction) {
        switch (direction) {
            case 128: {
                return new Point(0, -distance);
            }
            case 1024: {
                return new Point(0, distance);
            }
            case 16384: {
                return new Point(-distance, 0);
            }
            case 131072: {
                return new Point(distance, 0);
            }
        }
        return new Point(0, 0);
    }

    public static Point centerPoint(Rectangle rect) {
        return new Point(rect.x + rect.width / 2, rect.y + rect.height / 2);
    }

    public static Point copy(Point toCopy) {
        return new Point(toCopy.x, toCopy.y);
    }

    public static void set(Point result, Point toCopy) {
        result.x = toCopy.x;
        result.y = toCopy.y;
    }

    public static void set(Rectangle result, Rectangle toCopy) {
        result.x = toCopy.x;
        result.y = toCopy.y;
        result.width = toCopy.width;
        result.height = toCopy.height;
    }

    public static Rectangle subtract(Rectangle rect1, Rectangle rect2) {
        return new Rectangle(rect1.x - rect2.x, rect1.y - rect2.y, rect1.width - rect2.width, rect1.height - rect2.height);
    }

    public static Rectangle add(Rectangle rect1, Rectangle rect2) {
        return new Rectangle(rect1.x + rect2.x, rect1.y + rect2.y, rect1.width + rect2.width, rect1.height + rect2.height);
    }

    public static Point add(Point point1, Point point2) {
        return new Point(point1.x + point2.x, point1.y + point2.y);
    }

    public static Point divide(Point toDivide, int scalar) {
        return new Point(toDivide.x / scalar, toDivide.y / scalar);
    }

    public static Point subtract(Point point1, Point point2) {
        return new Point(point1.x - point2.x, point1.y - point2.y);
    }

    public static void flipXY(Point toFlip) {
        int temp = toFlip.x;
        toFlip.x = toFlip.y;
        toFlip.y = temp;
    }

    public static void flipXY(Rectangle toFlip) {
        int temp = toFlip.x;
        toFlip.x = toFlip.y;
        toFlip.y = temp;
        temp = toFlip.width;
        toFlip.width = toFlip.height;
        toFlip.height = temp;
    }

    public static int getDimension(Rectangle toMeasure, boolean width) {
        if (width) {
            return toMeasure.width;
        }
        return toMeasure.height;
    }

    public static int getCoordinate(Point toMeasure, boolean width) {
        return width ? toMeasure.x : toMeasure.y;
    }

    public static int getCoordinate(Rectangle toMeasure, boolean width) {
        return width ? toMeasure.x : toMeasure.y;
    }

    public static void setDimension(Rectangle toSet, boolean width, int newCoordinate) {
        if (width) {
            toSet.width = newCoordinate;
        } else {
            toSet.height = newCoordinate;
        }
    }

    public static void setCoordinate(Rectangle toSet, boolean width, int newCoordinate) {
        if (width) {
            toSet.x = newCoordinate;
        } else {
            toSet.y = newCoordinate;
        }
    }

    public static void setCoordinate(Point toSet, boolean width, int newCoordinate) {
        if (width) {
            toSet.x = newCoordinate;
        } else {
            toSet.y = newCoordinate;
        }
    }

    public static int getDistanceFromEdge(Rectangle rectangle, Point testPoint, int edgeOfInterest) {
        switch (edgeOfInterest) {
            case 128: {
                return testPoint.y - rectangle.y;
            }
            case 1024: {
                return rectangle.y + rectangle.height - testPoint.y;
            }
            case 16384: {
                return testPoint.x - rectangle.x;
            }
            case 131072: {
                return rectangle.x + rectangle.width - testPoint.x;
            }
        }
        return 0;
    }

    public static Rectangle getExtrudedEdge(Rectangle toExtrude, int size, int orientation) {
        Rectangle bounds = new Rectangle(toExtrude.x, toExtrude.y, toExtrude.width, toExtrude.height);
        if (!Geometry.isHorizontal(orientation)) {
            bounds.width = size;
        } else {
            bounds.height = size;
        }
        switch (orientation) {
            case 131072: {
                bounds.x = toExtrude.x + toExtrude.width - bounds.width;
                break;
            }
            case 1024: {
                bounds.y = toExtrude.y + toExtrude.height - bounds.height;
            }
        }
        Geometry.normalize(bounds);
        return bounds;
    }

    public static int getOppositeSide(int swtDirectionConstant) {
        switch (swtDirectionConstant) {
            case 128: {
                return 1024;
            }
            case 1024: {
                return 128;
            }
            case 16384: {
                return 131072;
            }
            case 131072: {
                return 16384;
            }
        }
        return swtDirectionConstant;
    }

    public static int getSwtHorizontalOrVerticalConstant(boolean horizontal) {
        if (horizontal) {
            return 256;
        }
        return 512;
    }

    public static boolean isHorizontal(int swtSideConstant) {
        return swtSideConstant != 16384 && swtSideConstant != 131072;
    }

    public static void moveRectangle(Rectangle rect, Point delta) {
        rect.x += delta.x;
        rect.y += delta.y;
    }

    public static void expand(Rectangle rect, Rectangle differenceRect) {
        rect.x += differenceRect.x;
        rect.y += differenceRect.y;
        rect.height = Math.max(0, rect.height + differenceRect.height);
        rect.width = Math.max(0, rect.width + differenceRect.width);
    }

    public static Rectangle createDiffRectangle(int left, int right, int top, int bottom) {
        return new Rectangle(-left, -top, left + right, top + bottom);
    }

    public static void expand(Rectangle rect, int left, int right, int top, int bottom) {
        rect.x -= left;
        rect.width = Math.max(0, rect.width + left + right);
        rect.y -= top;
        rect.height = Math.max(0, rect.height + top + bottom);
    }

    public static void normalize(Rectangle rect) {
        if (rect.width < 0) {
            rect.width = -rect.width;
            rect.x -= rect.width;
        }
        if (rect.height < 0) {
            rect.height = -rect.height;
            rect.y -= rect.height;
        }
    }

    public static Rectangle toControl(Control coordinateSystem, Rectangle toConvert) {
        return coordinateSystem.getDisplay().map(null, coordinateSystem, toConvert);
    }

    public static Rectangle toDisplay(Control coordinateSystem, Rectangle toConvert) {
        return coordinateSystem.getDisplay().map(coordinateSystem, null, toConvert);
    }

    public static int getRelativePosition(Rectangle boundary, Point toTest) {
        int result = 0;
        if (toTest.x < boundary.x) {
            result |= 0x4000;
        } else if (toTest.x >= boundary.x + boundary.width) {
            result |= 0x20000;
        }
        if (toTest.y < boundary.y) {
            result |= 0x80;
        } else if (toTest.y >= boundary.y + boundary.height) {
            result |= 0x400;
        }
        return result;
    }

    public static int getDistanceFrom(Rectangle boundary, Point toTest) {
        int side = Geometry.getClosestSide(boundary, toTest);
        return Geometry.getDistanceFromEdge(boundary, toTest, side);
    }

    public static int getClosestSide(Rectangle boundary, Point toTest) {
        int[] sides = new int[]{16384, 131072, 128, 1024};
        int closestSide = 16384;
        int closestDistance = Integer.MAX_VALUE;
        int idx = 0;
        while (idx < sides.length) {
            int side = sides[idx];
            int distance = Geometry.getDistanceFromEdge(boundary, toTest, side);
            if (distance < closestDistance) {
                closestDistance = distance;
                closestSide = side;
            }
            ++idx;
        }
        return closestSide;
    }

    public static Rectangle copy(Rectangle toCopy) {
        return new Rectangle(toCopy.x, toCopy.y, toCopy.width, toCopy.height);
    }

    public static Point getSize(Rectangle rectangle) {
        return new Point(rectangle.width, rectangle.height);
    }

    public static void setSize(Rectangle rectangle, Point newSize) {
        rectangle.width = newSize.x;
        rectangle.height = newSize.y;
    }

    public static void setLocation(Rectangle rectangle, Point newLocation) {
        rectangle.x = newLocation.x;
        rectangle.y = newLocation.y;
    }

    public static Point getLocation(Rectangle toQuery) {
        return new Point(toQuery.x, toQuery.y);
    }

    public static Rectangle createRectangle(Point position, Point size) {
        return new Rectangle(position.x, position.y, size.x, size.y);
    }

    public static void moveInside(Rectangle inner, Rectangle outer) {
        if (inner.x < outer.x) {
            inner.x = outer.x;
        }
        if (inner.x + inner.width > outer.x + outer.width) {
            inner.x -= inner.x + inner.width - (outer.x + outer.width);
        }
        if (inner.y < outer.y) {
            inner.y = outer.y;
        }
        if (inner.y + inner.height > outer.y + outer.height) {
            inner.y -= inner.y + inner.height - (outer.y + outer.height);
        }
    }
}

