const base = {
    get() {
        return {
            url : "http://localhost:8080/xueshengxuanke/",
            name: "xueshengxuanke",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/xueshengxuanke/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "学生选课系统"
        } 
    }
}
export default base
