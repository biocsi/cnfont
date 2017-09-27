#' cn font for ggplot2
#' @importFrom ggplot2 theme element_text
#' @export
#' @examples
#' library(ggformula)
#' gf_point(mpg ~ hp, color = ~ cyl, size = ~wt, data = mtcars) -> p
#' p
#' p + xlab("X轴") + ylab("Y轴") + ggtitle("标题") # + font_cn()
#' p + xlab("X轴") + ylab("Y轴") + ggtitle("标题") + font_cn()
font_cn <- function(font="STKaiti")
{
  # 1. 识别mac, linux, win.
  # 2. 查找三个系统上的中文字体.
  # 3. 随机选取一种字体
  theme(
    text = element_text(family=font),
    title = element_text(family = font),
    axis.title.x = element_text(family = font),
    axis.title.y = element_text(family = font)
  )
}

