/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.swt.internal.gdip;

import org.eclipse.swt.internal.Library;
import org.eclipse.swt.internal.Platform;
import org.eclipse.swt.internal.gdip.BitmapData;
import org.eclipse.swt.internal.gdip.ColorPalette;
import org.eclipse.swt.internal.gdip.GdiplusStartupInput;
import org.eclipse.swt.internal.gdip.PointF;
import org.eclipse.swt.internal.gdip.Rect;
import org.eclipse.swt.internal.gdip.RectF;

public class Gdip
extends Platform {
    public static final float FlatnessDefault = 0.25f;
    public static final int BrushTypeSolidColor = 0;
    public static final int BrushTypeHatchFill = 1;
    public static final int BrushTypeTextureFill = 2;
    public static final int BrushTypePathGradient = 3;
    public static final int BrushTypeLinearGradient = 4;
    public static final int ColorAdjustTypeBitmap = 1;
    public static final int ColorMatrixFlagsDefault = 0;
    public static final int CombineModeReplace = 0;
    public static final int CombineModeIntersect = 1;
    public static final int CombineModeUnion = 2;
    public static final int CombineModeXor = 3;
    public static final int CombineModeExclude = 4;
    public static final int CombineModeComplement = 5;
    public static final int FillModeAlternate = 0;
    public static final int FillModeWinding = 1;
    public static final int DashCapFlat = 0;
    public static final int DashCapRound = 2;
    public static final int DashCapTriangle = 3;
    public static final int DashStyleSolid = 0;
    public static final int DashStyleDash = 1;
    public static final int DashStyleDot = 2;
    public static final int DashStyleDashDot = 3;
    public static final int DashStyleDashDotDot = 4;
    public static final int DashStyleCustom = 5;
    public static final int DriverStringOptionsRealizedAdvance = 4;
    public static final int FontStyleRegular = 0;
    public static final int FontStyleBold = 1;
    public static final int FontStyleItalic = 2;
    public static final int FontStyleBoldItalic = 3;
    public static final int FontStyleUnderline = 4;
    public static final int FontStyleStrikeout = 8;
    public static final int PaletteFlagsHasAlpha = 1;
    public static final int FlushIntentionFlush = 0;
    public static final int FlushIntentionSync = 1;
    public static final int HotkeyPrefixNone = 0;
    public static final int HotkeyPrefixShow = 1;
    public static final int HotkeyPrefixHide = 2;
    public static final int LineJoinMiter = 0;
    public static final int LineJoinBevel = 1;
    public static final int LineJoinRound = 2;
    public static final int LineCapFlat = 0;
    public static final int LineCapSquare = 1;
    public static final int LineCapRound = 2;
    public static final int MatrixOrderPrepend = 0;
    public static final int MatrixOrderAppend = 1;
    public static final int QualityModeDefault = 0;
    public static final int QualityModeLow = 1;
    public static final int QualityModeHigh = 2;
    public static final int InterpolationModeDefault = 0;
    public static final int InterpolationModeLowQuality = 1;
    public static final int InterpolationModeHighQuality = 2;
    public static final int InterpolationModeBilinear = 3;
    public static final int InterpolationModeBicubic = 4;
    public static final int InterpolationModeNearestNeighbor = 5;
    public static final int InterpolationModeHighQualityBilinear = 6;
    public static final int InterpolationModeHighQualityBicubic = 7;
    public static final int PathPointTypeStart = 0;
    public static final int PathPointTypeLine = 1;
    public static final int PathPointTypeBezier = 3;
    public static final int PathPointTypePathTypeMask = 7;
    public static final int PathPointTypePathDashMode = 16;
    public static final int PathPointTypePathMarker = 32;
    public static final int PathPointTypeCloseSubpath = 128;
    public static final int PathPointTypeBezier3 = 3;
    public static final int PixelFormatIndexed = 65536;
    public static final int PixelFormatGDI = 131072;
    public static final int PixelFormatAlpha = 262144;
    public static final int PixelFormatPAlpha = 524288;
    public static final int PixelFormatExtended = 0x100000;
    public static final int PixelFormatCanonical = 0x200000;
    public static final int PixelFormat1bppIndexed = 196865;
    public static final int PixelFormat4bppIndexed = 197634;
    public static final int PixelFormat8bppIndexed = 198659;
    public static final int PixelFormat16bppGrayScale = 0x101004;
    public static final int PixelFormat16bppRGB555 = 135173;
    public static final int PixelFormat16bppRGB565 = 135174;
    public static final int PixelFormat16bppARGB1555 = 397319;
    public static final int PixelFormat24bppRGB = 137224;
    public static final int PixelFormat32bppRGB = 139273;
    public static final int PixelFormat32bppARGB = 2498570;
    public static final int PixelFormat32bppPARGB = 925707;
    public static final int PixelFormat48bppRGB = 1060876;
    public static final int PixelFormat64bppARGB = 3424269;
    public static final int PixelFormat64bppPARGB = 1851406;
    public static final int PixelFormatMax = 15;
    public static final int PixelOffsetModeNone = 3;
    public static final int PixelOffsetModeHalf = 4;
    public static final int SmoothingModeDefault = 0;
    public static final int SmoothingModeHighSpeed = 1;
    public static final int SmoothingModeHighQuality = 2;
    public static final int SmoothingModeNone = 3;
    public static final int SmoothingModeAntiAlias8x4 = 4;
    public static final int SmoothingModeAntiAlias = 4;
    public static final int SmoothingModeAntiAlias8x8 = 5;
    public static final int StringFormatFlagsDirectionRightToLeft = 1;
    public static final int StringFormatFlagsDirectionVertical = 2;
    public static final int StringFormatFlagsNoFitBlackBox = 4;
    public static final int StringFormatFlagsDisplayFormatControl = 32;
    public static final int StringFormatFlagsNoFontFallback = 1024;
    public static final int StringFormatFlagsMeasureTrailingSpaces = 2048;
    public static final int StringFormatFlagsNoWrap = 4096;
    public static final int StringFormatFlagsLineLimit = 8192;
    public static final int StringFormatFlagsNoClip = 16384;
    public static final int TextRenderingHintSystemDefault = 0;
    public static final int TextRenderingHintSingleBitPerPixelGridFit = 1;
    public static final int TextRenderingHintSingleBitPerPixel = 2;
    public static final int TextRenderingHintAntiAliasGridFit = 3;
    public static final int TextRenderingHintAntiAlias = 4;
    public static final int TextRenderingHintClearTypeGridFit = 5;
    public static final int UnitPixel = 2;
    public static final int WrapModeTile = 0;
    public static final int WrapModeTileFlipX = 1;
    public static final int WrapModeTileFlipY = 2;
    public static final int WrapModeTileFlipXY = 3;
    public static final int WrapModeClamp = 4;

    static {
        Library.loadLibrary("swt-gdip");
    }

    public static final native int ColorPalette_sizeof();

    public static final native int GdiplusStartupInput_sizeof();

    public static final native int GdiplusStartup(int[] var0, GdiplusStartupInput var1, int var2);

    public static final native void GdiplusShutdown(int var0);

    public static final native int Bitmap_new(int var0, int var1);

    public static final native int Bitmap_new(int var0);

    public static final native int Bitmap_new(int var0, int var1, int var2, int var3, int var4);

    public static final native int Bitmap_new(char[] var0, boolean var1);

    public static final native void Bitmap_delete(int var0);

    public static final native int Bitmap_GetHBITMAP(int var0, int var1, int[] var2);

    public static final native int Bitmap_GetHICON(int var0, int[] var1);

    public static final native int BitmapData_new();

    public static final native void BitmapData_delete(int var0);

    public static final native int Bitmap_LockBits(int var0, int var1, int var2, int var3, int var4);

    public static final native int Bitmap_UnlockBits(int var0, int var1);

    public static final native int Brush_Clone(int var0);

    public static final native int Brush_GetType(int var0);

    public static final native int Color_new(int var0);

    public static final native void Color_delete(int var0);

    public static final native int PrivateFontCollection_new();

    public static final native void PrivateFontCollection_delete(int var0);

    public static final native int PrivateFontCollection_AddFontFile(int var0, char[] var1);

    public static final native int Font_new(int var0, int var1);

    public static final native int Font_new(int var0, float var1, int var2, int var3);

    public static final native int Font_new(char[] var0, float var1, int var2, int var3, int var4);

    public static final native void Font_delete(int var0);

    public static final native int Font_GetFamily(int var0, int var1);

    public static final native float Font_GetSize(int var0);

    public static final native int Font_GetStyle(int var0);

    public static final native int Font_GetLogFontW(int var0, int var1, int var2);

    public static final native boolean Font_IsAvailable(int var0);

    public static final native int FontFamily_new();

    public static final native int FontFamily_new(char[] var0, int var1);

    public static final native void FontFamily_delete(int var0);

    public static final native int FontFamily_GetFamilyName(int var0, char[] var1, char var2);

    public static final native boolean FontFamily_IsAvailable(int var0);

    public static final native int Graphics_new(int var0);

    public static final native void Graphics_delete(int var0);

    public static final native int Graphics_DrawArc(int var0, int var1, int var2, int var3, int var4, int var5, float var6, float var7);

    public static final native int Graphics_DrawDriverString(int var0, int var1, int var2, int var3, int var4, PointF var5, int var6, int var7);

    public static final native int Graphics_DrawDriverString(int var0, int var1, int var2, int var3, int var4, float[] var5, int var6, int var7);

    public static final native int Graphics_DrawEllipse(int var0, int var1, int var2, int var3, int var4, int var5);

    public static final native int Graphics_DrawImage(int var0, int var1, int var2, int var3);

    public static final native int Graphics_DrawImage(int var0, int var1, Rect var2, int var3, int var4, int var5, int var6, int var7, int var8, int var9, int var10);

    public static final native int Graphics_DrawLine(int var0, int var1, int var2, int var3, int var4, int var5);

    public static final native int Graphics_DrawLines(int var0, int var1, int[] var2, int var3);

    public static final native int Graphics_DrawPath(int var0, int var1, int var2);

    public static final native int Graphics_DrawPolygon(int var0, int var1, int[] var2, int var3);

    public static final native int Graphics_DrawRectangle(int var0, int var1, int var2, int var3, int var4, int var5);

    public static final native int Graphics_DrawString(int var0, char[] var1, int var2, int var3, PointF var4, int var5);

    public static final native int Graphics_DrawString(int var0, char[] var1, int var2, int var3, PointF var4, int var5, int var6);

    public static final native int Graphics_FillEllipse(int var0, int var1, int var2, int var3, int var4, int var5);

    public static final native int Graphics_FillPath(int var0, int var1, int var2);

    public static final native void Graphics_Flush(int var0, int var1);

    public static final native int Graphics_FillPie(int var0, int var1, int var2, int var3, int var4, int var5, float var6, float var7);

    public static final native int Graphics_FillPolygon(int var0, int var1, int[] var2, int var3, int var4);

    public static final native int Graphics_FillRectangle(int var0, int var1, int var2, int var3, int var4, int var5);

    public static final native int Graphics_GetClipBounds(int var0, RectF var1);

    public static final native int Graphics_GetClipBounds(int var0, Rect var1);

    public static final native int Graphics_GetClip(int var0, int var1);

    public static final native int Graphics_GetHDC(int var0);

    public static final native void Graphics_ReleaseHDC(int var0, int var1);

    public static final native int Graphics_GetInterpolationMode(int var0);

    public static final native int Graphics_GetSmoothingMode(int var0);

    public static final native int Graphics_GetTextRenderingHint(int var0);

    public static final native int Graphics_GetTransform(int var0, int var1);

    public static final native int Graphics_GetVisibleClipBounds(int var0, Rect var1);

    public static final native int Graphics_MeasureDriverString(int var0, int var1, int var2, int var3, float[] var4, int var5, int var6, RectF var7);

    public static final native int Graphics_MeasureString(int var0, char[] var1, int var2, int var3, PointF var4, RectF var5);

    public static final native int Graphics_MeasureString(int var0, char[] var1, int var2, int var3, PointF var4, int var5, RectF var6);

    public static final native int Graphics_ResetClip(int var0);

    public static final native int Graphics_Restore(int var0, int var1);

    public static final native int Graphics_Save(int var0);

    public static final native int Graphics_ScaleTransform(int var0, float var1, float var2, int var3);

    public static final native int Graphics_SetClip(int var0, int var1, int var2);

    public static final native int Graphics_SetClip(int var0, Rect var1, int var2);

    public static final native int Graphics_SetClipPath(int var0, int var1);

    public static final native int Graphics_SetClipPath(int var0, int var1, int var2);

    public static final native int Graphics_SetCompositingQuality(int var0, int var1);

    public static final native int Graphics_SetPageUnit(int var0, int var1);

    public static final native int Graphics_SetPixelOffsetMode(int var0, int var1);

    public static final native int Graphics_SetSmoothingMode(int var0, int var1);

    public static final native int Graphics_SetTransform(int var0, int var1);

    public static final native int Graphics_SetInterpolationMode(int var0, int var1);

    public static final native int Graphics_SetTextRenderingHint(int var0, int var1);

    public static final native int Graphics_TranslateTransform(int var0, float var1, float var2, int var3);

    public static final native int GraphicsPath_new(int var0);

    public static final native int GraphicsPath_new(int[] var0, byte[] var1, int var2, int var3);

    public static final native void GraphicsPath_delete(int var0);

    public static final native int GraphicsPath_AddArc(int var0, float var1, float var2, float var3, float var4, float var5, float var6);

    public static final native int GraphicsPath_AddBezier(int var0, float var1, float var2, float var3, float var4, float var5, float var6, float var7, float var8);

    public static final native int GraphicsPath_AddLine(int var0, float var1, float var2, float var3, float var4);

    public static final native int GraphicsPath_AddPath(int var0, int var1, boolean var2);

    public static final native int GraphicsPath_AddRectangle(int var0, RectF var1);

    public static final native int GraphicsPath_AddString(int var0, char[] var1, int var2, int var3, int var4, float var5, PointF var6, int var7);

    public static final native int GraphicsPath_CloseFigure(int var0);

    public static final native int GraphicsPath_Clone(int var0);

    public static final native int GraphicsPath_Flatten(int var0, int var1, float var2);

    public static final native int GraphicsPath_GetBounds(int var0, RectF var1, int var2, int var3);

    public static final native int GraphicsPath_GetLastPoint(int var0, PointF var1);

    public static final native int GraphicsPath_GetPathPoints(int var0, float[] var1, int var2);

    public static final native int GraphicsPath_GetPathTypes(int var0, byte[] var1, int var2);

    public static final native int GraphicsPath_GetPointCount(int var0);

    public static final native boolean GraphicsPath_IsOutlineVisible(int var0, float var1, float var2, int var3, int var4);

    public static final native boolean GraphicsPath_IsVisible(int var0, float var1, float var2, int var3);

    public static final native int GraphicsPath_SetFillMode(int var0, int var1);

    public static final native int GraphicsPath_StartFigure(int var0);

    public static final native int GraphicsPath_Transform(int var0, int var1);

    public static final native int HatchBrush_new(int var0, int var1, int var2);

    public static final native int Image_GetLastStatus(int var0);

    public static final native int Image_GetPixelFormat(int var0);

    public static final native int Image_GetWidth(int var0);

    public static final native int Image_GetHeight(int var0);

    public static final native int Image_GetPalette(int var0, int var1, int var2);

    public static final native int Image_GetPaletteSize(int var0);

    public static final native int ImageAttributes_new();

    public static final native void ImageAttributes_delete(int var0);

    public static final native int ImageAttributes_SetWrapMode(int var0, int var1);

    public static final native int ImageAttributes_SetColorMatrix(int var0, float[] var1, int var2, int var3);

    public static final native void HatchBrush_delete(int var0);

    public static final native int LinearGradientBrush_new(PointF var0, PointF var1, int var2, int var3);

    public static final native void LinearGradientBrush_delete(int var0);

    public static final native int LinearGradientBrush_SetInterpolationColors(int var0, int[] var1, float[] var2, int var3);

    public static final native int LinearGradientBrush_SetWrapMode(int var0, int var1);

    public static final native int LinearGradientBrush_ResetTransform(int var0);

    public static final native int LinearGradientBrush_ScaleTransform(int var0, float var1, float var2, int var3);

    public static final native int LinearGradientBrush_TranslateTransform(int var0, float var1, float var2, int var3);

    public static final native int Matrix_new(float var0, float var1, float var2, float var3, float var4, float var5);

    public static final native void Matrix_delete(int var0);

    public static final native int Matrix_GetElements(int var0, float[] var1);

    public static final native int Matrix_Invert(int var0);

    public static final native boolean Matrix_IsIdentity(int var0);

    public static final native int Matrix_Multiply(int var0, int var1, int var2);

    public static final native int Matrix_Rotate(int var0, float var1, int var2);

    public static final native int Matrix_Scale(int var0, float var1, float var2, int var3);

    public static final native int Matrix_Shear(int var0, float var1, float var2, int var3);

    public static final native int Matrix_TransformPoints(int var0, PointF var1, int var2);

    public static final native int Matrix_TransformPoints(int var0, float[] var1, int var2);

    public static final native int Matrix_TransformVectors(int var0, PointF var1, int var2);

    public static final native int Matrix_Translate(int var0, float var1, float var2, int var3);

    public static final native int Matrix_SetElements(int var0, float var1, float var2, float var3, float var4, float var5, float var6);

    public static final native void MoveMemory(ColorPalette var0, int var1, int var2);

    public static final native void MoveMemory(BitmapData var0, int var1);

    public static final native int PathGradientBrush_new(int var0);

    public static final native void PathGradientBrush_delete(int var0);

    public static final native int PathGradientBrush_SetCenterColor(int var0, int var1);

    public static final native int PathGradientBrush_SetCenterPoint(int var0, PointF var1);

    public static final native int PathGradientBrush_SetInterpolationColors(int var0, int[] var1, float[] var2, int var3);

    public static final native int PathGradientBrush_SetSurroundColors(int var0, int[] var1, int[] var2);

    public static final native int PathGradientBrush_SetGraphicsPath(int var0, int var1);

    public static final native int PathGradientBrush_SetWrapMode(int var0, int var1);

    public static final native int Pen_new(int var0, float var1);

    public static final native void Pen_delete(int var0);

    public static final native int Pen_GetBrush(int var0);

    public static final native int Pen_SetBrush(int var0, int var1);

    public static final native int Pen_SetDashOffset(int var0, float var1);

    public static final native int Pen_SetDashPattern(int var0, float[] var1, int var2);

    public static final native int Pen_SetDashStyle(int var0, int var1);

    public static final native int Pen_SetLineCap(int var0, int var1, int var2, int var3);

    public static final native int Pen_SetLineJoin(int var0, int var1);

    public static final native int Pen_SetMiterLimit(int var0, float var1);

    public static final native int Pen_SetWidth(int var0, float var1);

    public static final native int Point_new(int var0, int var1);

    public static final native void Point_delete(int var0);

    public static final native int Region_new(int var0);

    public static final native int Region_newGraphicsPath(int var0);

    public static final native int Region_new();

    public static final native void Region_delete(int var0);

    public static final native int Region_GetHRGN(int var0, int var1);

    public static final native boolean Region_IsInfinite(int var0, int var1);

    public static final native int SolidBrush_new(int var0);

    public static final native void SolidBrush_delete(int var0);

    public static final native void StringFormat_delete(int var0);

    public static final native int StringFormat_Clone(int var0);

    public static final native int StringFormat_GenericDefault();

    public static final native int StringFormat_GenericTypographic();

    public static final native int StringFormat_GetFormatFlags(int var0);

    public static final native int StringFormat_SetHotkeyPrefix(int var0, int var1);

    public static final native int StringFormat_SetFormatFlags(int var0, int var1);

    public static final native int StringFormat_SetTabStops(int var0, float var1, int var2, float[] var3);

    public static final native int TextureBrush_new(int var0, int var1, float var2, float var3, float var4, float var5);

    public static final native void TextureBrush_delete(int var0);

    public static final native int TextureBrush_SetTransform(int var0, int var1);

    public static final native int TextureBrush_ResetTransform(int var0);

    public static final native int TextureBrush_ScaleTransform(int var0, float var1, float var2, int var3);

    public static final native int TextureBrush_TranslateTransform(int var0, float var1, float var2, int var3);
}

