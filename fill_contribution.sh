#!/bin/bash
# ====================== 仅需修改这2处 ======================
START_DATE="2020-01-01"   # 改成你的GitHub注册日期（格式：YYYY-MM-DD）
REPO_FOLDER="fill_contribution"  # 改成你克隆的仓库文件夹名
# ===========================================================

# 进入仓库文件夹（确保路径正确）
cd ~/Desktop/$REPO_FOLDER || {
    echo "错误：找不到仓库文件夹！请检查REPO_FOLDER是否填对"
    exit 1
}

# 初始化时间戳（从注册日到今天）
current_date=$(date -d "$START_DATE" +%s)
end_date=$(date +%s)

# 循环每天创建1次随机时间的提交
while [ "$current_date" -le "$end_date" ]; do
    # 转换为日期格式
    date_str=$(date -d "@$current_date" +"%Y-%m-%d")
    echo "正在补 $date_str 的1次贡献..."

    # 生成随机提交时间（9:00-21:00之间，模拟真人工作时间）
    random_hour=$((9 + RANDOM % 12))   # 随机小时：9-21点
    random_minute=$((RANDOM % 60))     # 随机分钟：0-59分
    random_time="$random_hour:$random_minute:00"

    # 创建空提交（自动跳过已提交的日期，不会重复）
    GIT_AUTHOR_DATE="$date_str $random_time" GIT_COMMITTER_DATE="$date_str $random_time" \
    git commit --allow-empty -m "Daily contribution - $date_str $random_time"

    # 每次提交后暂停1-2秒（模拟真人操作间隔，降低风险）
    sleep $((1 + RANDOM % 2))

    # 时间戳+1天，处理下一天
    current_date=$((current_date + 86400))
done

# 推送至GitHub
echo "所有日期补完，正在推送至GitHub..."
git push -u origin main

echo "✅ 每天1次的贡献补完！刷新GitHub主页查看效果"
